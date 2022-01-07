; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c_blk_insert_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c_blk_insert_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i64, i64, i32, %struct.TYPE_2__, i32, %struct.request_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i32, i32 }

@REQ_FLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_FSEQ_DATA = common dso_local global i32 0, align 4
@REQ_FSEQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FSEQ_POSTFLUSH = common dso_local global i32 0, align 4
@REQ_FLUSH_SEQ = common dso_local global i32 0, align 4
@flush_data_end_io = common dso_local global i32 0, align 4
@REQ_FSEQ_ACTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_insert_flush(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 6
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = call i32 @blk_flush_policy(i32 %12, %struct.request* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.request*, %struct.request** %2, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.request*, %struct.request** %2, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.request*, %struct.request** %2, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br label %31

31:                                               ; preds = %23, %1
  %32 = phi i1 [ true, %1 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* @REQ_FLUSH, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.request*, %struct.request** %2, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @REQ_FUA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @REQ_FUA, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.request*, %struct.request** %2, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %31
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @REQ_FSEQ_DATA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @REQ_FSEQ_PREFLUSH, align 4
  %60 = load i32, i32* @REQ_FSEQ_POSTFLUSH, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load %struct.request*, %struct.request** %2, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 5
  %67 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %68 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %67, i32 0, i32 1
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  br label %92

70:                                               ; preds = %57, %52
  %71 = load %struct.request*, %struct.request** %2, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 4
  %73 = call i32 @memset(%struct.TYPE_2__* %72, i32 0, i32 4)
  %74 = load %struct.request*, %struct.request** %2, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load i32, i32* @REQ_FLUSH_SEQ, align 4
  %79 = load %struct.request*, %struct.request** %2, align 8
  %80 = getelementptr inbounds %struct.request, %struct.request* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @flush_data_end_io, align 4
  %84 = load %struct.request*, %struct.request** %2, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.request*, %struct.request** %2, align 8
  %87 = load i32, i32* @REQ_FSEQ_ACTIONS, align 4
  %88 = load i32, i32* %5, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @blk_flush_complete_seq(%struct.request* %86, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %70, %64
  ret void
}

declare dso_local i32 @blk_flush_policy(i32, %struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @blk_flush_complete_seq(%struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
