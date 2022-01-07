; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i64, i32, i8*, i8*, i8*, i8*, i8* }
%struct.platform_device = type { i32 }
%struct.sh_rtc = type { i32, i64 }

@RSECAR = common dso_local global i32 0, align 4
@RMINAR = common dso_local global i32 0, align 4
@RHRAR = common dso_local global i32 0, align 4
@RWKAR = common dso_local global i32 0, align 4
@RDAYAR = common dso_local global i32 0, align 4
@RMONAR = common dso_local global i32 0, align 4
@RCR1 = common dso_local global i64 0, align 8
@RCR1_AIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sh_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sh_rtc*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = call %struct.sh_rtc* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.sh_rtc* %11, %struct.sh_rtc** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  store %struct.rtc_time* %13, %struct.rtc_time** %7, align 8
  %14 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %18 = load i32, i32* @RSECAR, align 4
  %19 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %17, i32 %18)
  %20 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %23 = load i32, i32* @RMINAR, align 4
  %24 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %22, i32 %23)
  %25 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %28 = load i32, i32* @RHRAR, align 4
  %29 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %27, i32 %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %33 = load i32, i32* @RWKAR, align 4
  %34 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %32, i32 %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %38 = load i32, i32* @RDAYAR, align 4
  %39 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %37, i32 %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %43 = load i32, i32* @RMONAR, align 4
  %44 = call i8* @sh_rtc_read_alarm_value(%struct.sh_rtc* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %2
  %53 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %52, %2
  %58 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 1
  store i32 65535, i32* %59, align 8
  %60 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %61 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RCR1, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readb(i64 %64)
  %66 = load i32, i32* @RCR1_AIE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %74 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_irq(i32* %74)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.sh_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @sh_rtc_read_alarm_value(%struct.sh_rtc*, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
