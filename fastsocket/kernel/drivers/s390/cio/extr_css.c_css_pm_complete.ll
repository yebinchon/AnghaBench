; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_pm_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_pm_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.subchannel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.css_driver = type { i32 (%struct.subchannel*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @css_pm_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_pm_complete(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.css_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.subchannel* @to_subchannel(%struct.device* %5)
  store %struct.subchannel* %6, %struct.subchannel** %3, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %8 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %15 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.css_driver* @to_cssdriver(i32 %17)
  store %struct.css_driver* %18, %struct.css_driver** %4, align 8
  %19 = load %struct.css_driver*, %struct.css_driver** %4, align 8
  %20 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %20, align 8
  %22 = icmp ne i32 (%struct.subchannel*)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load %struct.css_driver*, %struct.css_driver** %4, align 8
  %25 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %25, align 8
  %27 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %28 = call i32 %26(%struct.subchannel* %27)
  br label %29

29:                                               ; preds = %12, %23, %13
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

declare dso_local %struct.css_driver* @to_cssdriver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
