; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_view_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_view_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_view = type { i32 }
%struct.zfcp_dbf_rec_record = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ZFCP_DBF_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@zfcp_dbf_rec_tags = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"0x%016Lx\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"erp_count\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"d_id\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"0x%06x\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"wwpn\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"fcp_lun\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"erp_action\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"requested\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"executed\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"adapter_status\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"port_status\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"unit_status\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"fsf_req\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"0x%08Lx\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.debug_view*, i8*, i8*)* @zfcp_dbf_rec_view_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_dbf_rec_view_format(i32* %0, %struct.debug_view* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.debug_view*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.zfcp_dbf_rec_record*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.debug_view* %1, %struct.debug_view** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.zfcp_dbf_rec_record*
  store %struct.zfcp_dbf_rec_record* %14, %struct.zfcp_dbf_rec_record** %9, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* @ZFCP_DBF_ID_SIZE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %22 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ZFCP_DBF_ID_SIZE, align 4
  %25 = call i32 @memcpy(i8* %20, i32 %23, i32 %24)
  %26 = load i32, i32* @ZFCP_DBF_ID_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %20, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i8**, i8*** @zfcp_dbf_rec_tags, align 8
  %30 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @zfcp_dbf_outs(i8** %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = call i32 @zfcp_dbf_outs(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %37 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %38 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  switch i64 %39, label %176 [
    i64 129, label %40
    i64 130, label %59
    i64 128, label %96
    i64 131, label %151
  ]

40:                                               ; preds = %4
  %41 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %42 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %48 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %54 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %176

59:                                               ; preds = %4
  %60 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %61 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %67 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %73 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %79 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %82)
  %84 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %85 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %91 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  br label %176

96:                                               ; preds = %4
  %97 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %98 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %104 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  %109 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %110 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %116 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %122 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %128 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %134 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %137)
  %139 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %140 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %146 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %149)
  br label %176

151:                                              ; preds = %4
  %152 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %153 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %159 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  %164 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %165 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %168)
  %170 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %9, align 8
  %171 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %4, %151, %96, %59, %40
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @sprintf(i8* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %179 = load i8*, i8** %10, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %10, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %188)
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @zfcp_dbf_outs(i8**, i8*, i8*) #2

declare dso_local i32 @zfcp_dbf_out(i8**, i8*, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
