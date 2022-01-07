; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_setup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, %struct.tape_blk_data }
%struct.tape_blk_data = type { i32, %struct.TYPE_9__*, i32, %struct.gendisk*, i32, i32, %struct.tape_device* }
%struct.TYPE_9__ = type { i8* }
%struct.gendisk = type { i32, i32, %struct.TYPE_9__*, i8*, i32*, i32 }

@tapeblock_request_fn = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@TAPEBLOCK_HSEC_SIZE = common dso_local global i32 0, align 4
@TAPEBLOCK_MAX_SEC = common dso_local global i32 0, align 4
@tapeblock_major = common dso_local global i32 0, align 4
@tapeblock_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"btibm%d\00", align 1
@TAPE_MINORS_PER_DEV = common dso_local global i32 0, align 4
@tapeblock_requeue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tapeblock_setup_device(%struct.tape_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.tape_blk_data*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %8 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %7, i32 0, i32 1
  store %struct.tape_blk_data* %8, %struct.tape_blk_data** %4, align 8
  %9 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %10 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %11 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %10, i32 0, i32 6
  store %struct.tape_device* %9, %struct.tape_device** %11, align 8
  %12 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %13 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %12, i32 0, i32 4
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %16 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %15, i32 0, i32 5
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load i32, i32* @tapeblock_request_fn, align 4
  %19 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %20 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %19, i32 0, i32 4
  %21 = call %struct.TYPE_9__* @blk_init_queue(i32 %18, i32* %20)
  %22 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %23 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %22, i32 0, i32 1
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %23, align 8
  %24 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %25 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %126

31:                                               ; preds = %1
  %32 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %33 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 @elevator_change(%struct.TYPE_9__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %118

39:                                               ; preds = %31
  %40 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %41 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* @TAPEBLOCK_HSEC_SIZE, align 4
  %44 = call i32 @blk_queue_logical_block_size(%struct.TYPE_9__* %42, i32 %43)
  %45 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %46 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i32, i32* @TAPEBLOCK_MAX_SEC, align 4
  %49 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_9__* %47, i32 %48)
  %50 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %51 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i32 @blk_queue_max_segments(%struct.TYPE_9__* %52, i64 -1)
  %54 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %55 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @blk_queue_max_segment_size(%struct.TYPE_9__* %56, i64 -1)
  %58 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %59 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 @blk_queue_segment_boundary(%struct.TYPE_9__* %60, i64 -1)
  %62 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %62, %struct.gendisk** %5, align 8
  %63 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %64 = icmp ne %struct.gendisk* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %39
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %118

68:                                               ; preds = %39
  %69 = load i32, i32* @tapeblock_major, align 4
  %70 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %71 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %73 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %76 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %78 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %77, i32 0, i32 4
  store i32* @tapeblock_fops, i32** %78, align 8
  %79 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %80 = call i8* @tape_get_device_reference(%struct.tape_device* %79)
  %81 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %84 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %87 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %86, i32 0, i32 2
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %87, align 8
  %88 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %89 = call i32 @set_capacity(%struct.gendisk* %88, i32 0)
  %90 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %91 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %94 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TAPE_MINORS_PER_DEV, align 4
  %97 = sdiv i32 %95, %96
  %98 = call i32 @sprintf(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %100 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %101 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %100, i32 0, i32 3
  store %struct.gendisk* %99, %struct.gendisk** %101, align 8
  %102 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %103 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %105 = call i8* @tape_get_device_reference(%struct.tape_device* %104)
  %106 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %107 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  %110 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %111 = call i32 @add_disk(%struct.gendisk* %110)
  %112 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %113 = call i8* @tape_get_device_reference(%struct.tape_device* %112)
  %114 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %115 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %114, i32 0, i32 2
  %116 = load i32, i32* @tapeblock_requeue, align 4
  %117 = call i32 @INIT_WORK(i32* %115, i32 %116)
  store i32 0, i32* %2, align 4
  br label %126

118:                                              ; preds = %65, %38
  %119 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %120 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @blk_cleanup_queue(%struct.TYPE_9__* %121)
  %123 = load %struct.tape_blk_data*, %struct.tape_blk_data** %4, align 8
  %124 = getelementptr inbounds %struct.tape_blk_data, %struct.tape_blk_data* %123, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %124, align 8
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %118, %68, %28
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @elevator_change(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @blk_queue_segment_boundary(%struct.TYPE_9__*, i64) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i8* @tape_get_device_reference(%struct.tape_device*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
