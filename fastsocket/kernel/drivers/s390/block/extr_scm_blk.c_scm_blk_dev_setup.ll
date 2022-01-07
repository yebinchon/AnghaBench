; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_dev_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c_scm_blk_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_blk_dev = type { %struct.TYPE_4__*, %struct.request_queue*, i32, i32, i32, i32, i32, i32, %struct.scm_device* }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.request_queue*, i32*, %struct.scm_device*, i32* }
%struct.request_queue = type { %struct.scm_device*, i32 }
%struct.scm_device = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nr_devices = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SCM_OPER = common dso_local global i32 0, align 4
@scm_blk_tasklet = common dso_local global i64 0, align 8
@scm_blk_request = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SCM_QUEUE_DELAY = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@SCM_NR_PARTS = common dso_local global i32 0, align 4
@scm_blk_devops = common dso_local global i32 0, align 4
@scm_major = common dso_local global i32 0, align 4
@DISK_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"scm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scm_blk_dev_setup(%struct.scm_blk_dev* %0, %struct.scm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scm_blk_dev*, align 8
  %5 = alloca %struct.scm_device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scm_blk_dev* %0, %struct.scm_blk_dev** %4, align 8
  store %struct.scm_device* %1, %struct.scm_device** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = call i32 @atomic_inc_return(i32* @nr_devices)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ugt i32 %15, 701
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %190

20:                                               ; preds = %2
  %21 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %22 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %23 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %22, i32 0, i32 8
  store %struct.scm_device* %21, %struct.scm_device** %23, align 8
  %24 = load i32, i32* @SCM_OPER, align 4
  %25 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %26 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %28 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %31 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %30, i32 0, i32 6
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %34 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %33, i32 0, i32 5
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %37 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %36, i32 0, i32 4
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %40 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %39, i32 0, i32 3
  %41 = load i64, i64* @scm_blk_tasklet, align 8
  %42 = inttoptr i64 %41 to void (i64)*
  %43 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %44 = ptrtoint %struct.scm_blk_dev* %43 to i64
  %45 = call i32 @tasklet_init(i32* %40, void (i64)* %42, i64 %44)
  %46 = load i32, i32* @scm_blk_request, align 4
  %47 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %48 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %47, i32 0, i32 2
  %49 = call %struct.request_queue* @blk_init_queue(i32 %46, i32* %48)
  store %struct.request_queue* %49, %struct.request_queue** %6, align 8
  %50 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %51 = icmp ne %struct.request_queue* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %20
  br label %190

53:                                               ; preds = %20
  %54 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %55 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %56 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %55, i32 0, i32 1
  store %struct.request_queue* %54, %struct.request_queue** %56, align 8
  %57 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %58 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @min(i32 %59, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %66 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %65, i32 4096)
  %67 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 3
  %70 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %67, i32 %69)
  %71 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @blk_queue_max_segments(%struct.request_queue* %71, i32 %72)
  %74 = load i32, i32* @SCM_QUEUE_DELAY, align 4
  %75 = call i32 @msecs_to_jiffies(i32 %74)
  %76 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %77 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %79 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %80 = call i32 @queue_flag_set_unlocked(i32 %78, %struct.request_queue* %79)
  %81 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %82 = call i32 @scm_blk_dev_cluster_setup(%struct.scm_blk_dev* %81)
  %83 = load i32, i32* @SCM_NR_PARTS, align 4
  %84 = call %struct.TYPE_4__* @alloc_disk(i32 %83)
  %85 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %86 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %85, i32 0, i32 0
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %86, align 8
  %87 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %88 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %53
  br label %187

92:                                               ; preds = %53
  %93 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %94 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %95 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %94, i32 0, i32 0
  store %struct.scm_device* %93, %struct.scm_device** %95, align 8
  %96 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %97 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %96, i32 0, i32 1
  %98 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %99 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  store i32* %97, i32** %101, align 8
  %102 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %103 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %104 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  store %struct.scm_device* %102, %struct.scm_device** %106, align 8
  %107 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %108 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  store i32* @scm_blk_devops, i32** %110, align 8
  %111 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %112 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %113 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  store %struct.request_queue* %111, %struct.request_queue** %115, align 8
  %116 = load i32, i32* @scm_major, align 4
  %117 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %118 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i32 %116, i32* %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @SCM_NR_PARTS, align 4
  %123 = mul i32 %121, %122
  %124 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %125 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 8
  %128 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %129 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DISK_NAME_LEN, align 8
  %134 = call i32 (i64, i64, i8*, ...) @snprintf(i64 %132, i64 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ugt i32 %135, 25
  br i1 %136, label %137, label %159

137:                                              ; preds = %92
  %138 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %139 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i64, i64* @DISK_NAME_LEN, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = sub nsw i64 %146, %148
  %150 = load i32, i32* %9, align 4
  %151 = udiv i32 %150, 26
  %152 = add i32 97, %151
  %153 = sub i32 %152, 1
  %154 = call i32 (i64, i64, i8*, ...) @snprintf(i64 %145, i64 %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %9, align 4
  %158 = urem i32 %157, 26
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %137, %92
  %160 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %161 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load i64, i64* @DISK_NAME_LEN, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = sub nsw i64 %168, %170
  %172 = load i32, i32* %9, align 4
  %173 = add i32 97, %172
  %174 = call i32 (i64, i64, i8*, ...) @snprintf(i64 %167, i64 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  %175 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %176 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %179 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 9
  %182 = call i32 @set_capacity(%struct.TYPE_4__* %177, i32 %181)
  %183 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %184 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = call i32 @add_disk(%struct.TYPE_4__* %185)
  store i32 0, i32* %3, align 4
  br label %193

187:                                              ; preds = %91
  %188 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %189 = call i32 @blk_cleanup_queue(%struct.request_queue* %188)
  br label %190

190:                                              ; preds = %187, %52, %17
  %191 = call i32 @atomic_dec(i32* @nr_devices)
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %190, %159
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local %struct.request_queue* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #1

declare dso_local i32 @scm_blk_dev_cluster_setup(%struct.scm_blk_dev*) #1

declare dso_local %struct.TYPE_4__* @alloc_disk(i32) #1

declare dso_local i32 @snprintf(i64, i64, i8*, ...) #1

declare dso_local i32 @set_capacity(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @add_disk(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
