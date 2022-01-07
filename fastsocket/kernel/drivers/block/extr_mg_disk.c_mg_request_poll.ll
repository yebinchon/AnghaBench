; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_request_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_request_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mg_host* }
%struct.mg_host = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @mg_request_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_request_poll(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.mg_host*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 0
  %6 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  store %struct.mg_host* %6, %struct.mg_host** %3, align 8
  br label %7

7:                                                ; preds = %1, %34, %56
  %8 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %9 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %14 = call %struct.TYPE_5__* @blk_fetch_request(%struct.request_queue* %13)
  %15 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %16 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %15, i32 0, i32 0
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %18 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %57

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %7
  %24 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %25 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REQ_TYPE_FS, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @mg_end_request_cur(%struct.mg_host* %35, i32 %37)
  br label %7

39:                                               ; preds = %23
  %40 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %41 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i64 @rq_data_dir(%struct.TYPE_5__* %42)
  %44 = load i64, i64* @READ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %48 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @mg_read(%struct.TYPE_5__* %49)
  br label %56

51:                                               ; preds = %39
  %52 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %53 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @mg_write(%struct.TYPE_5__* %54)
  br label %56

56:                                               ; preds = %51, %46
  br label %7

57:                                               ; preds = %21
  ret void
}

declare dso_local %struct.TYPE_5__* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mg_end_request_cur(%struct.mg_host*, i32) #1

declare dso_local i64 @rq_data_dir(%struct.TYPE_5__*) #1

declare dso_local i32 @mg_read(%struct.TYPE_5__*) #1

declare dso_local i32 @mg_write(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
