; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_copyout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i32 }

@FR_CZ_MC_TREG_SMEM = common dso_local global i32 0, align 4
@MCDI_STATE_QUIESCENT = common dso_local global i64 0, align 8
@MC_SMEM_PDU_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32*, i64)* @efx_mcdi_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_copyout(%struct.efx_nic* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.efx_mcdi_iface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %10)
  store %struct.efx_mcdi_iface* %11, %struct.efx_mcdi_iface** %7, align 8
  %12 = load i32, i32* @FR_CZ_MC_TREG_SMEM, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %14 = call i32 @MCDI_PDU(%struct.efx_nic* %13)
  %15 = add i32 %12, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %7, align 8
  %17 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %16, i32 0, i32 0
  %18 = call i64 @atomic_read(i32* %17)
  %19 = load i64, i64* @MCDI_STATE_QUIESCENT, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, 3
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MC_SMEM_PDU_LEN, align 8
  %29 = icmp uge i64 %27, %28
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i1 [ true, %3 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %50, %30
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %6, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 4
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %42, %43
  %45 = call i32 @_efx_readd(%struct.efx_nic* %40, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %9, align 4
  br label %34

53:                                               ; preds = %34
  ret void
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @MCDI_PDU(%struct.efx_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @_efx_readd(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
