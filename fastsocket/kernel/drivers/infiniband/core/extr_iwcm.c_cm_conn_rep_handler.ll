; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_iwcm.c_cm_conn_rep_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_iwcm.c_cm_conn_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i64, i32, %struct.TYPE_6__, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, %struct.TYPE_5__*, i32, i32 }
%struct.iw_cm_event = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.iw_cm_event.0 = type { i64, i32, i64, i32, i32 }

@IWCM_F_CONNECT_WAIT = common dso_local global i32 0, align 4
@IW_CM_STATE_CONN_SENT = common dso_local global i64 0, align 8
@IW_CM_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@IW_CM_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, %struct.iw_cm_event.0*)* @cm_conn_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_conn_rep_handler(%struct.iwcm_id_private* %0, %struct.iw_cm_event.0* %1) #0 {
  %3 = alloca %struct.iwcm_id_private*, align 8
  %4 = alloca %struct.iw_cm_event.0*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  store %struct.iw_cm_event.0* %1, %struct.iw_cm_event.0** %4, align 8
  %7 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %8 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %7, i32 0, i32 3
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @IWCM_F_CONNECT_WAIT, align 4
  %12 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %13 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %12, i32 0, i32 5
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %16 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IW_CM_STATE_CONN_SENT, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %23 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %28 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %31 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %34 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %37 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i64, i64* @IW_CM_STATE_ESTABLISHED, align 8
  %40 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %41 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %60

42:                                               ; preds = %2
  %43 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %44 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (i32*)*, i32 (i32*)** %49, align 8
  %51 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %52 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 %50(i32* %53)
  %55 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %56 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load i64, i64* @IW_CM_STATE_IDLE, align 8
  %58 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %59 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %42, %26
  %61 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %62 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %61, i32 0, i32 3
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %66 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)** %67, align 8
  %69 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %70 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %69, i32 0, i32 2
  %71 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %72 = bitcast %struct.iw_cm_event.0* %71 to %struct.iw_cm_event*
  %73 = call i32 %68(%struct.TYPE_6__* %70, %struct.iw_cm_event* %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %75 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %60
  %79 = load %struct.iw_cm_event.0*, %struct.iw_cm_event.0** %4, align 8
  %80 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @kfree(i32 %81)
  br label %83

83:                                               ; preds = %78, %60
  %84 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %85 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %84, i32 0, i32 1
  %86 = call i32 @wake_up_all(i32* %85)
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
