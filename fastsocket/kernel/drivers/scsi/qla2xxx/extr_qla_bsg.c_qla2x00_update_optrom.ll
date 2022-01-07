; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_optrom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_optrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { {}*, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.Scsi_Host* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_13__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i32*, i32, i32)* }
%struct.TYPE_9__ = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@QLA_SWAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_update_optrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_update_optrom(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %8 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %9 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %8, i32 0, i32 3
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call %struct.TYPE_13__* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = call i32 @qla2x00_optrom_setup(%struct.fc_bsg_job* %16, %struct.TYPE_13__* %17, i32 1)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %28 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %32 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sg_copy_to_buffer(i32 %30, i32 %34, i32* %37, i32 %40)
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_13__*, i32*, i32, i32)*, i32 (%struct.TYPE_13__*, i32*, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %46(%struct.TYPE_13__* %47, i32* %50, i32 %53, i32 %56)
  %58 = load i32, i32* @DID_OK, align 4
  %59 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %60 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @vfree(i32* %65)
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @QLA_SWAITING, align 4
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %72, i32 0, i32 0
  %74 = bitcast {}** %73 to i32 (%struct.fc_bsg_job*)**
  %75 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %74, align 8
  %76 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %77 = call i32 %75(%struct.fc_bsg_job* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %23, %21
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_13__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @qla2x00_optrom_setup(%struct.fc_bsg_job*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
