; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_timewait_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_timewait_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cm_work = type { i32 }
%struct.cm_timewait_info = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cm_id_private = type { i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@cm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_CM_TIMEWAIT = common dso_local global i64 0, align 8
@IB_CM_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_timewait_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_timewait_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_timewait_info*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = bitcast %struct.cm_work* %7 to %struct.cm_timewait_info*
  store %struct.cm_timewait_info* %8, %struct.cm_timewait_info** %4, align 8
  %9 = call i32 @spin_lock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cm, i32 0, i32 0))
  %10 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %11 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = call i32 @spin_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cm, i32 0, i32 0))
  %14 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %15 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %19 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.cm_id_private* @cm_acquire_id(i32 %17, i32 %21)
  store %struct.cm_id_private* %22, %struct.cm_id_private** %5, align 8
  %23 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %24 = icmp ne %struct.cm_id_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %85

28:                                               ; preds = %1
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 1
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_CM_TIMEWAIT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %40 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cm_timewait_info*, %struct.cm_timewait_info** %4, align 8
  %43 = getelementptr inbounds %struct.cm_timewait_info, %struct.cm_timewait_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38, %28
  %47 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %48 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_irq(i32* %48)
  br label %80

50:                                               ; preds = %38
  %51 = load i64, i64* @IB_CM_IDLE, align 8
  %52 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %53 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %56 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %55, i32 0, i32 3
  %57 = call i32 @atomic_inc_and_test(i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %62 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %61, i32 0, i32 0
  %63 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %64 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %63, i32 0, i32 2
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %50
  %67 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %68 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %74 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %75 = call i32 @cm_process_work(%struct.cm_id_private* %73, %struct.cm_work* %74)
  br label %79

76:                                               ; preds = %66
  %77 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %78 = call i32 @cm_deref_id(%struct.cm_id_private* %77)
  br label %79

79:                                               ; preds = %76, %72
  store i32 0, i32* %2, align 4
  br label %85

80:                                               ; preds = %46
  %81 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %82 = call i32 @cm_deref_id(%struct.cm_id_private* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %79, %25
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
