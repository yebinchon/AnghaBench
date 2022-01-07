; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_view_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_view_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_view = type { i32 }
%struct.zfcp_dbf_san_record = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.zfcp_dbf_san_record_els, %struct.zfcp_dbf_san_record_ct_response, %struct.zfcp_dbf_san_record_ct_request }
%struct.zfcp_dbf_san_record_els = type { i32 }
%struct.zfcp_dbf_san_record_ct_response = type { i32, i32, i32, i32, i32, i32 }
%struct.zfcp_dbf_san_record_ct_request = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fsf_reqid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%0Lx\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fsf_seqno\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"s_id\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%06x\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"d_id\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"octc\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"cmd_req_code\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"gs_type\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"gs_subtype\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"max_res_size\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"rctc\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"cmd_rsp_code\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"reason_code\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"reason_code_expl\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"vendor_unique\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"oels\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rels\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"iels\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"ls_code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.debug_view*, i8*, i8*)* @zfcp_dbf_san_view_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_dbf_san_view_format(i32* %0, %struct.debug_view* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.debug_view*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zfcp_dbf_san_record*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.zfcp_dbf_san_record_ct_request*, align 8
  %13 = alloca %struct.zfcp_dbf_san_record_ct_response*, align 8
  %14 = alloca %struct.zfcp_dbf_san_record_els*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.debug_view* %1, %struct.debug_view** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.zfcp_dbf_san_record*
  store %struct.zfcp_dbf_san_record* %16, %struct.zfcp_dbf_san_record** %10, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %19 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %22 = call i64 @strncmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %153

25:                                               ; preds = %4
  %26 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %27 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zfcp_dbf_tag(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %35 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %39 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  %42 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %43 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  %46 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %47 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %50 = call i64 @strncmp(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %25
  %53 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %54 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store %struct.zfcp_dbf_san_record_ct_request* %55, %struct.zfcp_dbf_san_record_ct_request** %12, align 8
  %56 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %12, align 8
  %57 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %58)
  %60 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %12, align 8
  %61 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %62)
  %64 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %12, align 8
  %65 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %66)
  %68 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %12, align 8
  %69 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %70)
  %72 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %12, align 8
  %73 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %74)
  %76 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %12, align 8
  %77 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %78)
  br label %146

80:                                               ; preds = %25
  %81 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %82 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %85 = call i64 @strncmp(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %80
  %88 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %89 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store %struct.zfcp_dbf_san_record_ct_response* %90, %struct.zfcp_dbf_san_record_ct_response** %13, align 8
  %91 = load %struct.zfcp_dbf_san_record_ct_response*, %struct.zfcp_dbf_san_record_ct_response** %13, align 8
  %92 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_response, %struct.zfcp_dbf_san_record_ct_response* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %93)
  %95 = load %struct.zfcp_dbf_san_record_ct_response*, %struct.zfcp_dbf_san_record_ct_response** %13, align 8
  %96 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_response, %struct.zfcp_dbf_san_record_ct_response* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %97)
  %99 = load %struct.zfcp_dbf_san_record_ct_response*, %struct.zfcp_dbf_san_record_ct_response** %13, align 8
  %100 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_response, %struct.zfcp_dbf_san_record_ct_response* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %101)
  %103 = load %struct.zfcp_dbf_san_record_ct_response*, %struct.zfcp_dbf_san_record_ct_response** %13, align 8
  %104 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_response, %struct.zfcp_dbf_san_record_ct_response* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %105)
  %107 = load %struct.zfcp_dbf_san_record_ct_response*, %struct.zfcp_dbf_san_record_ct_response** %13, align 8
  %108 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_response, %struct.zfcp_dbf_san_record_ct_response* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %109)
  %111 = load %struct.zfcp_dbf_san_record_ct_response*, %struct.zfcp_dbf_san_record_ct_response** %13, align 8
  %112 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_response, %struct.zfcp_dbf_san_record_ct_response* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %113)
  br label %145

115:                                              ; preds = %80
  %116 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %117 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %120 = call i64 @strncmp(i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %115
  %123 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %124 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %127 = call i64 @strncmp(i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %122
  %130 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %131 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %134 = call i64 @strncmp(i32 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %129, %122, %115
  %137 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %10, align 8
  %138 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store %struct.zfcp_dbf_san_record_els* %139, %struct.zfcp_dbf_san_record_els** %14, align 8
  %140 = load %struct.zfcp_dbf_san_record_els*, %struct.zfcp_dbf_san_record_els** %14, align 8
  %141 = getelementptr inbounds %struct.zfcp_dbf_san_record_els, %struct.zfcp_dbf_san_record_els* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @zfcp_dbf_out(i8** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %136, %129
  br label %145

145:                                              ; preds = %144, %87
  br label %146

146:                                              ; preds = %145, %52
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %146, %24
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @zfcp_dbf_tag(i8**, i8*, i32) #1

declare dso_local i32 @zfcp_dbf_out(i8**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
