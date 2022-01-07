; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { i32* }

@sclp_lock = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SCLP_REQ_QUEUED = common dso_local global i32 0, align 4
@sclp_req_queue = common dso_local global i32 0, align 4
@sclp_running_state = common dso_local global i64 0, align 8
@sclp_running_state_idle = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_add_request(%struct.sclp_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %6)
  %8 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %9 = call i32 @__sclp_can_add_request(%struct.sclp_req* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %12)
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load i32, i32* @SCLP_REQ_QUEUED, align 4
  %18 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %19 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %21 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %23 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(%struct.TYPE_3__* %23, i32* @sclp_req_queue)
  store i32 0, i32* %5, align 4
  %25 = load i64, i64* @sclp_running_state, align 8
  %26 = load i64, i64* @sclp_running_state_idle, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %16
  %29 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %30 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, @sclp_req_queue
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %36 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %41 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %40, i32 0, i32 0
  %42 = call i32 @list_del(%struct.TYPE_3__* %41)
  %43 = load i32, i32* @ENODATA, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %56

45:                                               ; preds = %34
  %46 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %47 = call i32 @__sclp_start_request(%struct.sclp_req* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %52 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %51, i32 0, i32 0
  %53 = call i32 @list_del(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %28, %16
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__sclp_can_add_request(%struct.sclp_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*) #1

declare dso_local i32 @__sclp_start_request(%struct.sclp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
