; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-timeout.c_blk_add_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-timeout.c_blk_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i32, i64, i32, %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@REQ_ATOM_COMPLETE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_add_timer(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 4
  %7 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %7, %struct.request_queue** %3, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %70

13:                                               ; preds = %1
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 1
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* @REQ_ATOM_COMPLETE, align 4
  %22 = load %struct.request*, %struct.request** %2, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 3
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.request*, %struct.request** %2, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %13
  %31 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.request*, %struct.request** %2, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %13
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.request*, %struct.request** %2, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.request*, %struct.request** %2, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.request*, %struct.request** %2, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  %46 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 1
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.request*, %struct.request** %2, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @round_jiffies_up(i64 %51)
  store i64 %52, i64* %4, align 8
  %53 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 0
  %55 = call i32 @timer_pending(%struct.TYPE_3__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %36
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %60 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @time_before(i64 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57, %36
  %66 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %67 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %66, i32 0, i32 0
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @mod_timer(%struct.TYPE_3__* %67, i64 %68)
  br label %70

70:                                               ; preds = %12, %65, %57
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @round_jiffies_up(i64) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
