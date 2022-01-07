; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_config_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_config_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, %struct.request_queue*, %struct.file* }
%struct.request_queue = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop_device*)* @loop_config_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_config_discard(%struct.loop_device* %0) #0 {
  %2 = alloca %struct.loop_device*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.loop_device* %0, %struct.loop_device** %2, align 8
  %6 = load %struct.loop_device*, %struct.loop_device** %2, align 8
  %7 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %6, i32 0, i32 2
  %8 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %8, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.loop_device*, %struct.loop_device** %2, align 8
  %15 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %14, i32 0, i32 1
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.loop_device*, %struct.loop_device** %2, align 8
  %25 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23, %1
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %39 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %42 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %43 = call i32 @queue_flag_clear_unlocked(i32 %41, %struct.request_queue* %42)
  br label %67

44:                                               ; preds = %23
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %51 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i64 %49, i64* %52, align 8
  %53 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @UINT_MAX, align 4
  %57 = ashr i32 %56, 9
  %58 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %59 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %62 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %65 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %66 = call i32 @queue_flag_set_unlocked(i32 %64, %struct.request_queue* %65)
  br label %67

67:                                               ; preds = %44, %28
  ret void
}

declare dso_local i32 @queue_flag_clear_unlocked(i32, %struct.request_queue*) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
