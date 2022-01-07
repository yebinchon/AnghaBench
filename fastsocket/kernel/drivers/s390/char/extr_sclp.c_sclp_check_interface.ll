; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_check_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_check_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.init_sccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@sclp_lock = common dso_local global i32 0, align 4
@sclp_check_handler = common dso_local global i32 0, align 4
@ext_int_info_hwc = common dso_local global i32 0, align 4
@SCLP_INIT_RETRY = common dso_local global i32 0, align 4
@sclp_init_req = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4
@SCLP_REQ_RUNNING = common dso_local global i64 0, align 8
@sclp_running_state_running = common dso_local global i32 0, align 4
@sclp_running_state = common dso_local global i32 0, align 4
@SCLP_RETRY_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@sclp_check_timeout = common dso_local global i32 0, align 4
@sclp_request_timer = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sclp_check_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_check_interface() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.init_sccb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %6)
  %8 = load i32, i32* @sclp_check_handler, align 4
  %9 = call i32 @register_early_external_interrupt(i32 9217, i32 %8, i32* @ext_int_info_hwc)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %13)
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %1, align 4
  br label %72

16:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %63, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SCLP_INIT_RETRY, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = call i32 @__sclp_make_init_req(i32 0, i32 0)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 2), align 8
  %24 = inttoptr i64 %23 to %struct.init_sccb*
  store %struct.init_sccb* %24, %struct.init_sccb** %2, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 1), align 8
  %26 = load %struct.init_sccb*, %struct.init_sccb** %2, align 8
  %27 = call i32 @sclp_service_call(i32 %25, %struct.init_sccb* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %66

33:                                               ; preds = %21
  %34 = load i64, i64* @SCLP_REQ_RUNNING, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 0), align 8
  %35 = load i32, i32* @sclp_running_state_running, align 4
  store i32 %35, i32* @sclp_running_state, align 4
  %36 = load i32, i32* @SCLP_RETRY_INTERVAL, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @sclp_check_timeout, align 4
  %40 = call i32 @__sclp_set_request_timer(i32 %38, i32 %39, i32 0)
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %41)
  %43 = call i32 @ctl_set_bit(i32 0, i32 9)
  %44 = call i32 (...) @sclp_sync_wait()
  %45 = call i32 @ctl_clear_bit(i32 0, i32 9)
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %46)
  %48 = call i32 @del_timer(i32* @sclp_request_timer)
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_init_req, i32 0, i32 0), align 8
  %50 = load i64, i64* @SCLP_REQ_DONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load %struct.init_sccb*, %struct.init_sccb** %2, align 8
  %54 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %66

59:                                               ; preds = %52, %33
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %17

66:                                               ; preds = %58, %32, %17
  %67 = load i32, i32* @sclp_check_handler, align 4
  %68 = call i32 @unregister_early_external_interrupt(i32 9217, i32 %67, i32* @ext_int_info_hwc)
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %1, align 4
  br label %72

72:                                               ; preds = %66, %12
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @register_early_external_interrupt(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sclp_make_init_req(i32, i32) #1

declare dso_local i32 @sclp_service_call(i32, %struct.init_sccb*) #1

declare dso_local i32 @__sclp_set_request_timer(i32, i32, i32) #1

declare dso_local i32 @ctl_set_bit(i32, i32) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i32 @ctl_clear_bit(i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @unregister_early_external_interrupt(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
