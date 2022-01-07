; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_siena_mtd_probe_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_siena_mtd_probe_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siena_nvram_type_info = type { i64, i32* }
%struct.efx_nic = type { i32 }
%struct.efx_mtd = type { %struct.efx_mtd_partition* }
%struct.efx_mtd_partition = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@siena_nvram_types = common dso_local global %struct.siena_nvram_type_info* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@MTD_NORFLASH = common dso_local global i32 0, align 4
@MTD_CAP_NORFLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_mtd*, i32, i32)* @siena_mtd_probe_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_mtd_probe_partition(%struct.efx_nic* %0, %struct.efx_mtd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_mtd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.efx_mtd_partition*, align 8
  %11 = alloca %struct.siena_nvram_type_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store %struct.efx_mtd* %1, %struct.efx_mtd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.efx_mtd*, %struct.efx_mtd** %7, align 8
  %17 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %16, i32 0, i32 0
  %18 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %18, i64 %20
  store %struct.efx_mtd_partition* %21, %struct.efx_mtd_partition** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.siena_nvram_type_info*, %struct.siena_nvram_type_info** @siena_nvram_types, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.siena_nvram_type_info* %23)
  %25 = icmp uge i32 %22, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load %struct.siena_nvram_type_info*, %struct.siena_nvram_type_info** @siena_nvram_types, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.siena_nvram_type_info, %struct.siena_nvram_type_info* %27, i64 %29
  %31 = getelementptr inbounds %struct.siena_nvram_type_info, %struct.siena_nvram_type_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %91

37:                                               ; preds = %26
  %38 = load %struct.siena_nvram_type_info*, %struct.siena_nvram_type_info** @siena_nvram_types, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.siena_nvram_type_info, %struct.siena_nvram_type_info* %38, i64 %40
  store %struct.siena_nvram_type_info* %41, %struct.siena_nvram_type_info** %11, align 8
  %42 = load %struct.siena_nvram_type_info*, %struct.siena_nvram_type_info** %11, align 8
  %43 = getelementptr inbounds %struct.siena_nvram_type_info, %struct.siena_nvram_type_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %46 = call i64 @efx_port_num(%struct.efx_nic* %45)
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %91

51:                                               ; preds = %37
  %52 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @efx_mcdi_nvram_info(%struct.efx_nic* %52, i32 %53, i64* %12, i64* %13, i32* %14)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %5, align 4
  br label %91

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %91

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %68 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.siena_nvram_type_info*, %struct.siena_nvram_type_info** %11, align 8
  %71 = getelementptr inbounds %struct.siena_nvram_type_info, %struct.siena_nvram_type_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %74 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = load i32, i32* @MTD_NORFLASH, align 4
  %76 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %77 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @MTD_CAP_NORFLASH, align 4
  %80 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %81 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %85 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %89 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 %87, i64* %90, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %65, %62, %57, %48, %34
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(%struct.siena_nvram_type_info*) #1

declare dso_local i64 @efx_port_num(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_nvram_info(%struct.efx_nic*, i32, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
