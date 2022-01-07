; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_copy_fwddb_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_copy_fwddb_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64 }
%struct.dev_db_entry = type { i64, i32, i32, i32, i32, i32 }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i8*, %struct.ddb_entry* }
%struct.ddb_entry = type { i8* }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i8* }

@DDB_IPADDR_LEN = common dso_local global i32 0, align 4
@DDB_OPT_IPV6_DEVICE = common dso_local global i32 0, align 4
@ISCSI_PARAM_PORTAL_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@ISCSI_PARAM_PERSISTENT_ADDRESS = common dso_local global i32 0, align 4
@ISCSI_PARAM_TARGET_NAME = common dso_local global i32 0, align 4
@ISCSI_PARAM_INITIATOR_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.dev_db_entry*, %struct.iscsi_cls_session*, %struct.iscsi_cls_conn*)* @qla4xxx_copy_fwddb_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_copy_fwddb_param(%struct.scsi_qla_host* %0, %struct.dev_db_entry* %1, %struct.iscsi_cls_session* %2, %struct.iscsi_cls_conn* %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.dev_db_entry*, align 8
  %7 = alloca %struct.iscsi_cls_session*, align 8
  %8 = alloca %struct.iscsi_cls_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.ddb_entry*, align 8
  %12 = alloca %struct.iscsi_conn*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %6, align 8
  store %struct.iscsi_cls_session* %2, %struct.iscsi_cls_session** %7, align 8
  store %struct.iscsi_cls_conn* %3, %struct.iscsi_cls_conn** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @DDB_IPADDR_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %20, i32 0, i32 0
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %21, align 8
  store %struct.iscsi_session* %22, %struct.iscsi_session** %10, align 8
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 1
  %25 = load %struct.ddb_entry*, %struct.ddb_entry** %24, align 8
  store %struct.ddb_entry* %25, %struct.ddb_entry** %11, align 8
  %26 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %27 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %26, i32 0, i32 0
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %27, align 8
  store %struct.iscsi_conn* %28, %struct.iscsi_conn** %12, align 8
  %29 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %30 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = load %struct.ddb_entry*, %struct.ddb_entry** %11, align 8
  %34 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %36 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %37 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %38 = call i32 @qla4xxx_copy_to_sess_conn_params(%struct.iscsi_conn* %35, %struct.iscsi_session* %36, %struct.dev_db_entry* %37)
  %39 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %40 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le16_to_cpu(i32 %41)
  %43 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %46 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %50 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = trunc i64 %17 to i32
  %52 = call i32 @memset(i8* %19, i32 0, i32 %51)
  %53 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %54 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le16_to_cpu(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @DDB_OPT_IPV6_DEVICE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %4
  %63 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %64 = load i32, i32* @ISCSI_PARAM_PORTAL_TYPE, align 4
  %65 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %66 = trunc i64 %17 to i32
  %67 = call i32 @memset(i8* %19, i32 0, i32 %66)
  %68 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %69 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %80

72:                                               ; preds = %4
  %73 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %74 = load i32, i32* @ISCSI_PARAM_PORTAL_TYPE, align 4
  %75 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %73, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %76 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %77 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %72, %62
  %81 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %82 = load i32, i32* @ISCSI_PARAM_PERSISTENT_ADDRESS, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %81, i32 %82, i8* %19, i32 %83)
  %85 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %86 = load i32, i32* @ISCSI_PARAM_TARGET_NAME, align 4
  %87 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %88 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %85, i32 %86, i8* %90, i32 %91)
  %93 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %94 = load i32, i32* @ISCSI_PARAM_INITIATOR_NAME, align 4
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %96 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %93, i32 %94, i8* %98, i32 %99)
  %101 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @qla4xxx_copy_to_sess_conn_params(%struct.iscsi_conn*, %struct.iscsi_session*, %struct.dev_db_entry*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn*, i32, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
