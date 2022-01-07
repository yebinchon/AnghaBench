; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_smp_ata_check_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_smp_ata_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { %struct.domain_device* }
%struct.domain_device = type { %struct.TYPE_2__, %struct.domain_device* }
%struct.TYPE_2__ = type { %struct.ex_phy* }
%struct.ex_phy = type { i32, i32 }
%struct.sas_phy = type { i64 }

@ECOMM = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*)* @smp_ata_check_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_ata_check_ready(%struct.ata_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.sas_phy*, align 8
  %9 = alloca %struct.ex_phy*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 0
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %5, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  store %struct.domain_device* %15, %struct.domain_device** %6, align 8
  %16 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 1
  %18 = load %struct.domain_device*, %struct.domain_device** %17, align 8
  store %struct.domain_device* %18, %struct.domain_device** %7, align 8
  %19 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %20 = call %struct.sas_phy* @sas_get_local_phy(%struct.domain_device* %19)
  store %struct.sas_phy* %20, %struct.sas_phy** %8, align 8
  %21 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %22 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ex_phy*, %struct.ex_phy** %23, align 8
  %25 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %26 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %24, i64 %27
  store %struct.ex_phy* %28, %struct.ex_phy** %9, align 8
  %29 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %30 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %31 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sas_ex_phy_discover(%struct.domain_device* %29, i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %35 = call i32 @sas_put_local_phy(%struct.sas_phy* %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ECOMM, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %65

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %65

47:                                               ; preds = %42
  %48 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %49 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %62 [
    i32 128, label %51
    i32 129, label %52
  ]

51:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %65

52:                                               ; preds = %47
  %53 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %54 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %59 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %60 = call i32 @sas_ata_clear_pending(%struct.domain_device* %58, %struct.ex_phy* %59)
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %47, %61
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %57, %51, %46, %40
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.sas_phy* @sas_get_local_phy(%struct.domain_device*) #1

declare dso_local i32 @sas_ex_phy_discover(%struct.domain_device*, i64) #1

declare dso_local i32 @sas_put_local_phy(%struct.sas_phy*) #1

declare dso_local i32 @sas_ata_clear_pending(%struct.domain_device*, %struct.ex_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
