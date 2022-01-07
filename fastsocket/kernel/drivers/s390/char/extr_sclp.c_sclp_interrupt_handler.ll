; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sclp_req = type { i32, i32 (%struct.sclp_req*, i32)*, i32, i32 }

@sclp_lock = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sclp_request_timer = common dso_local global i32 0, align 4
@sclp_running_state_reset_pending = common dso_local global i32 0, align 4
@sclp_running_state = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i32 0, align 4
@sclp_running_state_idle = common dso_local global i32 0, align 4
@sclp_activation_state = common dso_local global i64 0, align 8
@sclp_activation_state_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sclp_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_interrupt_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @spin_lock(i32* @sclp_lock)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 4
  %8 = and i32 %7, -8
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 4
  %10 = and i32 %9, 3
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %1
  %14 = call i32 @del_timer(i32* @sclp_request_timer)
  %15 = load i32, i32* @sclp_running_state_reset_pending, align 4
  store i32 %15, i32* @sclp_running_state, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.sclp_req* @__sclp_find_req(i32 %16)
  store %struct.sclp_req* %17, %struct.sclp_req** %3, align 8
  %18 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %19 = icmp ne %struct.sclp_req* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %13
  %21 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %22 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %21, i32 0, i32 3
  %23 = call i32 @list_del(i32* %22)
  %24 = load i32, i32* @SCLP_REQ_DONE, align 4
  %25 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %26 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %28 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %27, i32 0, i32 1
  %29 = load i32 (%struct.sclp_req*, i32)*, i32 (%struct.sclp_req*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.sclp_req*, i32)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %20
  %32 = call i32 @spin_unlock(i32* @sclp_lock)
  %33 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %34 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %33, i32 0, i32 1
  %35 = load i32 (%struct.sclp_req*, i32)*, i32 (%struct.sclp_req*, i32)** %34, align 8
  %36 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %37 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %38 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %35(%struct.sclp_req* %36, i32 %39)
  %41 = call i32 @spin_lock(i32* @sclp_lock)
  br label %42

42:                                               ; preds = %31, %20
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* @sclp_running_state_idle, align 4
  store i32 %44, i32* @sclp_running_state, align 4
  br label %45

45:                                               ; preds = %43, %1
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, i64* @sclp_activation_state, align 8
  %50 = load i64, i64* @sclp_activation_state_active, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @__sclp_queue_read_req()
  br label %54

54:                                               ; preds = %52, %48, %45
  %55 = call i32 @spin_unlock(i32* @sclp_lock)
  %56 = call i32 (...) @sclp_process_queue()
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.sclp_req* @__sclp_find_req(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__sclp_queue_read_req(...) #1

declare dso_local i32 @sclp_process_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
