; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_optrom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_optrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { {}*, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.Scsi_Host* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_13__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*, i32*, i32, i32)* }
%struct.TYPE_9__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@QLA_SWAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_read_optrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_read_optrom(%struct.fc_bsg_job* %0) #0 {
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
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %92

24:                                               ; preds = %1
  %25 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = call i32 @qla2x00_optrom_setup(%struct.fc_bsg_job* %25, %struct.TYPE_13__* %26, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %92

32:                                               ; preds = %24
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_13__*, i32*, i32, i32)*, i32 (%struct.TYPE_13__*, i32*, i32, i32)** %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %37(%struct.TYPE_13__* %38, i32* %41, i32 %44, i32 %47)
  %49 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %50 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %54 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sg_copy_from_buffer(i32 %52, i32 %56, i32* %59, i32 %62)
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %68 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @DID_OK, align 4
  %72 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @vfree(i32* %78)
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* @QLA_SWAITING, align 4
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %84 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %86 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %85, i32 0, i32 0
  %87 = bitcast {}** %86 to i32 (%struct.fc_bsg_job*)**
  %88 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %87, align 8
  %89 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %90 = call i32 %88(%struct.fc_bsg_job* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %32, %30, %21
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_13__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @qla2x00_optrom_setup(%struct.fc_bsg_job*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
