; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___blk_put_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___blk_put_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, i32, i32, i32, i32* }

@REQ_ALLOCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__blk_put_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = icmp ne %struct.request_queue* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %61

21:                                               ; preds = %13
  %22 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i32 @elv_completed_request(%struct.request_queue* %22, %struct.request* %23)
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @REQ_ALLOCED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %21
  %38 = load %struct.request*, %struct.request** %4, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 3
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 2
  %50 = call i32 @hlist_unhashed(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %56 = load %struct.request*, %struct.request** %4, align 8
  %57 = call i32 @blk_free_request(%struct.request_queue* %55, %struct.request* %56)
  %58 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @freed_request(%struct.request_queue* %58, i32 %59)
  br label %61

61:                                               ; preds = %12, %20, %37, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @elv_completed_request(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @blk_free_request(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @freed_request(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
