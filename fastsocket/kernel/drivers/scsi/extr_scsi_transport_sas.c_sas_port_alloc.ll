; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_port = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_rphy = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sas_port_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"port-%d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"port-%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_port* @sas_port_alloc(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.sas_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sas_port*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sas_port* @kzalloc(i32 20, i32 %11)
  store %struct.sas_port* %12, %struct.sas_port** %7, align 8
  %13 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %14 = icmp ne %struct.sas_port* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.sas_port* null, %struct.sas_port** %3, align 8
  br label %71

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %19 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %21 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %20, i32 0, i32 1
  %22 = call i32 @device_initialize(%struct.TYPE_4__* %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @get_device(%struct.device* %23)
  %25 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %26 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @sas_port_release, align 4
  %29 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %30 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %33 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %32, i32 0, i32 3
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %36 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i64 @scsi_is_sas_expander_device(%struct.device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %16
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call %struct.sas_rphy* @dev_to_rphy(%struct.device* %42)
  store %struct.sas_rphy* %43, %struct.sas_rphy** %8, align 8
  %44 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %45 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %44, i32 0, i32 1
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %50 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %53 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.TYPE_4__*, i8*, i32, i32, ...) @dev_set_name(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  br label %66

56:                                               ; preds = %16
  %57 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %58 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %57, i32 0, i32 1
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %63 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.TYPE_4__*, i8*, i32, i32, ...) @dev_set_name(%struct.TYPE_4__* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %56, %41
  %67 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  %68 = getelementptr inbounds %struct.sas_port, %struct.sas_port* %67, i32 0, i32 1
  %69 = call i32 @transport_setup_device(%struct.TYPE_4__* %68)
  %70 = load %struct.sas_port*, %struct.sas_port** %7, align 8
  store %struct.sas_port* %70, %struct.sas_port** %3, align 8
  br label %71

71:                                               ; preds = %66, %15
  %72 = load %struct.sas_port*, %struct.sas_port** %3, align 8
  ret %struct.sas_port* %72
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.sas_port* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

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
