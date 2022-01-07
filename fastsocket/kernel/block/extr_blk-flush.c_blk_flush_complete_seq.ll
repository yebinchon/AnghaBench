; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c_blk_flush_complete_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c_blk_flush_complete_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_2__, %struct.list_head, %struct.request_queue* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.request_queue = type { i64, i32, %struct.list_head, i32, %struct.list_head* }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32, i32)* @blk_flush_complete_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_flush_complete_seq(%struct.request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 2
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %7, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 4
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8
  %16 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 %18
  store %struct.list_head* %19, %struct.list_head** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load %struct.request*, %struct.request** %4, align 8
  %41 = call i32 @blk_flush_cur_seq(%struct.request* %40)
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %3
  store i32 130, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %88 [
    i32 128, label %45
    i32 129, label %45
    i32 131, label %59
    i32 130, label %71
  ]

45:                                               ; preds = %43, %43
  %46 = load %struct.list_head*, %struct.list_head** %8, align 8
  %47 = call i32 @list_empty(%struct.list_head* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.request*, %struct.request** %4, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load %struct.list_head*, %struct.list_head** %8, align 8
  %58 = call i32 @list_move_tail(i32* %56, %struct.list_head* %57)
  br label %90

59:                                               ; preds = %43
  %60 = load %struct.request*, %struct.request** %4, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %64 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %63, i32 0, i32 2
  %65 = call i32 @list_move_tail(i32* %62, %struct.list_head* %64)
  %66 = load %struct.request*, %struct.request** %4, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 1
  %68 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %69 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %68, i32 0, i32 1
  %70 = call i32 @list_add(%struct.list_head* %67, i32* %69)
  store i32 1, i32* %9, align 4
  br label %90

71:                                               ; preds = %43
  %72 = load %struct.request*, %struct.request** %4, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 1
  %74 = call i32 @list_empty(%struct.list_head* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.request*, %struct.request** %4, align 8
  %80 = getelementptr inbounds %struct.request, %struct.request* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = call i32 @list_del_init(i32* %81)
  %83 = load %struct.request*, %struct.request** %4, align 8
  %84 = call i32 @blk_flush_restore_request(%struct.request* %83)
  %85 = load %struct.request*, %struct.request** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @__blk_end_request_all(%struct.request* %85, i32 %86)
  br label %90

88:                                               ; preds = %43
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %71, %59, %53
  %91 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %92 = call i32 @blk_kick_flush(%struct.request_queue* %91)
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %92, %93
  ret i32 %94
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blk_flush_cur_seq(%struct.request*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add(%struct.list_head*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @blk_flush_restore_request(%struct.request*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @blk_kick_flush(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
