; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_flush_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.work_struct, %struct.work_struct }
%struct.work_struct = type { i32 }

@Q_INDEX_DONE = common dso_local global i32 0, align 4
@Q_INDEX = common dso_local global i32 0, align 4
@rt2x00usb_flush_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00usb_flush_queue(%struct.data_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %11 = load i32, i32* @Q_INDEX_DONE, align 4
  %12 = load i32, i32* @Q_INDEX, align 4
  %13 = load i32, i32* @rt2x00usb_flush_entry, align 4
  %14 = call i32 @rt2x00queue_for_each_entry(%struct.data_queue* %10, i32 %11, i32 %12, i32* null, i32 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %17 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %29 [
    i32 129, label %19
    i32 130, label %19
    i32 132, label %19
    i32 131, label %19
    i32 128, label %24
  ]

19:                                               ; preds = %15, %15, %15, %15
  %20 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %21 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store %struct.work_struct* %23, %struct.work_struct** %5, align 8
  br label %30

24:                                               ; preds = %15
  %25 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %26 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store %struct.work_struct* %28, %struct.work_struct** %5, align 8
  br label %30

29:                                               ; preds = %15
  br label %51

30:                                               ; preds = %24, %19
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %36 = call i64 @rt2x00queue_empty(%struct.data_queue* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %51

39:                                               ; preds = %34
  %40 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %41 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %46 = call i32 @queue_work(i32 %44, %struct.work_struct* %45)
  %47 = call i32 @msleep(i32 10)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %31

51:                                               ; preds = %29, %38, %31
  ret void
}

declare dso_local i32 @rt2x00queue_for_each_entry(%struct.data_queue*, i32, i32, i32*, i32) #1

declare dso_local i64 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i32 @queue_work(i32, %struct.work_struct*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
