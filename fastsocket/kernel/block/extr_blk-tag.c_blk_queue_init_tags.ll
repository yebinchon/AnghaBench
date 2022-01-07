; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c_blk_queue_init_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c_blk_queue_init_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.blk_queue_tag* }
%struct.blk_queue_tag = type { i32 }

@QUEUE_FLAG_QUEUED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_queue_init_tags(%struct.request_queue* %0, i32 %1, %struct.blk_queue_tag* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_queue_tag*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.blk_queue_tag* %2, %struct.blk_queue_tag** %7, align 8
  %9 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %7, align 8
  %10 = icmp ne %struct.blk_queue_tag* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 1
  %14 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %13, align 8
  %15 = icmp ne %struct.blk_queue_tag* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %7, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 1
  %20 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %19, align 8
  %21 = icmp ne %struct.blk_queue_tag* %17, %20
  br label %22

22:                                               ; preds = %16, %11, %3
  %23 = phi i1 [ false, %11 ], [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %7, align 8
  %27 = icmp ne %struct.blk_queue_tag* %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 1
  %31 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %30, align 8
  %32 = icmp ne %struct.blk_queue_tag* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.blk_queue_tag* @__blk_queue_init_tags(%struct.request_queue* %34, i32 %35)
  store %struct.blk_queue_tag* %36, %struct.blk_queue_tag** %7, align 8
  %37 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %7, align 8
  %38 = icmp ne %struct.blk_queue_tag* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %73

40:                                               ; preds = %33
  br label %63

41:                                               ; preds = %28, %22
  %42 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 1
  %44 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %43, align 8
  %45 = icmp ne %struct.blk_queue_tag* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @blk_queue_resize_tags(%struct.request_queue* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %78

54:                                               ; preds = %46
  %55 = load i32, i32* @QUEUE_FLAG_QUEUED, align 4
  %56 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %57 = call i32 @queue_flag_set(i32 %55, %struct.request_queue* %56)
  store i32 0, i32* %4, align 4
  br label %78

58:                                               ; preds = %41
  %59 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %7, align 8
  %60 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  br label %62

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %7, align 8
  %65 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %66 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %65, i32 0, i32 1
  store %struct.blk_queue_tag* %64, %struct.blk_queue_tag** %66, align 8
  %67 = load i32, i32* @QUEUE_FLAG_QUEUED, align 4
  %68 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %69 = call i32 @queue_flag_set_unlocked(i32 %67, %struct.request_queue* %68)
  %70 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %71 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %70, i32 0, i32 0
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  store i32 0, i32* %4, align 4
  br label %78

73:                                               ; preds = %39
  %74 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %7, align 8
  %75 = call i32 @kfree(%struct.blk_queue_tag* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %63, %54, %52
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.blk_queue_tag* @__blk_queue_init_tags(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_resize_tags(%struct.request_queue*, i32) #1

declare dso_local i32 @queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.blk_queue_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
