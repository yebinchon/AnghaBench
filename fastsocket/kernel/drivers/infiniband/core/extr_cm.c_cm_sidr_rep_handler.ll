; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_sidr_rep_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_sidr_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.cm_sidr_rep_msg = type { i32 }
%struct.cm_id_private = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_SIDR_REQ_SENT = common dso_local global i64 0, align 8
@IB_CM_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_sidr_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_sidr_rep_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_sidr_rep_msg*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %6 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %7 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cm_sidr_rep_msg*
  store %struct.cm_sidr_rep_msg* %12, %struct.cm_sidr_rep_msg** %4, align 8
  %13 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %4, align 8
  %14 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cm_id_private* @cm_acquire_id(i32 %15, i32 0)
  store %struct.cm_id_private* %16, %struct.cm_id_private** %5, align 8
  %17 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %18 = icmp ne %struct.cm_id_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %24 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %27 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_CM_SIDR_REQ_SENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %34 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  br label %59

36:                                               ; preds = %22
  %37 = load i64, i64* @IB_CM_IDLE, align 8
  %38 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %39 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %42 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %48 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ib_cancel_mad(i32 %46, i32 %49)
  %51 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %52 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %55 = call i32 @cm_format_sidr_rep_event(%struct.cm_work* %54)
  %56 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %57 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %58 = call i32 @cm_process_work(%struct.cm_id_private* %56, %struct.cm_work* %57)
  store i32 0, i32* %2, align 4
  br label %64

59:                                               ; preds = %32
  %60 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %61 = call i32 @cm_deref_id(%struct.cm_id_private* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %36, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32) #1

declare dso_local i32 @cm_format_sidr_rep_event(%struct.cm_work*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
