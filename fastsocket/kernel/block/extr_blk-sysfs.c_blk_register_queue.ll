; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_blk_register_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_blk_register_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.request_queue* }
%struct.request_queue = type { i32, i32 }
%struct.device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@KOBJ_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_register_queue(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = call %struct.device* @disk_to_dev(%struct.gendisk* %7)
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %6, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %13 = icmp ne %struct.request_queue* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @blk_trace_init_sysfs(%struct.device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %67

28:                                               ; preds = %21
  %29 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = call i32 @kobject_get(i32* %32)
  %34 = call i32 @kobject_add(i32* %30, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %28
  %40 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 0
  %42 = load i32, i32* @KOBJ_ADD, align 4
  %43 = call i32 @kobject_uevent(i32* %41, i32 %42)
  %44 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %45 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %67

49:                                               ; preds = %39
  %50 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %51 = call i32 @elv_register_queue(%struct.request_queue* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %56 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %55, i32 0, i32 0
  %57 = load i32, i32* @KOBJ_REMOVE, align 4
  %58 = call i32 @kobject_uevent(i32* %56, i32 %57)
  %59 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %60 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %59, i32 0, i32 0
  %61 = call i32 @kobject_del(i32* %60)
  %62 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %63 = call %struct.device* @disk_to_dev(%struct.gendisk* %62)
  %64 = call i32 @blk_trace_remove_sysfs(%struct.device* %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %54, %48, %37, %26, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.device* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @blk_trace_init_sysfs(%struct.device*) #1

declare dso_local i32 @kobject_add(i32*, i32, i8*, i8*) #1

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @elv_register_queue(%struct.request_queue*) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @blk_trace_remove_sysfs(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
