; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_falcon_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_falcon_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.efx_mtd* }
%struct.efx_mtd = type { %struct.efx_nic* }
%struct.efx_nic = type { %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }
%struct.efx_mtd_partition = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64)* @falcon_mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_mtd_erase(%struct.mtd_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.efx_mtd_partition*, align 8
  %9 = alloca %struct.efx_mtd*, align 8
  %10 = alloca %struct.efx_nic*, align 8
  %11 = alloca %struct.falcon_nic_data*, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call %struct.efx_mtd_partition* @to_efx_mtd_partition(%struct.mtd_info* %13)
  store %struct.efx_mtd_partition* %14, %struct.efx_mtd_partition** %8, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load %struct.efx_mtd*, %struct.efx_mtd** %16, align 8
  store %struct.efx_mtd* %17, %struct.efx_mtd** %9, align 8
  %18 = load %struct.efx_mtd*, %struct.efx_mtd** %9, align 8
  %19 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %18, i32 0, i32 0
  %20 = load %struct.efx_nic*, %struct.efx_nic** %19, align 8
  store %struct.efx_nic* %20, %struct.efx_nic** %10, align 8
  %21 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %22, align 8
  store %struct.falcon_nic_data* %23, %struct.falcon_nic_data** %11, align 8
  %24 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %11, align 8
  %25 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock_interruptible(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %8, align 8
  %33 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %8, align 8
  %34 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @efx_spi_erase(%struct.efx_mtd_partition* %32, i64 %37, i64 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %11, align 8
  %41 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %31, %29
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.efx_mtd_partition* @to_efx_mtd_partition(%struct.mtd_info*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @efx_spi_erase(%struct.efx_mtd_partition*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
