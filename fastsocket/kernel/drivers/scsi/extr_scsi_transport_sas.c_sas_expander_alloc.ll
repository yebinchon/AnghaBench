; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_expander_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_expander_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sas_port = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_expander_device = type { %struct.sas_rphy }
%struct.sas_host_attrs = type { i32, i32 }

@SAS_EDGE_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@SAS_FANOUT_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sas_expander_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expander-%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_rphy* @sas_expander_alloc(%struct.sas_port* %0, i32 %1) #0 {
  %3 = alloca %struct.sas_rphy*, align 8
  %4 = alloca %struct.sas_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sas_expander_device*, align 8
  %8 = alloca %struct.sas_host_attrs*, align 8
  store %struct.sas_port* %0, %struct.sas_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sas_port*, %struct.sas_port** %4, align 8
  %10 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %9, i32 0, i32 0
  %11 = call %struct.Scsi_Host* @dev_to_shost(i32* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %13 = call %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host* %12)
  store %struct.sas_host_attrs* %13, %struct.sas_host_attrs** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SAS_EDGE_EXPANDER_DEVICE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SAS_FANOUT_EXPANDER_DEVICE, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ false, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sas_expander_device* @kzalloc(i32 24, i32 %25)
  store %struct.sas_expander_device* %26, %struct.sas_expander_device** %7, align 8
  %27 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %28 = icmp ne %struct.sas_expander_device* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store %struct.sas_rphy* null, %struct.sas_rphy** %3, align 8
  br label %86

30:                                               ; preds = %21
  %31 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %32 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %32, i32 0, i32 0
  %34 = call i32 @device_initialize(%struct.TYPE_6__* %33)
  %35 = load %struct.sas_port*, %struct.sas_port** %4, align 8
  %36 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %35, i32 0, i32 0
  %37 = call i32 @get_device(i32* %36)
  %38 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %39 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @sas_expander_release, align 4
  %43 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %44 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %48 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %51 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = sext i32 %52 to i64
  %55 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %56 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %59 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %62 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %62, i32 0, i32 0
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %68 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dev_set_name(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %66, i64 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %74 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %78 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %77, i32 0, i32 0
  %79 = call i32 @sas_rphy_initialize(%struct.sas_rphy* %78)
  %80 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %81 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %81, i32 0, i32 0
  %83 = call i32 @transport_setup_device(%struct.TYPE_6__* %82)
  %84 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %85 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %84, i32 0, i32 0
  store %struct.sas_rphy* %85, %struct.sas_rphy** %3, align 8
  br label %86

86:                                               ; preds = %30, %29
  %87 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  ret %struct.sas_rphy* %87
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32*) #1

declare dso_local %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sas_expander_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, i64) #1

declare dso_local i32 @sas_rphy_initialize(%struct.sas_rphy*) #1

declare dso_local i32 @transport_setup_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
