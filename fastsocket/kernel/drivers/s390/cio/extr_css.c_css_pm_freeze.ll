; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_pm_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_pm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.subchannel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.css_driver = type { i32 (%struct.subchannel*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @css_pm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_pm_freeze(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.css_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.subchannel* @to_subchannel(%struct.device* %6)
  store %struct.subchannel* %7, %struct.subchannel** %4, align 8
  %8 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %9 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.css_driver* @to_cssdriver(i32 %18)
  store %struct.css_driver* %19, %struct.css_driver** %5, align 8
  %20 = load %struct.css_driver*, %struct.css_driver** %5, align 8
  %21 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %21, align 8
  %23 = icmp ne i32 (%struct.subchannel*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.css_driver*, %struct.css_driver** %5, align 8
  %26 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %26, align 8
  %28 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %29 = call i32 %27(%struct.subchannel* %28)
  br label %31

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i32 [ %29, %24 ], [ 0, %30 ]
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

declare dso_local %struct.css_driver* @to_cssdriver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
