; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_adjust_sdev_qdepth_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_adjust_sdev_qdepth_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32, %struct.req_que* }
%struct.req_que = type { i32 }

@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Queue depth adjusted-up to %d for nexus=%ld:%d:%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32)* @qla2x00_adjust_sdev_qdepth_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_adjust_sdev_qdepth_up(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.req_que*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  store %struct.scsi_qla_host* %13, %struct.scsi_qla_host** %6, align 8
  store %struct.req_que* null, %struct.req_que** %7, align 8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 1
  %16 = load %struct.req_que*, %struct.req_que** %15, align 8
  store %struct.req_que* %16, %struct.req_que** %7, align 8
  %17 = load %struct.req_que*, %struct.req_que** %7, align 8
  %18 = icmp ne %struct.req_que* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.req_que*, %struct.req_que** %7, align 8
  %22 = getelementptr inbounds %struct.req_que, %struct.req_que* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.req_que*, %struct.req_que** %7, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %20
  br label %68

35:                                               ; preds = %28
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = load i32, i32* @MSG_ORDERED_TAG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %41, i32 %42, i32 %43)
  br label %50

45:                                               ; preds = %35
  %46 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %47 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @ql_dbg_io, align 4
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %53 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %57, align 8
  %59 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ql_dbg(i32 %51, %struct.scsi_qla_host* %52, i32 12330, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %50, %34, %19
  ret void
}

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
