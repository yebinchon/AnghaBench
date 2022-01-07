; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c___sh_rtc_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c___sh_rtc_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_rtc = type { i32, %struct.rtc_device*, i64 }
%struct.rtc_device = type { i32, %struct.rtc_task* }
%struct.rtc_task = type { i32, i32 (i32)* }

@RCR2 = common dso_local global i64 0, align 8
@RCR2_PEF = common dso_local global i32 0, align 4
@PF_HP = common dso_local global i32 0, align 4
@PF_COUNT = common dso_local global i32 0, align 4
@PF_KOU = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_rtc*)* @__sh_rtc_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sh_rtc_periodic(%struct.sh_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_rtc*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sh_rtc* %0, %struct.sh_rtc** %3, align 8
  %8 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %9 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %8, i32 0, i32 1
  %10 = load %struct.rtc_device*, %struct.rtc_device** %9, align 8
  store %struct.rtc_device* %10, %struct.rtc_device** %4, align 8
  %11 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %12 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RCR2, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readb(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RCR2_PEF, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @RCR2_PEF, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %26 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RCR2, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i32 %24, i64 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

34:                                               ; preds = %1
  %35 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %36 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PF_HP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %43 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PF_COUNT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i32, i32* @PF_COUNT, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %52 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %105

55:                                               ; preds = %41, %34
  %56 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %57 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PF_HP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @PF_COUNT, align 4
  %64 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %65 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %70 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PF_KOU, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %68
  %76 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %77 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %76, i32 0, i32 0
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %79, i32 0, i32 1
  %81 = load %struct.rtc_task*, %struct.rtc_task** %80, align 8
  store %struct.rtc_task* %81, %struct.rtc_task** %5, align 8
  %82 = load %struct.rtc_task*, %struct.rtc_task** %5, align 8
  %83 = icmp ne %struct.rtc_task* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load %struct.rtc_task*, %struct.rtc_task** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_task, %struct.rtc_task* %85, i32 0, i32 1
  %87 = load i32 (i32)*, i32 (i32)** %86, align 8
  %88 = load %struct.rtc_task*, %struct.rtc_task** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_task, %struct.rtc_task* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %87(i32 %90)
  br label %92

92:                                               ; preds = %84, %75
  %93 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %94 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  br label %104

96:                                               ; preds = %68
  %97 = load %struct.sh_rtc*, %struct.sh_rtc** %3, align 8
  %98 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %97, i32 0, i32 1
  %99 = load %struct.rtc_device*, %struct.rtc_device** %98, align 8
  %100 = load i32, i32* @RTC_PF, align 4
  %101 = load i32, i32* @RTC_IRQF, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @rtc_update_irq(%struct.rtc_device* %99, i32 1, i32 %102)
  br label %104

104:                                              ; preds = %96, %92
  br label %105

105:                                              ; preds = %104, %48
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %33
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
