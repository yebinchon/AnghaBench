; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_alloc_disk_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_alloc_disk_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32** }
%struct.TYPE_5__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@block_class = common dso_local global i32 0, align 4
@disk_type = common dso_local global i32 0, align 4
@media_change_notify_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gendisk* @alloc_disk_node(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gendisk*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.gendisk* @kmalloc_node(i32 24, i32 %9, i32 %10)
  store %struct.gendisk* %11, %struct.gendisk** %6, align 8
  %12 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %13 = icmp ne %struct.gendisk* %12, null
  br i1 %13, label %14, label %62

14:                                               ; preds = %2
  %15 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %16 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %15, i32 0, i32 3
  %17 = call i32 @init_part_stats(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %21 = call i32 @kfree(%struct.gendisk* %20)
  store %struct.gendisk* null, %struct.gendisk** %3, align 8
  br label %64

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %25 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %27 = call i64 @disk_expand_part_tbl(%struct.gendisk* %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %31 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %30, i32 0, i32 3
  %32 = call i32 @free_part_stats(i32* %31)
  %33 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %34 = call i32 @kfree(%struct.gendisk* %33)
  store %struct.gendisk* null, %struct.gendisk** %3, align 8
  br label %64

35:                                               ; preds = %22
  %36 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %37 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %36, i32 0, i32 3
  %38 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  store i32* %37, i32** %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %46 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %48 = call i32 @rand_initialize_disk(%struct.gendisk* %47)
  %49 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %50 = call %struct.TYPE_5__* @disk_to_dev(%struct.gendisk* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32* @block_class, i32** %51, align 8
  %52 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %53 = call %struct.TYPE_5__* @disk_to_dev(%struct.gendisk* %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32* @disk_type, i32** %54, align 8
  %55 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %56 = call %struct.TYPE_5__* @disk_to_dev(%struct.gendisk* %55)
  %57 = call i32 @device_initialize(%struct.TYPE_5__* %56)
  %58 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %59 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %58, i32 0, i32 2
  %60 = load i32, i32* @media_change_notify_thread, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %35, %2
  %63 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  store %struct.gendisk* %63, %struct.gendisk** %3, align 8
  br label %64

64:                                               ; preds = %62, %29, %19
  %65 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  ret %struct.gendisk* %65
}

declare dso_local %struct.gendisk* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @init_part_stats(i32*) #1

declare dso_local i32 @kfree(%struct.gendisk*) #1

declare dso_local i64 @disk_expand_part_tbl(%struct.gendisk*, i32) #1

declare dso_local i32 @free_part_stats(i32*) #1

declare dso_local i32 @rand_initialize_disk(%struct.gendisk*) #1

declare dso_local %struct.TYPE_5__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
