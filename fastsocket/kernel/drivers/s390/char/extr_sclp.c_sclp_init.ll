; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sclp_lock = common dso_local global i32 0, align 4
@sclp_init_state = common dso_local global i64 0, align 8
@sclp_init_state_uninitialized = common dso_local global i64 0, align 8
@sclp_init_state_initializing = common dso_local global i64 0, align 8
@sclp_req_queue = common dso_local global i32 0, align 4
@sclp_reg_list = common dso_local global i32 0, align 4
@sclp_state_change_event = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sclp_request_timer = common dso_local global i32 0, align 4
@sclp_reboot_notifier = common dso_local global i32 0, align 4
@sclp_interrupt_handler = common dso_local global i32 0, align 4
@ext_int_info_hwc = common dso_local global i32 0, align 4
@sclp_init_state_initialized = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sclp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %4)
  %6 = load i64, i64* @sclp_init_state, align 8
  %7 = load i64, i64* @sclp_init_state_uninitialized, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %45

10:                                               ; preds = %0
  %11 = load i64, i64* @sclp_init_state_initializing, align 8
  store i64 %11, i64* @sclp_init_state, align 8
  %12 = call i32 @INIT_LIST_HEAD(i32* @sclp_req_queue)
  %13 = call i32 @INIT_LIST_HEAD(i32* @sclp_reg_list)
  %14 = call i32 @list_add(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sclp_state_change_event, i32 0, i32 0), i32* @sclp_reg_list)
  %15 = call i32 @init_timer(i32* @sclp_request_timer)
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %16)
  %18 = call i32 (...) @sclp_check_interface()
  store i32 %18, i32* %3, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %43

24:                                               ; preds = %10
  %25 = call i32 @register_reboot_notifier(i32* @sclp_reboot_notifier)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %43

29:                                               ; preds = %24
  %30 = load i32, i32* @sclp_interrupt_handler, align 4
  %31 = call i32 @register_early_external_interrupt(i32 9217, i32 %30, i32* @ext_int_info_hwc)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %41

35:                                               ; preds = %29
  %36 = load i64, i64* @sclp_init_state_initialized, align 8
  store i64 %36, i64* @sclp_init_state, align 8
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %37)
  %39 = call i32 @ctl_set_bit(i32 0, i32 9)
  %40 = call i32 @sclp_init_mask(i32 1)
  store i32 0, i32* %1, align 4
  br label %49

41:                                               ; preds = %34
  %42 = call i32 @unregister_reboot_notifier(i32* @sclp_reboot_notifier)
  br label %43

43:                                               ; preds = %41, %28, %23
  %44 = load i64, i64* @sclp_init_state_uninitialized, align 8
  store i64 %44, i64* @sclp_init_state, align 8
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %46)
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %45, %35
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_check_interface(...) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @register_early_external_interrupt(i32, i32, i32*) #1

declare dso_local i32 @ctl_set_bit(i32, i32) #1

declare dso_local i32 @sclp_init_mask(i32) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
