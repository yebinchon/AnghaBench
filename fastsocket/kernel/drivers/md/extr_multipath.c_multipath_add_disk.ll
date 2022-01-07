; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_add_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, %struct.mpconf* }
%struct.mpconf = type { i32, %struct.multipath_info* }
%struct.multipath_info = type { i32* }
%struct.md_rdev = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.request_queue* }
%struct.request_queue = type { i64 }

@EEXIST = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @multipath_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_add_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.mpconf*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.multipath_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 4
  %14 = load %struct.mpconf*, %struct.mpconf** %13, align 8
  store %struct.mpconf* %14, %struct.mpconf** %5, align 8
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %31 = call i32 @print_multipath_conf(%struct.mpconf* %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %108, %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %111

37:                                               ; preds = %33
  %38 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %39 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %38, i32 0, i32 1
  %40 = load %struct.multipath_info*, %struct.multipath_info** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %40, i64 %42
  store %struct.multipath_info* %43, %struct.multipath_info** %9, align 8
  %44 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %107

47:                                               ; preds = %37
  %48 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %49 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.request_queue*, %struct.request_queue** %53, align 8
  store %struct.request_queue* %54, %struct.request_queue** %6, align 8
  %55 = load %struct.mddev*, %struct.mddev** %3, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %62 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 9
  %65 = call i32 @disk_stack_limits(i32 %57, %struct.TYPE_4__* %60, i32 %64)
  %66 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %67 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %47
  %71 = load %struct.mddev*, %struct.mddev** %3, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @blk_queue_max_segments(i32 %73, i32 1)
  %75 = load %struct.mddev*, %struct.mddev** %3, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @blk_queue_segment_boundary(i32 %77, i64 %79)
  br label %81

81:                                               ; preds = %70, %47
  %82 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %83 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_irq(i32* %83)
  %85 = load %struct.mddev*, %struct.mddev** %3, align 8
  %86 = getelementptr inbounds %struct.mddev, %struct.mddev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @In_sync, align 4
  %93 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %94 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %93, i32 0, i32 2
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %97 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_irq(i32* %97)
  %99 = load %struct.multipath_info*, %struct.multipath_info** %9, align 8
  %100 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %103 = call i32 @rcu_assign_pointer(i32* %101, %struct.md_rdev* %102)
  store i32 0, i32* %7, align 4
  %104 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %105 = load %struct.mddev*, %struct.mddev** %3, align 8
  %106 = call i32 @md_integrity_add_rdev(%struct.md_rdev* %104, %struct.mddev* %105)
  br label %111

107:                                              ; preds = %37
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %33

111:                                              ; preds = %81, %33
  %112 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %113 = call i32 @print_multipath_conf(%struct.mpconf* %112)
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @print_multipath_conf(%struct.mpconf*) #1

declare dso_local i32 @disk_stack_limits(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @blk_queue_max_segments(i32, i32) #1

declare dso_local i32 @blk_queue_segment_boundary(i32, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.md_rdev*) #1

declare dso_local i32 @md_integrity_add_rdev(%struct.md_rdev*, %struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
