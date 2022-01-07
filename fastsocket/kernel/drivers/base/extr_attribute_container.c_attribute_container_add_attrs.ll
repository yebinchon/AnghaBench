; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_add_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_add_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.attribute_container = type { i64, %struct.device_attribute** }
%struct.device_attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attribute_container_add_attrs(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device_attribute**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device* %8)
  store %struct.attribute_container* %9, %struct.attribute_container** %4, align 8
  %10 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %11 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %10, i32 0, i32 1
  %12 = load %struct.device_attribute**, %struct.device_attribute*** %11, align 8
  store %struct.device_attribute** %12, %struct.device_attribute*** %5, align 8
  %13 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %14 = icmp ne %struct.device_attribute** %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %17 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %25 = icmp ne %struct.device_attribute** %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %28 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %69

32:                                               ; preds = %26, %20
  %33 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %34 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %41 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sysfs_create_group(i32* %39, i64 %42)
  store i32 %43, i32* %2, align 4
  br label %69

44:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %65, %44
  %46 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %46, i64 %48
  %50 = load %struct.device_attribute*, %struct.device_attribute** %49, align 8
  %51 = icmp ne %struct.device_attribute* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load %struct.device_attribute**, %struct.device_attribute*** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.device_attribute*, %struct.device_attribute** %54, i64 %56
  %58 = load %struct.device_attribute*, %struct.device_attribute** %57, align 8
  %59 = call i32 @device_create_file(%struct.device* %53, %struct.device_attribute* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %45

68:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62, %37, %31
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.attribute_container* @attribute_container_classdev_to_container(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i64) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
