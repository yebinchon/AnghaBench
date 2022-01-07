; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_dimension_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_dimension_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@EFX_TXQ_TYPES = common dso_local global i32 0, align 4
@EFX_MAX_EVQ_SIZE = common dso_local global i32 0, align 4
@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@TX_DC_ENTRIES = common dso_local global i32 0, align 4
@RX_DC_ENTRIES = common dso_local global i32 0, align 4
@EFX_VF_BUFTBL_PER_VI = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_nic_dimension_resources(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %11, %18
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EFX_MAX_EVQ_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %19, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = load i32, i32* @EFX_BUF_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @max(i32 %34, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TX_DC_ENTRIES, align 4
  %44 = mul i32 %42, %43
  %45 = sub i32 %41, %44
  %46 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RX_DC_ENTRIES, align 4
  %53 = mul i32 %51, %52
  %54 = sub i32 %50, %53
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
