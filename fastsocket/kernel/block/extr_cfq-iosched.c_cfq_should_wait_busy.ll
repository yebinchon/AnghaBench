; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_should_wait_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_should_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.cfq_io_context* }
%struct.cfq_io_context = type { i32, i32 }
%struct.cfq_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_should_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_should_wait_busy(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.cfq_io_context*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  %7 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %8 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %7, i32 0, i32 0
  %9 = load %struct.cfq_io_context*, %struct.cfq_io_context** %8, align 8
  store %struct.cfq_io_context* %9, %struct.cfq_io_context** %6, align 8
  %10 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %11 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %19 = call i64 @cfq_slice_used(%struct.cfq_queue* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %51

22:                                               ; preds = %17
  %23 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %24 = icmp ne %struct.cfq_io_context* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %27 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @sample_valid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %33 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @jiffies, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %38 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %51

42:                                               ; preds = %31, %25, %22
  %43 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %44 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @jiffies, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %41, %21, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @cfq_slice_used(%struct.cfq_queue*) #1

declare dso_local i64 @sample_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
