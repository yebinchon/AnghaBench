; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_qp = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i32 }

@NES_CQP_QP_IWARP_STATE_ERROR = common dso_local global i32 0, align 4
@NES_CQP_QP_DEL_HTE = common dso_local global i32 0, align 4
@NES_TERM_DONE = common dso_local global i32 0, align 4
@NES_CQP_QP_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_qp*, i32)* @nes_terminate_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_terminate_done(%struct.nes_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.nes_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nes_vnic*, align 8
  %8 = alloca %struct.nes_device*, align 8
  %9 = alloca i32, align 4
  store %struct.nes_qp* %0, %struct.nes_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @NES_CQP_QP_IWARP_STATE_ERROR, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %12 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.nes_vnic* @to_nesvnic(i32 %14)
  store %struct.nes_vnic* %15, %struct.nes_vnic** %7, align 8
  %16 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %17 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %16, i32 0, i32 0
  %18 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  store %struct.nes_device* %18, %struct.nes_device** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %20 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %19, i32 0, i32 2
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %24 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %29 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @NES_CQP_QP_DEL_HTE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %35 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NES_TERM_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @NES_TERM_DONE, align 4
  %42 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %43 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %47 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %46, i32 0, i32 2
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %33
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %57 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %56, i32 0, i32 1
  %58 = call i32 @del_timer(i32* %57)
  br label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @NES_CQP_QP_RESET, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.nes_device*, %struct.nes_device** %8, align 8
  %65 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @nes_hw_modify_qp(%struct.nes_device* %64, %struct.nes_qp* %65, i32 %66, i32 0, i32 0)
  %68 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %69 = call i32 @nes_cm_disconn(%struct.nes_qp* %68)
  br label %70

70:                                               ; preds = %63, %33
  ret void
}

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @nes_hw_modify_qp(%struct.nes_device*, %struct.nes_qp*, i32, i32, i32) #1

declare dso_local i32 @nes_cm_disconn(%struct.nes_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
