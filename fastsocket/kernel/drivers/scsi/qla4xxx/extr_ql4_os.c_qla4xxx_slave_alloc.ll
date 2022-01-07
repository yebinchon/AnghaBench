; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.ddb_entry*, i32 }
%struct.ddb_entry = type { i32 }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.ddb_entry* }

@QL4_DEF_QDEPTH = common dso_local global i32 0, align 4
@ql4xmaxqdepth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @qla4xxx_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.iscsi_cls_session*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load i32, i32* @QL4_DEF_QDEPTH, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.iscsi_cls_session* @starget_to_session(i32 %10)
  store %struct.iscsi_cls_session* %11, %struct.iscsi_cls_session** %3, align 8
  %12 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %12, i32 0, i32 0
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %13, align 8
  store %struct.iscsi_session* %14, %struct.iscsi_session** %4, align 8
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %15, i32 0, i32 0
  %17 = load %struct.ddb_entry*, %struct.ddb_entry** %16, align 8
  store %struct.ddb_entry* %17, %struct.ddb_entry** %5, align 8
  %18 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  store %struct.ddb_entry* %18, %struct.ddb_entry** %20, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @ql4xmaxqdepth, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @ql4xmaxqdepth, align 4
  %27 = icmp ule i32 %26, 65535
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ql4xmaxqdepth, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %25, %1
  %31 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @scsi_activate_tcq(%struct.scsi_device* %31, i32 %32)
  ret i32 0
}

declare dso_local %struct.iscsi_cls_session* @starget_to_session(i32) #1

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
