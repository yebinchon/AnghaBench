; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_config_page_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_config_page_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, i32, i64 }

@EFX_PAGE_IP_ALIGN = common dso_local global i64 0, align 8
@EFX_RX_BUF_ALIGNMENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFX_RX_PREFERRED_BATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_rx_config_page_split(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EFX_PAGE_IP_ALIGN, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @EFX_RX_BUF_ALIGNMENT, align 4
  %9 = call i32 @ALIGN(i64 %7, i32 %8)
  %10 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %20, %24
  br label %26

26:                                               ; preds = %17, %16
  %27 = phi i64 [ 1, %16 ], [ %25, %17 ]
  %28 = trunc i64 %27 to i32
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %31, %34
  %36 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @EFX_RX_PREFERRED_BATCH, align 4
  %43 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DIV_ROUND_UP(i32 %42, i32 %45)
  %47 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %48 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  ret void
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
