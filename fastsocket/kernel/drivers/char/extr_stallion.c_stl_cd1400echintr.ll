; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400echintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400echintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlpanel = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"stl_cd1400echintr(panelp=%p,iobase=%x)\0A\00", align 1
@SVRR = common dso_local global i64 0, align 8
@EREG_DATA = common dso_local global i64 0, align 8
@SVRR_RX = common dso_local global i8 0, align 1
@SVRR_TX = common dso_local global i8 0, align 1
@SVRR_MDM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlpanel*, i32)* @stl_cd1400echintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400echintr(%struct.stlpanel* %0, i32 %1) #0 {
  %3 = alloca %struct.stlpanel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.stlpanel* %0, %struct.stlpanel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.stlpanel* %6, i32 %7)
  %9 = load i64, i64* @SVRR, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @outb(i64 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* @EREG_DATA, align 8
  %15 = add nsw i64 %13, %14
  %16 = call zeroext i8 @inb(i64 %15)
  store i8 %16, i8* %5, align 1
  %17 = load i64, i64* @SVRR, align 8
  %18 = add nsw i64 %17, 128
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @outb(i64 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* @EREG_DATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call zeroext i8 @inb(i64 %24)
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @SVRR_RX, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @stl_cd1400rxisr(%struct.stlpanel* %38, i32 %39)
  br label %65

41:                                               ; preds = %2
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @SVRR_TX, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @stl_cd1400txisr(%struct.stlpanel* %49, i32 %50)
  br label %64

52:                                               ; preds = %41
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @SVRR_MDM, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @stl_cd1400mdmisr(%struct.stlpanel* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %37
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlpanel*, i32) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @stl_cd1400rxisr(%struct.stlpanel*, i32) #1

declare dso_local i32 @stl_cd1400txisr(%struct.stlpanel*, i32) #1

declare dso_local i32 @stl_cd1400mdmisr(%struct.stlpanel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
