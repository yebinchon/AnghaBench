; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_start_aob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_start_aob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aob = type { i32 }
%struct.eadm_private = type { i32 }
%struct.subchannel = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EADM_TIMEOUT = common dso_local global i32 0, align 4
@EADM_NOT_OPER = common dso_local global i32 0, align 4
@SCH_TODO_EVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aob*)* @eadm_start_aob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eadm_start_aob(%struct.aob* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aob*, align 8
  %4 = alloca %struct.eadm_private*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.aob* %0, %struct.aob** %3, align 8
  %8 = call %struct.subchannel* (...) @eadm_get_idle_sch()
  store %struct.subchannel* %8, %struct.subchannel** %5, align 8
  %9 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %10 = icmp ne %struct.subchannel* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %21 = load i32, i32* @EADM_TIMEOUT, align 4
  %22 = call i32 @eadm_subchannel_set_timeout(%struct.subchannel* %20, i32 %21)
  %23 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %24 = load %struct.aob*, %struct.aob** %3, align 8
  %25 = call i32 @eadm_subchannel_start(%struct.subchannel* %23, %struct.aob* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  br label %40

29:                                               ; preds = %14
  %30 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %31 = call i32 @eadm_subchannel_set_timeout(%struct.subchannel* %30, i32 0)
  %32 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %33 = call %struct.eadm_private* @get_eadm_private(%struct.subchannel* %32)
  store %struct.eadm_private* %33, %struct.eadm_private** %4, align 8
  %34 = load i32, i32* @EADM_NOT_OPER, align 4
  %35 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %36 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %38 = load i32, i32* @SCH_TODO_EVAL, align 4
  %39 = call i32 @css_sched_sch_todo(%struct.subchannel* %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %28
  %41 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %42 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.subchannel* @eadm_get_idle_sch(...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @eadm_subchannel_set_timeout(%struct.subchannel*, i32) #1

declare dso_local i32 @eadm_subchannel_start(%struct.subchannel*, %struct.aob*) #1

declare dso_local %struct.eadm_private* @get_eadm_private(%struct.subchannel*) #1

declare dso_local i32 @css_sched_sch_todo(%struct.subchannel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
