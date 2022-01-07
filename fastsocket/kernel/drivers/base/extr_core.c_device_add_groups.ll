; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_add_groups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_add_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.attribute_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.attribute_group**)* @device_add_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_add_groups(%struct.device* %0, %struct.attribute_group** %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.attribute_group**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.attribute_group**, %struct.attribute_group*** %4, align 8
  %8 = icmp ne %struct.attribute_group** %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %44, %9
  %11 = load %struct.attribute_group**, %struct.attribute_group*** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %11, i64 %13
  %15 = load %struct.attribute_group*, %struct.attribute_group** %14, align 8
  %16 = icmp ne %struct.attribute_group* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %10
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.attribute_group**, %struct.attribute_group*** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %20, i64 %22
  %24 = load %struct.attribute_group*, %struct.attribute_group** %23, align 8
  %25 = call i32 @sysfs_create_group(i32* %19, %struct.attribute_group* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load %struct.attribute_group**, %struct.attribute_group*** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %36, i64 %38
  %40 = load %struct.attribute_group*, %struct.attribute_group** %39, align 8
  %41 = call i32 @sysfs_remove_group(i32* %35, %struct.attribute_group* %40)
  br label %29

42:                                               ; preds = %29
  br label %47

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %10

47:                                               ; preds = %42, %10
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @sysfs_create_group(i32*, %struct.attribute_group*) #1

declare dso_local i32 @sysfs_remove_group(i32*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
