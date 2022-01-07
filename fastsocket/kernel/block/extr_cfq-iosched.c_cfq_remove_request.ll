; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_remove_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_remove_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32 }
%struct.cfq_queue = type { i32, %struct.TYPE_3__*, %struct.request* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@REQ_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @cfq_remove_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_remove_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %4)
  store %struct.cfq_queue* %5, %struct.cfq_queue** %3, align 8
  %6 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %7 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %6, i32 0, i32 2
  %8 = load %struct.request*, %struct.request** %7, align 8
  %9 = load %struct.request*, %struct.request** %2, align 8
  %10 = icmp eq %struct.request* %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %13 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %16 = load %struct.request*, %struct.request** %2, align 8
  %17 = call %struct.request* @cfq_find_next_rq(%struct.TYPE_3__* %14, %struct.cfq_queue* %15, %struct.request* %16)
  %18 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %19 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %18, i32 0, i32 2
  store %struct.request* %17, %struct.request** %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.request*, %struct.request** %2, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 1
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %struct.request*, %struct.request** %2, align 8
  %25 = call i32 @cfq_del_rq_rb(%struct.request* %24)
  %26 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %27 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.request*, %struct.request** %2, align 8
  %33 = call %struct.TYPE_4__* @RQ_CFQG(%struct.request* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.request*, %struct.request** %2, align 8
  %36 = call i32 @rq_data_dir(%struct.request* %35)
  %37 = load %struct.request*, %struct.request** %2, align 8
  %38 = call i32 @rq_is_sync(%struct.request* %37)
  %39 = call i32 @cfq_blkiocg_update_io_remove_stats(i32* %34, i32 %36, i32 %38)
  %40 = load %struct.request*, %struct.request** %2, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @REQ_META, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %20
  %47 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %48 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %55 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %46, %20
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local %struct.request* @cfq_find_next_rq(%struct.TYPE_3__*, %struct.cfq_queue*, %struct.request*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @cfq_del_rq_rb(%struct.request*) #1

declare dso_local i32 @cfq_blkiocg_update_io_remove_stats(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @RQ_CFQG(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
