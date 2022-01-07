; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_falcon_mtd_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_falcon_mtd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.efx_mtd* }
%struct.efx_mtd = type { %struct.efx_nic*, %struct.efx_spi_device* }
%struct.efx_nic = type { %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }
%struct.efx_spi_device = type { i32 }
%struct.efx_mtd_partition = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @falcon_mtd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_mtd_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.efx_mtd_partition*, align 8
  %13 = alloca %struct.efx_mtd*, align 8
  %14 = alloca %struct.efx_spi_device*, align 8
  %15 = alloca %struct.efx_nic*, align 8
  %16 = alloca %struct.falcon_nic_data*, align 8
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = call %struct.efx_mtd_partition* @to_efx_mtd_partition(%struct.mtd_info* %18)
  store %struct.efx_mtd_partition* %19, %struct.efx_mtd_partition** %12, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load %struct.efx_mtd*, %struct.efx_mtd** %21, align 8
  store %struct.efx_mtd* %22, %struct.efx_mtd** %13, align 8
  %23 = load %struct.efx_mtd*, %struct.efx_mtd** %13, align 8
  %24 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %23, i32 0, i32 1
  %25 = load %struct.efx_spi_device*, %struct.efx_spi_device** %24, align 8
  store %struct.efx_spi_device* %25, %struct.efx_spi_device** %14, align 8
  %26 = load %struct.efx_mtd*, %struct.efx_mtd** %13, align 8
  %27 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %26, i32 0, i32 0
  %28 = load %struct.efx_nic*, %struct.efx_nic** %27, align 8
  store %struct.efx_nic* %28, %struct.efx_nic** %15, align 8
  %29 = load %struct.efx_nic*, %struct.efx_nic** %15, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 0
  %31 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %30, align 8
  store %struct.falcon_nic_data* %31, %struct.falcon_nic_data** %16, align 8
  %32 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %16, align 8
  %33 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock_interruptible(i32* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %5
  %40 = load %struct.efx_nic*, %struct.efx_nic** %15, align 8
  %41 = load %struct.efx_spi_device*, %struct.efx_spi_device** %14, align 8
  %42 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %12, align 8
  %43 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @falcon_spi_write(%struct.efx_nic* %40, %struct.efx_spi_device* %41, i64 %46, i64 %47, i64* %48, i32* %49)
  store i32 %50, i32* %17, align 4
  %51 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %16, align 8
  %52 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %39, %37
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.efx_mtd_partition* @to_efx_mtd_partition(%struct.mtd_info*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @falcon_spi_write(%struct.efx_nic*, %struct.efx_spi_device*, i64, i64, i64*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
