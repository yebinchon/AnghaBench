; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400mdmisr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400mdmisr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlpanel = type { i32, %struct.stlport** }
%struct.stlport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"stl_cd1400mdmisr(panelp=%p)\0A\00", align 1
@EREG_MDACK = common dso_local global i32 0, align 4
@ACK_TYPMASK = common dso_local global i32 0, align 4
@ACK_TYPMDM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"STALLION: bad MODEM interrupt ack value=%x\0A\00", align 1
@MISR = common dso_local global i64 0, align 8
@EREG_DATA = common dso_local global i32 0, align 4
@MISR_DCD = common dso_local global i8 0, align 1
@EOSRR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlpanel*, i32)* @stl_cd1400mdmisr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400mdmisr(%struct.stlpanel* %0, i32 %1) #0 {
  %3 = alloca %struct.stlpanel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stlport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.stlpanel* %0, %struct.stlpanel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.stlpanel* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EREG_MDACK, align 4
  %12 = add nsw i32 %10, %11
  %13 = call i8* @inb(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %17 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ACK_TYPMASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @ACK_TYPMDM, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %2
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %77

30:                                               ; preds = %21
  %31 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %32 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %31, i32 0, i32 1
  %33 = load %struct.stlport**, %struct.stlport*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = lshr i32 %34, 3
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.stlport*, %struct.stlport** %33, i64 %36
  %38 = load %struct.stlport*, %struct.stlport** %37, align 8
  store %struct.stlport* %38, %struct.stlport** %5, align 8
  %39 = load i64, i64* @MISR, align 8
  %40 = load %struct.stlport*, %struct.stlport** %5, align 8
  %41 = getelementptr inbounds %struct.stlport, %struct.stlport* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @outb(i64 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @EREG_DATA, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i8* @inb(i32 %48)
  %50 = ptrtoint i8* %49 to i8
  store i8 %50, i8* %7, align 1
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @MISR_DCD, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %30
  %58 = load %struct.stlport*, %struct.stlport** %5, align 8
  %59 = call i32 @stl_cd_change(%struct.stlport* %58)
  %60 = load %struct.stlport*, %struct.stlport** %5, align 8
  %61 = getelementptr inbounds %struct.stlport, %struct.stlport* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %57, %30
  %66 = load i64, i64* @EOSRR, align 8
  %67 = load %struct.stlport*, %struct.stlport** %5, align 8
  %68 = getelementptr inbounds %struct.stlport, %struct.stlport* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @outb(i64 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @EREG_DATA, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @outb(i64 0, i32 %75)
  br label %77

77:                                               ; preds = %65, %27
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlpanel*) #1

declare dso_local i8* @inb(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @stl_cd_change(%struct.stlport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
