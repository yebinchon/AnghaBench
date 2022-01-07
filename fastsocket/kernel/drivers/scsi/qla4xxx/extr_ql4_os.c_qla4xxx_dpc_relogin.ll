; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_dpc_relogin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_dpc_relogin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.ddb_entry* }
%struct.ddb_entry = type { i64, i32, %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }

@FLASH_DDB = common dso_local global i64 0, align 8
@DF_DISABLE_RELOGIN = common dso_local global i32 0, align 4
@DF_RELOGIN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"relogin issued\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_session*)* @qla4xxx_dpc_relogin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_dpc_relogin(%struct.iscsi_cls_session* %0) #0 {
  %2 = alloca %struct.iscsi_cls_session*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.ddb_entry*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %2, align 8
  %6 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %6, i32 0, i32 0
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %7, align 8
  store %struct.iscsi_session* %8, %struct.iscsi_session** %3, align 8
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %9, i32 0, i32 0
  %11 = load %struct.ddb_entry*, %struct.ddb_entry** %10, align 8
  store %struct.ddb_entry* %11, %struct.ddb_entry** %4, align 8
  %12 = load %struct.ddb_entry*, %struct.ddb_entry** %4, align 8
  %13 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %12, i32 0, i32 2
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  store %struct.scsi_qla_host* %14, %struct.scsi_qla_host** %5, align 8
  %15 = load %struct.ddb_entry*, %struct.ddb_entry** %4, align 8
  %16 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FLASH_DDB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %45

21:                                               ; preds = %1
  %22 = load i32, i32* @DF_DISABLE_RELOGIN, align 4
  %23 = load %struct.ddb_entry*, %struct.ddb_entry** %4, align 8
  %24 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %45

28:                                               ; preds = %21
  %29 = load i32, i32* @DF_RELOGIN, align 4
  %30 = load %struct.ddb_entry*, %struct.ddb_entry** %4, align 8
  %31 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %30, i32 0, i32 1
  %32 = call i64 @test_and_clear_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %36 = call i32 @iscsi_is_session_online(%struct.iscsi_cls_session* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %41 = call i32 @ql4_printk(i32 %39, %struct.scsi_qla_host* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @DEBUG2(i32 %41)
  %43 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %44 = call i32 @qla4xxx_relogin_flash_ddb(%struct.iscsi_cls_session* %43)
  br label %45

45:                                               ; preds = %20, %27, %38, %34, %28
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @iscsi_is_session_online(%struct.iscsi_cls_session*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @qla4xxx_relogin_flash_ddb(%struct.iscsi_cls_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
