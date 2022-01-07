; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.subchannel = type { i64 }
%struct.css_driver = type { %struct.css_device_id* }
%struct.css_device_id = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @css_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca %struct.css_driver*, align 8
  %8 = alloca %struct.css_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.subchannel* @to_subchannel(%struct.device* %9)
  store %struct.subchannel* %10, %struct.subchannel** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.css_driver* @to_cssdriver(%struct.device_driver* %11)
  store %struct.css_driver* %12, %struct.css_driver** %7, align 8
  %13 = load %struct.css_driver*, %struct.css_driver** %7, align 8
  %14 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %13, i32 0, i32 0
  %15 = load %struct.css_device_id*, %struct.css_device_id** %14, align 8
  store %struct.css_device_id* %15, %struct.css_device_id** %8, align 8
  br label %16

16:                                               ; preds = %31, %2
  %17 = load %struct.css_device_id*, %struct.css_device_id** %8, align 8
  %18 = getelementptr inbounds %struct.css_device_id, %struct.css_device_id* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.css_device_id*, %struct.css_device_id** %8, align 8
  %26 = getelementptr inbounds %struct.css_device_id, %struct.css_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %35

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.css_device_id*, %struct.css_device_id** %8, align 8
  %33 = getelementptr inbounds %struct.css_device_id, %struct.css_device_id* %32, i32 1
  store %struct.css_device_id* %33, %struct.css_device_id** %8, align 8
  br label %16

34:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

declare dso_local %struct.css_driver* @to_cssdriver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
