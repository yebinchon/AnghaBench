; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_hb_checker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_hb_checker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@current = common dso_local global i32 0, align 4
@XPC_HB_CHECK_CPU = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@xpc_hb_check_interval = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@xpc_hb_check_timeout = common dso_local global i64 0, align 8
@xpc_exiting = common dso_local global i64 0, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"woke up with %d ticks rem; %d IRQs have been received\0A\00", align 1
@xpc_activate_IRQ_rcvd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"checking remote heartbeats\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"processing activate IRQs received\0A\00", align 1
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"heartbeat checker is exiting\0A\00", align 1
@xpc_hb_checker_exited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xpc_hb_checker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_hb_checker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @current, align 4
  %5 = load i32, i32* @XPC_HB_CHECK_CPU, align 4
  %6 = call i32 @cpumask_of(i32 %5)
  %7 = call i32 @set_cpus_allowed_ptr(i32 %4, i32 %6)
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i32, i32* @xpc_hb_check_interval, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %8, %12
  store i64 %13, i64* @xpc_hb_check_timeout, align 8
  %14 = call i32 (...) @xpc_start_hb_beater()
  br label %15

15:                                               ; preds = %66, %1
  %16 = load i64, i64* @xpc_exiting, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  %20 = load i32, i32* @xpc_part, align 4
  %21 = load i64, i64* @xpc_hb_check_timeout, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = sub nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %26 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  %27 = load i64, i64* @xpc_hb_check_timeout, align 8
  %28 = call i64 @time_is_before_eq_jiffies(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %19
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i32, i32* @xpc_hb_check_interval, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  store i64 %36, i64* @xpc_hb_check_timeout, align 8
  %37 = load i32, i32* @xpc_part, align 4
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @xpc_check_remote_hb()
  %40 = call i64 (...) @is_shub()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47, %44
  store i32 0, i32* %3, align 4
  %51 = load i32, i32* @xpc_part, align 4
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %54 = call i32 (...) %53()
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @xpc_activate_IRQ_wq, align 4
  %57 = load i64, i64* @xpc_hb_check_timeout, align 8
  %58 = call i64 @time_is_before_eq_jiffies(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @xpc_exiting, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %63, %60, %55
  %67 = phi i1 [ true, %60 ], [ true, %55 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @wait_event_interruptible(i32 %56, i32 %68)
  br label %15

70:                                               ; preds = %15
  %71 = call i32 (...) @xpc_stop_hb_beater()
  %72 = load i32, i32* @xpc_part, align 4
  %73 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @complete(i32* @xpc_hb_checker_exited)
  ret i32 0
}

declare dso_local i32 @set_cpus_allowed_ptr(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @xpc_start_hb_beater(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @xpc_check_remote_hb(...) #1

declare dso_local i64 @is_shub(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @xpc_stop_hb_beater(...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
