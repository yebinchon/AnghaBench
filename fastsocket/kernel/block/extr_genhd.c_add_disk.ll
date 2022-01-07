; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_add_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, %struct.TYPE_6__*, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.backing_dev_info }
%struct.backing_dev_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4
@exact_match = common dso_local global i32 0, align 4
@exact_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bdi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_disk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.backing_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %17 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ true, %10 ], [ %19, %15 ]
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i1 [ false, %1 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %28 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %33 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %31, %23
  %40 = phi i1 [ false, %23 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load i32, i32* @GENHD_FL_UP, align 4
  %44 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %45 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %49 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %48, i32 0, i32 5
  %50 = call i32 @blk_alloc_devt(i32* %49, i32* %4)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = call i32 @WARN_ON(i32 1)
  br label %104

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %58 = call %struct.TYPE_5__* @disk_to_dev(%struct.gendisk* %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @MAJOR(i32 %60)
  %62 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %63 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @MINOR(i32 %64)
  %66 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %67 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %69 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store %struct.backing_dev_info* %71, %struct.backing_dev_info** %3, align 8
  %72 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %73 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %74 = call i32 @disk_devt(%struct.gendisk* %73)
  %75 = call i32 @bdi_register_dev(%struct.backing_dev_info* %72, i32 %74)
  %76 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %77 = call i32 @disk_devt(%struct.gendisk* %76)
  %78 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %79 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @exact_match, align 4
  %82 = load i32, i32* @exact_lock, align 4
  %83 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %84 = call i32 @blk_register_region(i32 %77, i64 %80, i32* null, i32 %81, i32 %82, %struct.gendisk* %83)
  %85 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %86 = call i32 @register_disk(%struct.gendisk* %85)
  %87 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %88 = call i32 @blk_register_queue(%struct.gendisk* %87)
  %89 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %90 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @blk_get_queue(%struct.TYPE_6__* %91)
  %93 = call i32 @WARN_ON_ONCE(i32 %92)
  %94 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %95 = call %struct.TYPE_5__* @disk_to_dev(%struct.gendisk* %94)
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %98 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @sysfs_create_link(i32* %96, i32* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @WARN_ON(i32 %102)
  br label %104

104:                                              ; preds = %55, %53
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @blk_alloc_devt(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @bdi_register_dev(%struct.backing_dev_info*, i32) #1

declare dso_local i32 @disk_devt(%struct.gendisk*) #1

declare dso_local i32 @blk_register_region(i32, i64, i32*, i32, i32, %struct.gendisk*) #1

declare dso_local i32 @register_disk(%struct.gendisk*) #1

declare dso_local i32 @blk_register_queue(%struct.gendisk*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_get_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
