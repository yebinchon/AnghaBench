; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_get_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.bsg_class_device = type { i32, i32 }

@bsg_mutex = common dso_local global i32 0, align 4
@bsg_minor_idr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@bsg_kref_release_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsg_device* (%struct.inode*, %struct.file*)* @bsg_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsg_device* @bsg_get_device(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.bsg_device*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.bsg_device*, align 8
  %7 = alloca %struct.bsg_class_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = call i32 @mutex_lock(i32* @bsg_mutex)
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  %11 = call %struct.bsg_class_device* @idr_find(i32* @bsg_minor_idr, i32 %10)
  store %struct.bsg_class_device* %11, %struct.bsg_class_device** %7, align 8
  %12 = load %struct.bsg_class_device*, %struct.bsg_class_device** %7, align 8
  %13 = icmp ne %struct.bsg_class_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bsg_class_device*, %struct.bsg_class_device** %7, align 8
  %16 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %15, i32 0, i32 0
  %17 = call i32 @kref_get(i32* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = call i32 @mutex_unlock(i32* @bsg_mutex)
  %20 = load %struct.bsg_class_device*, %struct.bsg_class_device** %7, align 8
  %21 = icmp ne %struct.bsg_class_device* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.bsg_device* @ERR_PTR(i32 %24)
  store %struct.bsg_device* %25, %struct.bsg_device** %3, align 8
  br label %54

26:                                               ; preds = %18
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @iminor(%struct.inode* %27)
  %29 = load %struct.bsg_class_device*, %struct.bsg_class_device** %7, align 8
  %30 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.bsg_device* @__bsg_get_device(i32 %28, i32 %31)
  store %struct.bsg_device* %32, %struct.bsg_device** %6, align 8
  %33 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %34 = icmp ne %struct.bsg_device* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  store %struct.bsg_device* %36, %struct.bsg_device** %3, align 8
  br label %54

37:                                               ; preds = %26
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.bsg_class_device*, %struct.bsg_class_device** %7, align 8
  %40 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = call %struct.bsg_device* @bsg_add_device(%struct.inode* %38, i32 %41, %struct.file* %42)
  store %struct.bsg_device* %43, %struct.bsg_device** %6, align 8
  %44 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %45 = call i64 @IS_ERR(%struct.bsg_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.bsg_class_device*, %struct.bsg_class_device** %7, align 8
  %49 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %48, i32 0, i32 0
  %50 = load i32, i32* @bsg_kref_release_function, align 4
  %51 = call i32 @kref_put(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  store %struct.bsg_device* %53, %struct.bsg_device** %3, align 8
  br label %54

54:                                               ; preds = %52, %35, %22
  %55 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  ret %struct.bsg_device* %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bsg_class_device* @idr_find(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.bsg_device* @ERR_PTR(i32) #1

declare dso_local %struct.bsg_device* @__bsg_get_device(i32, i32) #1

declare dso_local %struct.bsg_device* @bsg_add_device(%struct.inode*, i32, %struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.bsg_device*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
