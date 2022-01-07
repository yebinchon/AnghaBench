; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_remove_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_remove_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.attribute_container = type { i64, %struct.device_attribute** }
%struct.device_attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attribute_container_remove_attrs(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.attribute_container*, align 8
  %4 = alloca %struct.device_attribute**, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* %6)
  store %struct.attribute_container* %7, %struct.attribute_container** %3, align 8
  %8 = load %struct.attribute_container*, %struct.attribute_container** %3, align 8
  %9 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %8, i32 0, i32 1
  %10 = load %struct.device_attribute**, %struct.device_attribute*** %9, align 8
  store %struct.device_attribute** %10, %struct.device_attribute*** %4, align 8
  %11 = load %struct.device_attribute**, %struct.device_attribute*** %4, align 8
  %12 = icmp ne %struct.device_attribute** %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.attribute_container*, %struct.attribute_container** %3, align 8
  %15 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %50

19:                                               ; preds = %13, %1
  %20 = load %struct.attribute_container*, %struct.attribute_container** %3, align 8
  %21 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load %struct.attribute_container*, %struct.attribute_container** %3, align 8
  %28 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sysfs_remove_group(i32* %26, i64 %29)
  br label %50

31:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load %struct.device_attribute**, %struct.device_attribute*** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %33, i64 %35
  %37 = load %struct.device_attribute*, %struct.device_attribute** %36, align 8
  %38 = icmp ne %struct.device_attribute* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %2, align 8
  %41 = load %struct.device_attribute**, %struct.device_attribute*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %41, i64 %43
  %45 = load %struct.device_attribute*, %struct.device_attribute** %44, align 8
  %46 = call i32 @device_remove_file(%struct.device* %40, %struct.device_attribute* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %32

50:                                               ; preds = %18, %24, %32
  ret void
}

declare dso_local %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i64) #1

declare dso_local i32 @device_remove_file(%struct.device*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
