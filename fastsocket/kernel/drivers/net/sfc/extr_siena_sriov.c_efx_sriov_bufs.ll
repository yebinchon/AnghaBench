; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64 }

@FRF_AZ_BUF_ADR_REGION = common dso_local global i32 0, align 4
@FRF_AZ_BUF_ADR_FBUF = common dso_local global i32 0, align 4
@FRF_AZ_BUF_OWNER_ID_FBUF = common dso_local global i32 0, align 4
@FR_BZ_BUF_FULL_TBL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32, i32*, i32)* @efx_sriov_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_sriov_bufs(%struct.efx_nic* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %43, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FRF_AZ_BUF_ADR_REGION, align 4
  %18 = load i32, i32* @FRF_AZ_BUF_ADR_FBUF, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 12
  br label %29

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i32 [ %27, %21 ], [ 0, %28 ]
  %31 = load i32, i32* @FRF_AZ_BUF_OWNER_ID_FBUF, align 4
  %32 = call i32 @EFX_POPULATE_QWORD_3(i32 %16, i32 %17, i32 0, i32 %18, i32 %30, i32 %31, i32 0)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %34 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %35 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FR_BZ_BUF_FULL_TBL, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %39, %40
  %42 = call i32 @efx_sram_writeq(%struct.efx_nic* %33, i64 %38, i32* %9, i32 %41)
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %11

46:                                               ; preds = %11
  ret void
}

declare dso_local i32 @EFX_POPULATE_QWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_sram_writeq(%struct.efx_nic*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
