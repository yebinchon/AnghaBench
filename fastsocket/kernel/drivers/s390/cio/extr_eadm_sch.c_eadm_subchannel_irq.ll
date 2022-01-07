; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.eadm_scsw }
%struct.eadm_scsw = type { i32, i32, i32, i64 }
%struct.eadm_private = type { i64 }
%struct.irb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.aob = type { i32 }

@S390_lowcore = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EADM_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"irq unsol\00", align 1
@EADM_NOT_OPER = common dso_local global i64 0, align 8
@SCH_TODO_EVAL = common dso_local global i32 0, align 4
@EADM_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @eadm_subchannel_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eadm_subchannel_irq(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.eadm_private*, align 8
  %4 = alloca %struct.eadm_scsw*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %8 = call %struct.eadm_private* @get_eadm_private(%struct.subchannel* %7)
  store %struct.eadm_private* %8, %struct.eadm_private** %3, align 8
  %9 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.eadm_scsw* %12, %struct.eadm_scsw** %4, align 8
  store %struct.irb* bitcast (%struct.TYPE_12__* @S390_lowcore to %struct.irb*), %struct.irb** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = call i32 @EADM_LOG(i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.irb*, %struct.irb** %5, align 8
  %15 = call i32 @EADM_LOG_HEX(i32 6, %struct.irb* %14, i32 8)
  %16 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %17 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %20 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %26 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.irb*, %struct.irb** %5, align 8
  %31 = getelementptr inbounds %struct.irb, %struct.irb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %29, %24, %1
  %41 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %42 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %52 = call i32 @eadm_subchannel_set_timeout(%struct.subchannel* %51, i32 0)
  %53 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %54 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EADM_BUSY, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = call i32 @EADM_LOG(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.irb*, %struct.irb** %5, align 8
  %61 = call i32 @EADM_LOG_HEX(i32 1, %struct.irb* %60, i32 8)
  %62 = load i64, i64* @EADM_NOT_OPER, align 8
  %63 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %64 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %66 = load i32, i32* @SCH_TODO_EVAL, align 4
  %67 = call i32 @css_sched_sch_todo(%struct.subchannel* %65, i32 %66)
  br label %78

68:                                               ; preds = %50
  %69 = load %struct.eadm_scsw*, %struct.eadm_scsw** %4, align 8
  %70 = getelementptr inbounds %struct.eadm_scsw, %struct.eadm_scsw* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.aob*
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @scm_irq_handler(%struct.aob* %72, i32 %73)
  %75 = load i64, i64* @EADM_IDLE, align 8
  %76 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %77 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %58
  ret void
}

declare dso_local %struct.eadm_private* @get_eadm_private(%struct.subchannel*) #1

declare dso_local i32 @EADM_LOG(i32, i8*) #1

declare dso_local i32 @EADM_LOG_HEX(i32, %struct.irb*, i32) #1

declare dso_local i32 @eadm_subchannel_set_timeout(%struct.subchannel*, i32) #1

declare dso_local i32 @css_sched_sch_todo(%struct.subchannel*, i32) #1

declare dso_local i32 @scm_irq_handler(%struct.aob*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
