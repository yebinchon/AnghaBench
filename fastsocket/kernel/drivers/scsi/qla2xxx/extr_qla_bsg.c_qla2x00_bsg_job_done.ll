; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_job_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_job_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.scsi_qla_host*, %struct.TYPE_7__*)*, %struct.TYPE_5__ }
%struct.scsi_qla_host = type { i32 }
%struct.TYPE_5__ = type { %struct.fc_bsg_job* }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_bsg_job_done(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.scsi_qla_host*, align 8
  %9 = alloca %struct.fc_bsg_job*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %13, %struct.scsi_qla_host** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %16, align 8
  store %struct.fc_bsg_job* %17, %struct.fc_bsg_job** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %20 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %24 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %23, i32 0, i32 0
  %25 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %24, align 8
  %26 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %27 = call i32 %25(%struct.fc_bsg_job* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32 (%struct.scsi_qla_host*, %struct.TYPE_7__*)*, i32 (%struct.scsi_qla_host*, %struct.TYPE_7__*)** %29, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = call i32 %30(%struct.scsi_qla_host* %31, %struct.TYPE_7__* %32)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
