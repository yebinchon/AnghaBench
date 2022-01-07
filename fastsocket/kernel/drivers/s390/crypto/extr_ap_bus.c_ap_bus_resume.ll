; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_bus_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_bus_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.device = type { i32 }
%struct.ap_device = type { i32, i32 }

@ap_suspend_flag = common dso_local global i64 0, align 8
@ap_interrupt_indicator = common dso_local global i32* null, align 8
@user_set_domain = common dso_local global i32 0, align 4
@ap_domain_index = common dso_local global i32 0, align 4
@ap_config_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ap_config_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ap_config_time = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"kapwork\00", align 1
@ap_work_queue = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ap_tasklet = common dso_local global i32 0, align 4
@ap_thread_flag = common dso_local global i64 0, align 8
@ap_config_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ap_bus_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_bus_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ap_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ap_device* @to_ap_dev(%struct.device* %6)
  store %struct.ap_device* %7, %struct.ap_device** %5, align 8
  %8 = load i64, i64* @ap_suspend_flag, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  store i64 0, i64* @ap_suspend_flag, align 8
  %11 = call i32 (...) @ap_interrupts_available()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32* null, i32** @ap_interrupt_indicator, align 8
  br label %14

14:                                               ; preds = %13, %10
  %15 = call i32 (...) @ap_query_configuration()
  %16 = load i32, i32* @user_set_domain, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  store i32 -1, i32* @ap_domain_index, align 4
  %19 = call i32 (...) @ap_select_domain()
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i32 @init_timer(%struct.TYPE_4__* @ap_config_timer)
  %22 = load i32, i32* @ap_config_timeout, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ap_config_timer, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ap_config_timer, i32 0, i32 1), align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i32, i32* @ap_config_time, align 4
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ap_config_timer, i32 0, i32 0), align 8
  %29 = call i32 @add_timer(%struct.TYPE_4__* @ap_config_timer)
  %30 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* @ap_work_queue, align 4
  %31 = load i32, i32* @ap_work_queue, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %76

36:                                               ; preds = %20
  %37 = call i32 @tasklet_enable(i32* @ap_tasklet)
  %38 = call i32 (...) @ap_using_interrupts()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (...) @ap_schedule_poll_timer()
  br label %44

42:                                               ; preds = %36
  %43 = call i32 @tasklet_schedule(i32* @ap_tasklet)
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i64, i64* @ap_thread_flag, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @ap_poll_thread_start()
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %52 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @AP_QID_QUEUE(i32 %53)
  %55 = load i32, i32* @ap_domain_index, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %59 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %62 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AP_QID_DEVICE(i32 %63)
  %65 = load i32, i32* @ap_domain_index, align 4
  %66 = call i32 @AP_MKQID(i32 %64, i32 %65)
  %67 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %68 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %70 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_bh(i32* %70)
  br label %72

72:                                               ; preds = %57, %50
  %73 = load i32, i32* @ap_work_queue, align 4
  %74 = call i32 @queue_work(i32 %73, i32* @ap_config_work)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %33
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ap_device* @to_ap_dev(%struct.device*) #1

declare dso_local i32 @ap_interrupts_available(...) #1

declare dso_local i32 @ap_query_configuration(...) #1

declare dso_local i32 @ap_select_domain(...) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @ap_using_interrupts(...) #1

declare dso_local i32 @ap_schedule_poll_timer(...) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ap_poll_thread_start(...) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @AP_MKQID(i32, i32) #1

declare dso_local i32 @AP_QID_DEVICE(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
