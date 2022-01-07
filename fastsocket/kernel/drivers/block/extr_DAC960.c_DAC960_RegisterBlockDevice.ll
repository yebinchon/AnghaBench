; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_RegisterBlockDevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_RegisterBlockDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.request_queue**, i32, %struct.gendisk** }
%struct.request_queue = type { %struct.TYPE_3__* }
%struct.gendisk = type { i32, i32, i32*, i32, %struct.request_queue* }

@DAC960_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dac960\00", align 1
@DAC960_MaxLogicalDrives = common dso_local global i32 0, align 4
@DAC960_RequestFunction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"DAC960: failure to allocate request queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rd/c%dd%d\00", align 1
@DAC960_MaxPartitionsBits = common dso_local global i32 0, align 4
@DAC960_BlockDeviceOperations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @DAC960_RegisterBlockDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_RegisterBlockDevice(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.request_queue*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* @DAC960_MAJOR, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @register_blkdev(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %85, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DAC960_MaxLogicalDrives, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 6
  %25 = load %struct.gendisk**, %struct.gendisk*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %25, i64 %27
  %29 = load %struct.gendisk*, %struct.gendisk** %28, align 8
  store %struct.gendisk* %29, %struct.gendisk** %6, align 8
  %30 = load i32, i32* @DAC960_RequestFunction, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = call %struct.request_queue* @blk_init_queue(i32 %30, i32* %32)
  store %struct.request_queue* %33, %struct.request_queue** %7, align 8
  %34 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %35 = icmp ne %struct.request_queue* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %22
  %37 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %85

38:                                               ; preds = %22
  %39 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load %struct.request_queue**, %struct.request_queue*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.request_queue*, %struct.request_queue** %42, i64 %44
  store %struct.request_queue* %39, %struct.request_queue** %45, align 8
  %46 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @blk_queue_bounce_limit(%struct.request_queue* %46, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %53 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %52, i32 0, i32 0
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %53, align 8
  %54 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @blk_queue_max_segments(%struct.request_queue* %54, i32 %57)
  %59 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %59, i32 %62)
  %64 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %65 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %66 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %65, i32 0, i32 4
  store %struct.request_queue* %64, %struct.request_queue** %66, align 8
  %67 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %68 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @sprintf(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @DAC960_MaxPartitionsBits, align 4
  %80 = shl i32 %78, %79
  %81 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %84 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %83, i32 0, i32 2
  store i32* @DAC960_BlockDeviceOperations, i32** %84, align 8
  br label %85

85:                                               ; preds = %38, %36
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %18

88:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @register_blkdev(i32, i8*) #1

declare dso_local %struct.request_queue* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
