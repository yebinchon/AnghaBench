; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_match_fwdb_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_match_fwdb_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32* }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32* }
%struct.ddb_entry = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.iscsi_conn* }
%struct.TYPE_3__ = type { %struct.iscsi_session* }

@QLA_ERROR = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i32 0, align 4
@MAX_DEV_DB_ENTRIES = common dso_local global i32 0, align 4
@FLASH_DDB = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IQN = %s User IQN = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"IP = %s User IP = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Port = %d User Port = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Match found in fwdb sessions\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.iscsi_cls_conn*)* @qla4xxx_match_fwdb_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_match_fwdb_session(%struct.scsi_qla_host* %0, %struct.iscsi_cls_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.iscsi_cls_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_cls_session*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  %12 = alloca %struct.iscsi_conn*, align 8
  %13 = alloca %struct.iscsi_conn*, align 8
  %14 = alloca %struct.ddb_entry*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %16 = call %struct.iscsi_cls_session* @iscsi_conn_to_session(%struct.iscsi_cls_conn* %15)
  store %struct.iscsi_cls_session* %16, %struct.iscsi_cls_session** %9, align 8
  %17 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %18 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %17, i32 0, i32 0
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %18, align 8
  store %struct.iscsi_session* %19, %struct.iscsi_session** %10, align 8
  %20 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %21, align 8
  store %struct.iscsi_conn* %22, %struct.iscsi_conn** %12, align 8
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27, %2
  %38 = load i32, i32* @QLA_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %172

39:                                               ; preds = %32
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %41 = call i64 @is_qla40XX(%struct.scsi_qla_host* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @MAX_DEV_DB_ENTRIES_40XX, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @MAX_DEV_DB_ENTRIES, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %157, %47
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %160

53:                                               ; preds = %49
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host* %54, i32 %55)
  store %struct.ddb_entry* %56, %struct.ddb_entry** %14, align 8
  %57 = load %struct.ddb_entry*, %struct.ddb_entry** %14, align 8
  %58 = icmp eq %struct.ddb_entry* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %157

60:                                               ; preds = %53
  %61 = load %struct.ddb_entry*, %struct.ddb_entry** %14, align 8
  %62 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @FLASH_DDB, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %157

67:                                               ; preds = %60
  %68 = load %struct.ddb_entry*, %struct.ddb_entry** %14, align 8
  %69 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.iscsi_session*, %struct.iscsi_session** %71, align 8
  store %struct.iscsi_session* %72, %struct.iscsi_session** %11, align 8
  %73 = load %struct.ddb_entry*, %struct.ddb_entry** %14, align 8
  %74 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %76, align 8
  store %struct.iscsi_conn* %77, %struct.iscsi_conn** %13, align 8
  %78 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %79 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %67
  %83 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %84 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %89 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %82, %67
  br label %157

93:                                               ; preds = %87
  %94 = load i32, i32* @KERN_INFO, align 4
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %96 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %97 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %100 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %94, %struct.scsi_qla_host* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %98, i32* %101)
  %103 = call i32 @DEBUG2(i32 %102)
  %104 = load i32, i32* @KERN_INFO, align 4
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %110 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %104, %struct.scsi_qla_host* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %108, i32* %111)
  %113 = call i32 @DEBUG2(i32 %112)
  %114 = load i32, i32* @KERN_INFO, align 4
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %117 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %120 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %114, %struct.scsi_qla_host* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %121)
  %123 = call i32 @DEBUG2(i32 %122)
  %124 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %125 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %128 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @strcmp(i32* %126, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %93
  br label %157

133:                                              ; preds = %93
  %134 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %135 = load %struct.ddb_entry*, %struct.ddb_entry** %14, align 8
  %136 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %137 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %140 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @qla4xxx_match_ipaddress(%struct.scsi_qla_host* %134, %struct.ddb_entry* %135, i32* %138, i32* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @QLA_ERROR, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %157

147:                                              ; preds = %133
  %148 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %149 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %152 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %157

156:                                              ; preds = %147
  br label %160

157:                                              ; preds = %155, %146, %132, %92, %66, %59
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %49

160:                                              ; preds = %156, %49
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* @QLA_ERROR, align 4
  store i32 %165, i32* %3, align 4
  br label %172

166:                                              ; preds = %160
  %167 = load i32, i32* @KERN_INFO, align 4
  %168 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %169 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %167, %struct.scsi_qla_host* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %170 = call i32 @DEBUG2(i32 %169)
  %171 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %166, %164, %37
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.iscsi_cls_session* @iscsi_conn_to_session(%struct.iscsi_cls_conn*) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @qla4xxx_match_ipaddress(%struct.scsi_qla_host*, %struct.ddb_entry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
