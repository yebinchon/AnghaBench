; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_finish_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i32, i32, %struct.request*, i32 (%struct.request*, i32)* }

@laptop_mode = common dso_local global i32 0, align 4
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@REQ_DONTPREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @blk_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_finish_request(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.request*, %struct.request** %3, align 8
  %6 = call i64 @blk_rq_tagged(%struct.request* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = call i32 @blk_queue_end_tag(i32 %11, %struct.request* %12)
  br label %14

14:                                               ; preds = %8, %2
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = call i32 @blk_queued_rq(%struct.request* %15)
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @laptop_mode, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.request*, %struct.request** %3, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REQ_TYPE_FS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @laptop_io_completion()
  br label %29

29:                                               ; preds = %27, %21, %14
  %30 = load %struct.request*, %struct.request** %3, align 8
  %31 = call i32 @blk_delete_timer(%struct.request* %30)
  %32 = load %struct.request*, %struct.request** %3, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @REQ_DONTPREP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.request*, %struct.request** %3, align 8
  %40 = call i32 @blk_unprep_request(%struct.request* %39)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.request*, %struct.request** %3, align 8
  %43 = call i32 @blk_account_io_done(%struct.request* %42)
  %44 = load %struct.request*, %struct.request** %3, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 4
  %46 = load i32 (%struct.request*, i32)*, i32 (%struct.request*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.request*, i32)* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.request*, %struct.request** %3, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 4
  %51 = load i32 (%struct.request*, i32)*, i32 (%struct.request*, i32)** %50, align 8
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 %51(%struct.request* %52, i32 %53)
  br label %75

55:                                               ; preds = %41
  %56 = load %struct.request*, %struct.request** %3, align 8
  %57 = call i64 @blk_bidi_rq(%struct.request* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.request*, %struct.request** %3, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 3
  %62 = load %struct.request*, %struct.request** %61, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.request*, %struct.request** %3, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 3
  %67 = load %struct.request*, %struct.request** %66, align 8
  %68 = call i32 @__blk_put_request(i32 %64, %struct.request* %67)
  br label %69

69:                                               ; preds = %59, %55
  %70 = load %struct.request*, %struct.request** %3, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.request*, %struct.request** %3, align 8
  %74 = call i32 @__blk_put_request(i32 %72, %struct.request* %73)
  br label %75

75:                                               ; preds = %69, %48
  ret void
}

declare dso_local i64 @blk_rq_tagged(%struct.request*) #1

declare dso_local i32 @blk_queue_end_tag(i32, %struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_queued_rq(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @laptop_io_completion(...) #1

declare dso_local i32 @blk_delete_timer(%struct.request*) #1

declare dso_local i32 @blk_unprep_request(%struct.request*) #1

declare dso_local i32 @blk_account_io_done(%struct.request*) #1

declare dso_local i64 @blk_bidi_rq(%struct.request*) #1

declare dso_local i32 @__blk_put_request(i32, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
