; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_process_send_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_process_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_buf = type { %struct.cm_id_private** }
%struct.cm_id_private = type { i32, %struct.TYPE_5__, %struct.ib_mad_send_buf* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, %struct.ib_cm_event*)* }
%struct.ib_cm_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@IB_CM_REQ_ERROR = common dso_local global i32 0, align 4
@IB_CM_REP_ERROR = common dso_local global i32 0, align 4
@IB_CM_DREQ_ERROR = common dso_local global i32 0, align 4
@IB_CM_IDLE = common dso_local global i32 0, align 4
@IB_CM_SIDR_REQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_send_buf*, i32)* @cm_process_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_process_send_error(%struct.ib_mad_send_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mad_send_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_event, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_mad_send_buf* %0, %struct.ib_mad_send_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(%struct.ib_cm_event* %6, i32 0, i32 8)
  %10 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %11 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %10, i32 0, i32 0
  %12 = load %struct.cm_id_private**, %struct.cm_id_private*** %11, align 8
  %13 = getelementptr inbounds %struct.cm_id_private*, %struct.cm_id_private** %12, i64 0
  %14 = load %struct.cm_id_private*, %struct.cm_id_private** %13, align 8
  store %struct.cm_id_private* %14, %struct.cm_id_private** %5, align 8
  %15 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %16 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %19 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %18, i32 0, i32 0
  %20 = load %struct.cm_id_private**, %struct.cm_id_private*** %19, align 8
  %21 = getelementptr inbounds %struct.cm_id_private*, %struct.cm_id_private** %20, i64 1
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %21, align 8
  %23 = ptrtoint %struct.cm_id_private* %22 to i64
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %26 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %27 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %26, i32 0, i32 2
  %28 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %27, align 8
  %29 = icmp ne %struct.ib_mad_send_buf* %25, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %2
  br label %86

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %62 [
    i32 129, label %40
    i32 131, label %40
    i32 130, label %45
    i32 132, label %45
    i32 133, label %50
    i32 128, label %55
  ]

40:                                               ; preds = %38, %38
  %41 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %42 = call i32 @cm_reset_to_idle(%struct.cm_id_private* %41)
  %43 = load i32, i32* @IB_CM_REQ_ERROR, align 4
  %44 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  br label %63

45:                                               ; preds = %38, %38
  %46 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %47 = call i32 @cm_reset_to_idle(%struct.cm_id_private* %46)
  %48 = load i32, i32* @IB_CM_REP_ERROR, align 4
  %49 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  br label %63

50:                                               ; preds = %38
  %51 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %52 = call i32 @cm_enter_timewait(%struct.cm_id_private* %51)
  %53 = load i32, i32* @IB_CM_DREQ_ERROR, align 4
  %54 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  br label %63

55:                                               ; preds = %38
  %56 = load i32, i32* @IB_CM_IDLE, align 4
  %57 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %58 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @IB_CM_SIDR_REQ_ERROR, align 4
  %61 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  br label %63

62:                                               ; preds = %38
  br label %86

63:                                               ; preds = %55, %50, %45, %40
  %64 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %65 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load i32, i32* %4, align 4
  %68 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %71 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_5__*, %struct.ib_cm_event*)*, i32 (%struct.TYPE_5__*, %struct.ib_cm_event*)** %72, align 8
  %74 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %75 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %74, i32 0, i32 1
  %76 = call i32 %73(%struct.TYPE_5__* %75, %struct.ib_cm_event* %6)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %78 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %63
  %82 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %83 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %82, i32 0, i32 1
  %84 = call i32 @ib_destroy_cm_id(%struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %81, %63
  br label %92

86:                                               ; preds = %62, %37
  %87 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %88 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_irq(i32* %88)
  %90 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %3, align 8
  %91 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %90)
  br label %92

92:                                               ; preds = %86, %85
  ret void
}

declare dso_local i32 @memset(%struct.ib_cm_event*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cm_reset_to_idle(%struct.cm_id_private*) #1

declare dso_local i32 @cm_enter_timewait(%struct.cm_id_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
