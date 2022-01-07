; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_siena_mtd_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_siena_mtd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.efx_mtd* }
%struct.efx_mtd = type { %struct.efx_nic* }
%struct.efx_nic = type { i32 }
%struct.efx_mtd_partition = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @siena_mtd_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_mtd_sync(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.efx_mtd_partition*, align 8
  %4 = alloca %struct.efx_mtd*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = call %struct.efx_mtd_partition* @to_efx_mtd_partition(%struct.mtd_info* %7)
  store %struct.efx_mtd_partition* %8, %struct.efx_mtd_partition** %3, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.efx_mtd*, %struct.efx_mtd** %10, align 8
  store %struct.efx_mtd* %11, %struct.efx_mtd** %4, align 8
  %12 = load %struct.efx_mtd*, %struct.efx_mtd** %4, align 8
  %13 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %12, i32 0, i32 0
  %14 = load %struct.efx_nic*, %struct.efx_nic** %13, align 8
  store %struct.efx_nic* %14, %struct.efx_nic** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %3, align 8
  %16 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %3, align 8
  %22 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %25 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %3, align 8
  %26 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @efx_mcdi_nvram_update_finish(%struct.efx_nic* %24, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %20, %1
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.efx_mtd_partition* @to_efx_mtd_partition(%struct.mtd_info*) #1

declare dso_local i32 @efx_mcdi_nvram_update_finish(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
