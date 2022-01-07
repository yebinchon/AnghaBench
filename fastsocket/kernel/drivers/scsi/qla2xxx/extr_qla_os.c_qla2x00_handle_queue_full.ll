; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_handle_queue_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_handle_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32, i64 }
%struct.fc_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Queue depth adjusted-down to %d for nexus=%ld:%d:%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32)* @qla2x00_handle_queue_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_handle_queue_full(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_port*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fc_port*
  store %struct.fc_port* %9, %struct.fc_port** %5, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @scsi_track_queue_full(%struct.scsi_device* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* @ql_dbg_io, align 4
  %17 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %18 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %24 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ql_dbg(i32 %16, %struct.TYPE_2__* %19, i32 12329, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @scsi_track_queue_full(%struct.scsi_device*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_2__*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
