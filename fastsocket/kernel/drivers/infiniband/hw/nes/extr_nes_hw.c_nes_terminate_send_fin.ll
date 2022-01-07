; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_send_fin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_terminate_send_fin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_qp = type { i32, i64, i8*, i8* }
%struct.nes_hw_aeqe = type { i32* }

@NES_AEQE_MISC_IDX = common dso_local global i64 0, align 8
@NES_AEQE_TCP_STATE_MASK = common dso_local global i32 0, align 4
@NES_AEQE_TCP_STATE_SHIFT = common dso_local global i32 0, align 4
@NES_AEQE_IWARP_STATE_MASK = common dso_local global i32 0, align 4
@NES_AEQE_IWARP_STATE_SHIFT = common dso_local global i32 0, align 4
@NES_CQP_QP_IWARP_STATE_TERMINATE = common dso_local global i32 0, align 4
@NES_CQP_QP_TERM_DONT_SEND_TERM_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_qp*, %struct.nes_hw_aeqe*)* @nes_terminate_send_fin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_terminate_send_fin(%struct.nes_device* %0, %struct.nes_qp* %1, %struct.nes_hw_aeqe* %2) #0 {
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca %struct.nes_qp*, align 8
  %6 = alloca %struct.nes_hw_aeqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.nes_device* %0, %struct.nes_device** %4, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %5, align 8
  store %struct.nes_hw_aeqe* %2, %struct.nes_hw_aeqe** %6, align 8
  %12 = load %struct.nes_hw_aeqe*, %struct.nes_hw_aeqe** %6, align 8
  %13 = getelementptr inbounds %struct.nes_hw_aeqe, %struct.nes_hw_aeqe* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @NES_AEQE_MISC_IDX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NES_AEQE_TCP_STATE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @NES_AEQE_TCP_STATE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NES_AEQE_IWARP_STATE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @NES_AEQE_IWARP_STATE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %36 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %35, i32 0, i32 0
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %41 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %44 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %47 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %49 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %48, i32 0, i32 0
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %53 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %54 = load i32, i32* @NES_CQP_QP_IWARP_STATE_TERMINATE, align 4
  %55 = load i32, i32* @NES_CQP_QP_TERM_DONT_SEND_TERM_MSG, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @nes_hw_modify_qp(%struct.nes_device* %52, %struct.nes_qp* %53, i32 %56, i32 0, i32 0)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_hw_modify_qp(%struct.nes_device*, %struct.nes_qp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
