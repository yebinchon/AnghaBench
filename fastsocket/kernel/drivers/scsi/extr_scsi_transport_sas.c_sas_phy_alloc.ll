; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_rphy = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sas_phy_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"phy-%d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"phy-%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_phy* @sas_phy_alloc(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.sas_phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sas_phy*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sas_phy* @kzalloc(i32 20, i32 %11)
  store %struct.sas_phy* %12, %struct.sas_phy** %7, align 8
  %13 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %14 = icmp ne %struct.sas_phy* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.sas_phy* null, %struct.sas_phy** %3, align 8
  br label %66

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %19 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %21 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %23 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %22, i32 0, i32 2
  %24 = call i32 @device_initialize(%struct.TYPE_4__* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @get_device(%struct.device* %25)
  %27 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %28 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @sas_phy_release, align 4
  %31 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %32 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %35 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %34, i32 0, i32 3
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i64 @scsi_is_sas_expander_device(%struct.device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %16
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call %struct.sas_rphy* @dev_to_rphy(%struct.device* %41)
  store %struct.sas_rphy* %42, %struct.sas_rphy** %8, align 8
  %43 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %44 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %43, i32 0, i32 2
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %49 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.TYPE_4__*, i8*, i32, i32, ...) @dev_set_name(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %51)
  br label %61

53:                                               ; preds = %16
  %54 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %55 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %54, i32 0, i32 2
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (%struct.TYPE_4__*, i8*, i32, i32, ...) @dev_set_name(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %40
  %62 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %63 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %62, i32 0, i32 2
  %64 = call i32 @transport_setup_device(%struct.TYPE_4__* %63)
  %65 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  store %struct.sas_phy* %65, %struct.sas_phy** %3, align 8
  br label %66

66:                                               ; preds = %61, %15
  %67 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  ret %struct.sas_phy* %67
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.sas_phy* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @scsi_is_sas_expander_device(%struct.device*) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32, ...) #1

declare dso_local i32 @transport_setup_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
