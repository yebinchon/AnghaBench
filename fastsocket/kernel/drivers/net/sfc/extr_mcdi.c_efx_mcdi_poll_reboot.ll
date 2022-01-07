; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_poll_reboot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_poll_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@FR_CZ_MC_TREG_SMEM = common dso_local global i32 0, align 4
@EFX_REV_SIENA_A0 = common dso_local global i64 0, align 8
@EFX_DWORD_0 = common dso_local global i32 0, align 4
@MC_STATUS_DWORD_ASSERT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mcdi_poll_reboot(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load i32, i32* @FR_CZ_MC_TREG_SMEM, align 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = call i32 @MCDI_STATUS(%struct.efx_nic* %8)
  %10 = add i32 %7, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = call i64 @efx_nic_rev(%struct.efx_nic* %11)
  %13 = load i64, i64* @EFX_REV_SIENA_A0, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @efx_readd(%struct.efx_nic* %17, i32* %5, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EFX_DWORD_0, align 4
  %22 = call i64 @EFX_DWORD_FIELD(i32 %20, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %44

26:                                               ; preds = %16
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = call i32 @memset(i32* %28, i32 0, i32 4)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @EFX_ZERO_DWORD(i32 %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @efx_writed(%struct.efx_nic* %32, i32* %5, i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @MC_STATUS_DWORD_ASSERT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @EINTR, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %26
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %38, %25, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @MCDI_STATUS(%struct.efx_nic*) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @efx_readd(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_DWORD_FIELD(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @EFX_ZERO_DWORD(i32) #1

declare dso_local i32 @efx_writed(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
