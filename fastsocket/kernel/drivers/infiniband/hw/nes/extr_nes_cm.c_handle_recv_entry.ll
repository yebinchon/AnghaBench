; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_recv_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_handle_recv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { %struct.nes_timer_entry*, %struct.iw_cm_id*, i32 }
%struct.nes_timer_entry = type { i64 }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)* }
%struct.nes_qp = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"QP%u: cm_id = %p, refcount = %d: HIT A NES_TIMER_TYPE_CLOSE with something to do!!!\0A\00", align 1
@NES_AEQE_TCP_STATE_CLOSED = common dso_local global i32 0, align 4
@NES_AEQE_AEID_RESET_SENT = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"QP%u: cm_id = %p, refcount = %d: HIT A NES_TIMER_TYPE_CLOSE with nothing to do!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*, i64)* @handle_recv_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_recv_entry(%struct.nes_cm_node* %0, i64 %1) #0 {
  %3 = alloca %struct.nes_cm_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nes_timer_entry*, align 8
  %6 = alloca %struct.iw_cm_id*, align 8
  %7 = alloca %struct.nes_qp*, align 8
  %8 = alloca i64, align 8
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %10 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %9, i32 0, i32 0
  %11 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %10, align 8
  store %struct.nes_timer_entry* %11, %struct.nes_timer_entry** %5, align 8
  %12 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %13 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %12, i32 0, i32 1
  %14 = load %struct.iw_cm_id*, %struct.iw_cm_id** %13, align 8
  store %struct.iw_cm_id* %14, %struct.iw_cm_id** %6, align 8
  %15 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %5, align 8
  %16 = icmp ne %struct.nes_timer_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %102

18:                                               ; preds = %2
  %19 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %5, align 8
  %20 = getelementptr inbounds %struct.nes_timer_entry, %struct.nes_timer_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.nes_qp*
  store %struct.nes_qp* %22, %struct.nes_qp** %7, align 8
  %23 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %24 = icmp ne %struct.nes_qp* %23, null
  br i1 %24, label %25, label %76

25:                                               ; preds = %18
  %26 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %27 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %26, i32 0, i32 2
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %31 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %25
  %35 = load i32, i32* @NES_DBG_CM, align 4
  %36 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %37 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %41 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %42 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %41, i32 0, i32 0
  %43 = call i32 @atomic_read(i32* %42)
  %44 = call i32 @nes_debug(i32 %35, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %39, %struct.iw_cm_id* %40, i32 %43)
  %45 = load i32, i32* @NES_AEQE_TCP_STATE_CLOSED, align 4
  %46 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %47 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @NES_AEQE_AEID_RESET_SENT, align 4
  %49 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %50 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @IB_QPS_ERR, align 4
  %52 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %53 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %55 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %54, i32 0, i32 2
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %59 = call i32 @nes_cm_disconn(%struct.nes_qp* %58)
  br label %75

60:                                               ; preds = %25
  %61 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %62 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %61, i32 0, i32 2
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* @NES_DBG_CM, align 4
  %66 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %67 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %71 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %72 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %71, i32 0, i32 0
  %73 = call i32 @atomic_read(i32* %72)
  %74 = call i32 @nes_debug(i32 %65, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %69, %struct.iw_cm_id* %70, i32 %73)
  br label %75

75:                                               ; preds = %60, %34
  br label %86

76:                                               ; preds = %18
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %81 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %84 = call i32 @rem_ref_cm_node(i32 %82, %struct.nes_cm_node* %83)
  br label %85

85:                                               ; preds = %79, %76
  br label %86

86:                                               ; preds = %85, %75
  %87 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %88 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %87, i32 0, i32 1
  %89 = load %struct.iw_cm_id*, %struct.iw_cm_id** %88, align 8
  %90 = icmp ne %struct.iw_cm_id* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %93 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %92, i32 0, i32 0
  %94 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %93, align 8
  %95 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %96 = call i32 %94(%struct.iw_cm_id* %95)
  br label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.nes_timer_entry*, %struct.nes_timer_entry** %5, align 8
  %99 = call i32 @kfree(%struct.nes_timer_entry* %98)
  %100 = load %struct.nes_cm_node*, %struct.nes_cm_node** %3, align 8
  %101 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %100, i32 0, i32 0
  store %struct.nes_timer_entry* null, %struct.nes_timer_entry** %101, align 8
  br label %102

102:                                              ; preds = %97, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, %struct.iw_cm_id*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_cm_disconn(%struct.nes_qp*) #1

declare dso_local i32 @rem_ref_cm_node(i32, %struct.nes_cm_node*) #1

declare dso_local i32 @kfree(%struct.nes_timer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
