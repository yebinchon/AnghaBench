; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_hard_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_hard_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.domain_device* }
%struct.domain_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sas_phy = type { i32 }
%struct.sas_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.domain_device*)* }

@ENODEV = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to reset ata device?\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"reset failed (errno=%d)\0A\00", align 1
@ATA_DEV_ATA = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @sas_ata_hard_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ata_hard_reset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sas_phy*, align 8
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca i32 (%struct.ata_link*)*, align 8
  %13 = alloca %struct.domain_device*, align 8
  %14 = alloca %struct.sas_internal*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %16 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %15, i32 0, i32 0
  %17 = load %struct.ata_port*, %struct.ata_port** %16, align 8
  store %struct.ata_port* %17, %struct.ata_port** %11, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 1
  %20 = load %struct.domain_device*, %struct.domain_device** %19, align 8
  store %struct.domain_device* %20, %struct.domain_device** %13, align 8
  %21 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %22 = call %struct.sas_internal* @dev_to_sas_internal(%struct.domain_device* %21)
  store %struct.sas_internal* %22, %struct.sas_internal** %14, align 8
  %23 = load %struct.sas_internal*, %struct.sas_internal** %14, align 8
  %24 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %26, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %29 = call i32 %27(%struct.domain_device* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %87

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @KERN_DEBUG, align 4
  %42 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %43 = call i32 (i32, %struct.domain_device*, i8*, ...) @sas_ata_printk(i32 %41, %struct.domain_device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %46 = call %struct.sas_phy* @sas_get_local_phy(%struct.domain_device* %45)
  store %struct.sas_phy* %46, %struct.sas_phy** %10, align 8
  %47 = load %struct.sas_phy*, %struct.sas_phy** %10, align 8
  %48 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 (%struct.ata_link*)* @local_ata_check_ready, i32 (%struct.ata_link*)** %12, align 8
  br label %52

51:                                               ; preds = %44
  store i32 (%struct.ata_link*)* @smp_ata_check_ready, i32 (%struct.ata_link*)** %12, align 8
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.sas_phy*, %struct.sas_phy** %10, align 8
  %54 = call i32 @sas_put_local_phy(%struct.sas_phy* %53)
  %55 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %12, align 8
  %58 = call i32 @ata_wait_after_reset(%struct.ata_link* %55, i64 %56, i32 (%struct.ata_link*)* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32, %struct.domain_device*, i8*, ...) @sas_ata_printk(i32 %67, %struct.domain_device* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %61, %52
  %72 = load %struct.domain_device*, %struct.domain_device** %13, align 8
  %73 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %82 [
    i32 128, label %76
    i32 129, label %79
  ]

76:                                               ; preds = %71
  %77 = load i32, i32* @ATA_DEV_ATA, align 4
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  br label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @ATA_DEV_ATAPI, align 4
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %71, %79, %76
  %83 = load i32, i32* @ATA_CBL_SATA, align 4
  %84 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %85 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %34
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.sas_internal* @dev_to_sas_internal(%struct.domain_device*) #1

declare dso_local i32 @sas_ata_printk(i32, %struct.domain_device*, i8*, ...) #1

declare dso_local %struct.sas_phy* @sas_get_local_phy(%struct.domain_device*) #1

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local i32 @local_ata_check_ready(%struct.ata_link*) #1

declare dso_local i32 @smp_ata_check_ready(%struct.ata_link*) #1

declare dso_local i32 @sas_put_local_phy(%struct.sas_phy*) #1

declare dso_local i32 @ata_wait_after_reset(%struct.ata_link*, i64, i32 (%struct.ata_link*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
