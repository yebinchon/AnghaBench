; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_r2t_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_r2t_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsi_tcp_conn*, %struct.iscsi_session* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.iscsi_session = type { i64, i32 }
%struct.iscsi_task = type { i32, i32, %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_r2t_rsp = type { i32, i32, i32, i32, i32 }
%struct.iscsi_r2t_info = type { i32, i32, i64, i64, i32, i32 }
%struct.iscsi_nopin = type { i32 }
%struct.TYPE_6__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid R2t with datalen %d\0A\00", align 1
@ISCSI_ERR_DATALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"task->exp_datasn(%d) != rhdr->r2tsn(%d)\0A\00", align 1
@ISCSI_ERR_R2TSN = common dso_local global i32 0, align 4
@ISCSI_STATE_LOGGED_IN = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"dropping R2T itt %d in recovery.\0A\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"Could not allocate R2T. Target has sent more R2Ts than it negotiated for or driver has has leaked.\0A\00", align 1
@ISCSI_ERR_PROTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid R2T with zero data len\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"invalid R2T with data len %u and max burst %u. Attempting to execute request.\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"invalid R2T with data len %u at offset %u and total length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_task*)* @iscsi_tcp_r2t_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_tcp_r2t_rsp(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca %struct.iscsi_tcp_task*, align 8
  %8 = alloca %struct.iscsi_tcp_conn*, align 8
  %9 = alloca %struct.iscsi_r2t_rsp*, align 8
  %10 = alloca %struct.iscsi_r2t_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 2
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  store %struct.iscsi_session* %15, %struct.iscsi_session** %6, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 2
  %18 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %17, align 8
  store %struct.iscsi_tcp_task* %18, %struct.iscsi_tcp_task** %7, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 1
  %21 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %20, align 8
  store %struct.iscsi_tcp_conn* %21, %struct.iscsi_tcp_conn** %8, align 8
  %22 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %23 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.iscsi_r2t_rsp*
  store %struct.iscsi_r2t_rsp* %26, %struct.iscsi_r2t_rsp** %9, align 8
  %27 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %9, align 8
  %28 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be32_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %33 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %41 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %38, %struct.iscsi_conn* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @ISCSI_ERR_DATALEN, align 4
  store i32 %45, i32* %3, align 4
  br label %211

46:                                               ; preds = %2
  %47 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %48 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %54 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %55 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ISCSI_DBG_TCP(%struct.iscsi_conn* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @ISCSI_ERR_R2TSN, align 4
  store i32 %59, i32* %3, align 4
  br label %211

60:                                               ; preds = %46
  %61 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %62 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %9, align 8
  %63 = bitcast %struct.iscsi_r2t_rsp* %62 to %struct.iscsi_nopin*
  %64 = call i32 @iscsi_update_cmdsn(%struct.iscsi_session* %61, %struct.iscsi_nopin* %63)
  %65 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %66 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ISCSI_STATE_LOGGED_IN, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69, %60
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %78 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %76, %struct.iscsi_conn* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store i32 0, i32* %3, align 4
  br label %211

82:                                               ; preds = %69
  %83 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %84 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = bitcast %struct.iscsi_r2t_info** %10 to i8*
  %88 = call i32 @__kfifo_get(i32 %86, i8* %87, i32 8)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @KERN_ERR, align 4
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %94 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %92, %struct.iscsi_conn* %93, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %95, i32* %3, align 4
  br label %211

96:                                               ; preds = %82
  %97 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %9, align 8
  %98 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %101 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %9, align 8
  %103 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @be32_to_cpu(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %108 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %110 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %96
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %116 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %114, %struct.iscsi_conn* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %118 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = bitcast %struct.iscsi_r2t_info** %10 to i8*
  %122 = call i32 @__kfifo_put(i32 %120, i8* %121, i32 8)
  %123 = load i32, i32* @ISCSI_ERR_DATALEN, align 4
  store i32 %123, i32* %3, align 4
  br label %211

124:                                              ; preds = %96
  %125 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %126 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %129 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %124
  %133 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %134 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %135 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %138 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ISCSI_DBG_TCP(%struct.iscsi_conn* %133, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %132, %124
  %142 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %9, align 8
  %143 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @be32_to_cpu(i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %148 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %150 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %153 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %151, %154
  %156 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %157 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_6__* @scsi_out(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %155, %161
  br i1 %162, label %163, label %186

163:                                              ; preds = %141
  %164 = load i32, i32* @KERN_ERR, align 4
  %165 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %166 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %167 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %170 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %173 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call %struct.TYPE_6__* @scsi_out(i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %164, %struct.iscsi_conn* %165, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %168, i32 %171, i32 %177)
  %179 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %180 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = bitcast %struct.iscsi_r2t_info** %10 to i8*
  %184 = call i32 @__kfifo_put(i32 %182, i8* %183, i32 8)
  %185 = load i32, i32* @ISCSI_ERR_DATALEN, align 4
  store i32 %185, i32* %3, align 4
  br label %211

186:                                              ; preds = %141
  %187 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %9, align 8
  %188 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %191 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  %192 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %193 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %192, i32 0, i32 3
  store i64 0, i64* %193, align 8
  %194 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %10, align 8
  %195 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %194, i32 0, i32 2
  store i64 0, i64* %195, align 8
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  %198 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %199 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %201 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = bitcast %struct.iscsi_r2t_info** %10 to i8*
  %204 = call i32 @__kfifo_put(i32 %202, i8* %203, i32 8)
  %205 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %206 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  %209 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %210 = call i32 @iscsi_requeue_task(%struct.iscsi_task* %209)
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %186, %163, %113, %91, %75, %52, %37
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, ...) #1

declare dso_local i32 @ISCSI_DBG_TCP(%struct.iscsi_conn*, i8*, i32, i32) #1

declare dso_local i32 @iscsi_update_cmdsn(%struct.iscsi_session*, %struct.iscsi_nopin*) #1

declare dso_local i32 @__kfifo_get(i32, i8*, i32) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @scsi_out(i32) #1

declare dso_local i32 @iscsi_requeue_task(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
