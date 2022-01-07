; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c___elv_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c___elv_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request*, i32 }
%struct.request = type { i32, i64 }

@REQ_SOFTBARRIER = common dso_local global i32 0, align 4
@REQ_HARDBARRIER = common dso_local global i32 0, align 4
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@REQ_ELVPRIV = common dso_local global i32 0, align 4
@ELEVATOR_INSERT_SORT = common dso_local global i32 0, align 4
@ELEVATOR_INSERT_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__elv_add_request(%struct.request_queue* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.request*, %struct.request** %6, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REQ_SOFTBARRIER, align 4
  %13 = load i32, i32* @REQ_HARDBARRIER, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load %struct.request*, %struct.request** %6, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REQ_TYPE_FS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.request*, %struct.request** %6, align 8
  %25 = call i32 @rq_end_sector(%struct.request* %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.request*, %struct.request** %6, align 8
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  store %struct.request* %28, %struct.request** %30, align 8
  br label %31

31:                                               ; preds = %23, %17
  br label %46

32:                                               ; preds = %4
  %33 = load %struct.request*, %struct.request** %6, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @REQ_ELVPRIV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ELEVATOR_INSERT_SORT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ELEVATOR_INSERT_BACK, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %39, %32
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %51 = call i32 @blk_plug_device(%struct.request_queue* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %54 = load %struct.request*, %struct.request** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @elv_insert(%struct.request_queue* %53, %struct.request* %54, i32 %55)
  ret void
}

declare dso_local i32 @rq_end_sector(%struct.request*) #1

declare dso_local i32 @blk_plug_device(%struct.request_queue*) #1

declare dso_local i32 @elv_insert(%struct.request_queue*, %struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
