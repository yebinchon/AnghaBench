; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_set_ib_6120_lstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_set_ib_6120_lstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLOGIC_IB_IBCC_LINKINITCMD_DISABLE = common dso_local global i32 0, align 4
@QIBL_IB_LINK_DISABLED = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKCMD_DOWN = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKCMD_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKINITCMD_SHIFT = common dso_local global i32 0, align 4
@kr_ibcctrl = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32, i32)* @qib_set_ib_6120_lstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_set_ib_6120_lstate(%struct.qib_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_devdata*, align 8
  %9 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 2
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  store %struct.qib_devdata* %12, %struct.qib_devdata** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_DISABLE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @QIBL_IB_LINK_DISABLED, align 4
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %26, i32 0, i32 0
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  br label %53

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @QLOGIC_IB_IBCC_LINKCMD_DOWN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33, %30
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* @QIBL_IB_LINK_DISABLED, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %37, %33
  br label %53

53:                                               ; preds = %52, %16
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @QLOGIC_IB_IBCC_LINKCMD_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %62 = load i32, i32* @kr_ibcctrl, align 4
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @qib_write_kreg(%struct.qib_devdata* %61, i32 %62, i32 %69)
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %72 = load i32, i32* @kr_scratch, align 4
  %73 = call i32 @qib_write_kreg(%struct.qib_devdata* %71, i32 %72, i32 0)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
