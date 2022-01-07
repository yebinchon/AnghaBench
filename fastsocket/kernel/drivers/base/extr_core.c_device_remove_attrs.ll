; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_remove_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_remove_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.device_type*, %struct.class* }
%struct.device_type = type { i32 }
%struct.class = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @device_remove_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_remove_attrs(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.class*, align 8
  %4 = alloca %struct.device_type*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 2
  %7 = load %struct.class*, %struct.class** %6, align 8
  store %struct.class* %7, %struct.class** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %10 = load %struct.device_type*, %struct.device_type** %9, align 8
  store %struct.device_type* %10, %struct.device_type** %4, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @device_remove_groups(%struct.device* %11, i32 %14)
  %16 = load %struct.device_type*, %struct.device_type** %4, align 8
  %17 = icmp ne %struct.device_type* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = load %struct.device_type*, %struct.device_type** %4, align 8
  %21 = getelementptr inbounds %struct.device_type, %struct.device_type* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_remove_groups(%struct.device* %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.class*, %struct.class** %3, align 8
  %26 = icmp ne %struct.class* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = load %struct.class*, %struct.class** %3, align 8
  %30 = getelementptr inbounds %struct.class, %struct.class* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_remove_attributes(%struct.device* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @device_remove_groups(%struct.device*, i32) #1

declare dso_local i32 @device_remove_attributes(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
