; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_get_gendisk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_get_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.kobject = type { i32 }
%struct.hd_struct = type { i32 }

@BLOCK_EXT_MAJOR = common dso_local global i64 0, align 8
@bdev_map = common dso_local global i32 0, align 4
@ext_devt_mutex = common dso_local global i32 0, align 4
@ext_devt_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gendisk* @get_gendisk(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.hd_struct*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store %struct.gendisk* null, %struct.gendisk** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @MAJOR(i32 %8)
  %10 = load i64, i64* @BLOCK_EXT_MAJOR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* @bdev_map, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.kobject* @kobj_lookup(i32 %13, i32 %14, i32* %15)
  store %struct.kobject* %16, %struct.kobject** %6, align 8
  %17 = load %struct.kobject*, %struct.kobject** %6, align 8
  %18 = icmp ne %struct.kobject* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.kobject*, %struct.kobject** %6, align 8
  %21 = call i32 @kobj_to_dev(%struct.kobject* %20)
  %22 = call %struct.gendisk* @dev_to_disk(i32 %21)
  store %struct.gendisk* %22, %struct.gendisk** %5, align 8
  br label %23

23:                                               ; preds = %19, %12
  br label %46

24:                                               ; preds = %2
  %25 = call i32 @mutex_lock(i32* @ext_devt_mutex)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @MINOR(i32 %26)
  %28 = call i32 @blk_mangle_minor(i32 %27)
  %29 = call %struct.hd_struct* @idr_find(i32* @ext_devt_idr, i32 %28)
  store %struct.hd_struct* %29, %struct.hd_struct** %7, align 8
  %30 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %31 = icmp ne %struct.hd_struct* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %34 = call %struct.gendisk* @part_to_disk(%struct.hd_struct* %33)
  %35 = call i64 @get_disk(%struct.gendisk* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %39 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %43 = call %struct.gendisk* @part_to_disk(%struct.hd_struct* %42)
  store %struct.gendisk* %43, %struct.gendisk** %5, align 8
  br label %44

44:                                               ; preds = %37, %32, %24
  %45 = call i32 @mutex_unlock(i32* @ext_devt_mutex)
  br label %46

46:                                               ; preds = %44, %23
  %47 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  ret %struct.gendisk* %47
}

declare dso_local i64 @MAJOR(i32) #1

declare dso_local %struct.kobject* @kobj_lookup(i32, i32, i32*) #1

declare dso_local %struct.gendisk* @dev_to_disk(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hd_struct* @idr_find(i32*, i32) #1

declare dso_local i32 @blk_mangle_minor(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @get_disk(%struct.gendisk*) #1

declare dso_local %struct.gendisk* @part_to_disk(%struct.hd_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
