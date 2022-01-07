; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf_hba_record_response = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"fsf_command\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fsf_reqid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%0Lx\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fsf_seqno\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"fsf_issued\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%011lu:%06lu\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"fsf_prot_status\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"fsf_status\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"fsf_prot_status_qual\00", align 1
@FSF_PROT_STATUS_QUAL_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"fsf_status_qual\00", align 1
@FSF_STATUS_QUALIFIER_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"fsf_req_status\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"sbal_first\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"sbal_last\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"sbal_response\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"data_direction\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"scsi_cmnd\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"scsi_serial\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"0x%016Lx\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"wwpn\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"d_id\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"0x%06x\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"port_handle\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"fcp_lun\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"lun_handle\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"ls_code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.zfcp_dbf_hba_record_response*)* @zfcp_dbf_hba_view_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_hba_view_response(i8** %0, %struct.zfcp_dbf_hba_record_response* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.zfcp_dbf_hba_record_response*, align 8
  %5 = alloca %struct.timespec, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.zfcp_dbf_hba_record_response* %1, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %8 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i8**, i8*** %3, align 8
  %12 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = load i8**, i8*** %3, align 8
  %17 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %22 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @stck_to_timespec(i32 %23, %struct.timespec* %5)
  %25 = load i8**, i8*** %3, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load i8**, i8*** %3, align 8
  %32 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %33 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i8**, i8*** %3, align 8
  %37 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i8**, i8*** %3, align 8
  %42 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %43 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FSF_PROT_STATUS_QUAL_SIZE, align 4
  %46 = load i32, i32* @FSF_PROT_STATUS_QUAL_SIZE, align 4
  %47 = call i32 @zfcp_dbf_outd(i8** %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %44, i32 %45, i32 0, i32 %46)
  %48 = load i8**, i8*** %3, align 8
  %49 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %50 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FSF_STATUS_QUALIFIER_SIZE, align 4
  %53 = load i32, i32* @FSF_STATUS_QUALIFIER_SIZE, align 4
  %54 = call i32 @zfcp_dbf_outd(i8** %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %51, i32 %52, i32 0, i32 %53)
  %55 = load i8**, i8*** %3, align 8
  %56 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i8**, i8*** %3, align 8
  %61 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %62 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %63)
  %65 = load i8**, i8*** %3, align 8
  %66 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %67 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %68)
  %70 = load i8**, i8*** %3, align 8
  %71 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %72 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %73)
  %75 = load i8**, i8*** %3, align 8
  %76 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %77 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %78)
  %80 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %81 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %186 [
    i32 133, label %83
    i32 131, label %119
    i32 137, label %119
    i32 138, label %119
    i32 132, label %141
    i32 139, label %141
    i32 130, label %170
    i32 140, label %185
    i32 129, label %185
    i32 135, label %185
    i32 134, label %185
    i32 136, label %185
    i32 128, label %185
  ]

83:                                               ; preds = %2
  %84 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %85 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %186

91:                                               ; preds = %83
  %92 = load i8**, i8*** %3, align 8
  %93 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %94 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %97)
  %99 = load i8**, i8*** %3, align 8
  %100 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %101 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i8**, i8*** %3, align 8
  %107 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %108 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %107, i32 0, i32 10
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %111)
  %113 = load i8**, i8*** %3, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @sprintf(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %116 = load i8**, i8*** %3, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8** %118, i8*** %3, align 8
  br label %186

119:                                              ; preds = %2, %2, %2
  %120 = load i8**, i8*** %3, align 8
  %121 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %122 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %121, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %125)
  %127 = load i8**, i8*** %3, align 8
  %128 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %129 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %128, i32 0, i32 10
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %132)
  %134 = load i8**, i8*** %3, align 8
  %135 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %136 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %186

141:                                              ; preds = %2, %2
  %142 = load i8**, i8*** %3, align 8
  %143 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %144 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %147)
  %149 = load i8**, i8*** %3, align 8
  %150 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %151 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %150, i32 0, i32 10
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %154)
  %156 = load i8**, i8*** %3, align 8
  %157 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %158 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  %163 = load i8**, i8*** %3, align 8
  %164 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %165 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %164, i32 0, i32 10
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  br label %186

170:                                              ; preds = %2
  %171 = load i8**, i8*** %3, align 8
  %172 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %173 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %172, i32 0, i32 10
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %176)
  %178 = load i8**, i8*** %3, align 8
  %179 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %4, align 8
  %180 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %179, i32 0, i32 10
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8**, i8*, i8*, i32, ...) @zfcp_dbf_out(i8** %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %183)
  br label %186

185:                                              ; preds = %2, %2, %2, %2, %2, %2
  br label %186

186:                                              ; preds = %2, %185, %170, %141, %119, %91, %90
  ret void
}

declare dso_local i32 @zfcp_dbf_out(i8**, i8*, i8*, i32, ...) #1

declare dso_local i32 @stck_to_timespec(i32, %struct.timespec*) #1

declare dso_local i32 @zfcp_dbf_outd(i8**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
