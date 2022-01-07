; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400eiointr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400eiointr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlpanel = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"stl_cd1400eiointr(panelp=%p,iobase=%x)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@SVRR = common dso_local global i64 0, align 8
@EREG_DATA = common dso_local global i64 0, align 8
@SVRR_RX = common dso_local global i8 0, align 1
@SVRR_TX = common dso_local global i8 0, align 1
@SVRR_MDM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlpanel*, i32)* @stl_cd1400eiointr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400eiointr(%struct.stlpanel* %0, i32 %1) #0 {
  %3 = alloca %struct.stlpanel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.stlpanel* %0, %struct.stlpanel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.stlpanel* %6, i32 %7)
  %9 = call i32 @spin_lock(i32* @brd_lock)
  %10 = load i64, i64* @SVRR, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @outb(i64 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @EREG_DATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call zeroext i8 @inb(i64 %16)
  store i8 %17, i8* %5, align 1
  %18 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %19 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i64, i64* @SVRR, align 8
  %24 = add nsw i64 %23, 128
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @outb(i64 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* @EREG_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call zeroext i8 @inb(i64 %30)
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %5, align 1
  br label %37

37:                                               ; preds = %22, %2
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @SVRR_RX, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @stl_cd1400rxisr(%struct.stlpanel* %45, i32 %46)
  br label %72

48:                                               ; preds = %37
  %49 = load i8, i8* %5, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @SVRR_TX, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @stl_cd1400txisr(%struct.stlpanel* %56, i32 %57)
  br label %71

59:                                               ; preds = %48
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @SVRR_MDM, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @stl_cd1400mdmisr(%struct.stlpanel* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %44
  %73 = call i32 @spin_unlock(i32* @brd_lock)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlpanel*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @stl_cd1400rxisr(%struct.stlpanel*, i32) #1

declare dso_local i32 @stl_cd1400txisr(%struct.stlpanel*, i32) #1

declare dso_local i32 @stl_cd1400mdmisr(%struct.stlpanel*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
