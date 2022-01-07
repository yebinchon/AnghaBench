; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_I_T_nexus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_I_T_nexus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i32 }
%struct.sas_phy = type { i32 }

@SATA_DEV = common dso_local global i64 0, align 8
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@NEXUS_PHASE_PRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sending %s reset to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NEXUS_PHASE_POST = common dso_local global i32 0, align 4
@NEXUS_PHASE_RESUME = common dso_local global i32 0, align 4
@TC_RESUME = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to resume nexus after reset 0x%x\0A\00", align 1
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_I_T_nexus_reset(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %9 = call %struct.sas_phy* @sas_get_local_phy(%struct.domain_device* %8)
  store %struct.sas_phy* %9, %struct.sas_phy** %6, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SATA_DEV, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i1 [ true, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %27 = load i32, i32* @NEXUS_PHASE_PRE, align 4
  %28 = call i32 @asd_clear_nexus_I_T(%struct.domain_device* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %33 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %34 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %33, i32 0, i32 0
  %35 = call i32 @dev_name(i32* %34)
  %36 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  %37 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sas_phy_reset(%struct.sas_phy* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43, %22
  %49 = call i32 @msleep(i32 500)
  %50 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %51 = load i32, i32* @NEXUS_PHASE_POST, align 4
  %52 = call i32 @asd_clear_nexus_I_T(%struct.domain_device* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %59 = load i32, i32* @NEXUS_PHASE_RESUME, align 4
  %60 = call i32 @asd_clear_nexus_I_T(%struct.domain_device* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TC_RESUME, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %77

65:                                               ; preds = %57
  %66 = call i32 @msleep(i32 500)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load i32, i32* @KERN_ERR, align 4
  %72 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %73 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %72, i32 0, i32 0
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dev_printk(i32 %71, i32* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.sas_phy*, %struct.sas_phy** %6, align 8
  %79 = call i32 @sas_put_local_phy(%struct.sas_phy* %78)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.sas_phy* @sas_get_local_phy(%struct.domain_device*) #1

declare dso_local i32 @asd_clear_nexus_I_T(%struct.domain_device*, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @sas_phy_reset(%struct.sas_phy*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @sas_put_local_phy(%struct.sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
