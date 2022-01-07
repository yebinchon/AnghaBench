; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.sh_rtc = type { i32, i64 }

@RCR1 = common dso_local global i64 0, align 8
@RCR1_AF = common dso_local global i32 0, align 4
@RCR1_AIE = common dso_local global i32 0, align 4
@RSECAR = common dso_local global i32 0, align 4
@RMINAR = common dso_local global i32 0, align 4
@RHRAR = common dso_local global i32 0, align 4
@RWKAR = common dso_local global i32 0, align 4
@RDAYAR = common dso_local global i32 0, align 4
@RMONAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sh_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.sh_rtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtc_time*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.platform_device* @to_platform_device(%struct.device* %12)
  store %struct.platform_device* %13, %struct.platform_device** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = call %struct.sh_rtc* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.sh_rtc* %15, %struct.sh_rtc** %7, align 8
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 1
  store %struct.rtc_time* %17, %struct.rtc_time** %9, align 8
  %18 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %19 = call i32 @sh_rtc_check_alarm(%struct.rtc_time* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %112

27:                                               ; preds = %2
  %28 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %29 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %32 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RCR1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readb(i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @RCR1_AF, align 4
  %38 = load i32, i32* @RCR1_AIE, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %45 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RCR1, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeb(i32 %43, i64 %48)
  %50 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %51 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RSECAR, align 4
  %55 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %50, i32 %53, i32 %54)
  %56 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %57 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RMINAR, align 4
  %61 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %56, i32 %59, i32 %60)
  %62 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %63 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RHRAR, align 4
  %67 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %62, i32 %65, i32 %66)
  %68 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %69 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RWKAR, align 4
  %73 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %68, i32 %71, i32 %72)
  %74 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %75 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RDAYAR, align 4
  %79 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %74, i32 %77, i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %27
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %85, %27
  %89 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @RMONAR, align 4
  %92 = call i32 @sh_rtc_write_alarm_value(%struct.sh_rtc* %89, i32 %90, i32 %91)
  %93 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %94 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load i32, i32* @RCR1_AIE, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %103 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RCR1, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writeb(i32 %101, i64 %106)
  br label %108

108:                                              ; preds = %97, %88
  %109 = load %struct.sh_rtc*, %struct.sh_rtc** %7, align 8
  %110 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_irq(i32* %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %25
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.sh_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sh_rtc_check_alarm(%struct.rtc_time*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @sh_rtc_write_alarm_value(%struct.sh_rtc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
