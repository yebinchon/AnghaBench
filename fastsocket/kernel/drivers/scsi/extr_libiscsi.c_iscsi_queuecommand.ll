; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.iscsi_conn* }
%struct.TYPE_7__ = type { i64 (%struct.iscsi_task*)* }
%struct.iscsi_task = type { i32 }
%struct.iscsi_conn = type { i32, i32 }
%struct.iscsi_host = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ISCSI_STATE_LOGGED_IN = common dso_local global i32 0, align 4
@FAILURE_SESSION_IN_RECOVERY = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@FAILURE_SESSION_LOGGING_OUT = common dso_local global i32 0, align 4
@FAILURE_SESSION_RECOVERY_TIMEOUT = common dso_local global i32 0, align 4
@DID_TRANSPORT_FAILFAST = common dso_local global i32 0, align 4
@FAILURE_SESSION_TERMINATE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@FAILURE_SESSION_FREED = common dso_local global i32 0, align 4
@ISCSI_SUSPEND_BIT = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@FAILURE_WINDOW_CLOSED = common dso_local global i32 0, align 4
@FAILURE_OOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@FAILURE_SESSION_NOT_READY = common dso_local global i32 0, align 4
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cmd 0x%x rejected (%d)\0A\00", align 1
@SCSI_MLQUEUE_TARGET_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"iscsi: cmd 0x%x is not queued (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.iscsi_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca %struct.iscsi_task*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  store i32 0, i32* %9, align 4
  store %struct.iscsi_task* null, %struct.iscsi_task** %12, align 8
  %13 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %13, void (%struct.scsi_cmnd*)** %15, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %24, align 8
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %7, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %27 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %26)
  store %struct.iscsi_host* %27, %struct.iscsi_host** %8, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @scsi_target(%struct.TYPE_8__* %34)
  %36 = call %struct.iscsi_cls_session* @starget_to_session(i32 %35)
  store %struct.iscsi_cls_session* %36, %struct.iscsi_cls_session** %6, align 8
  %37 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %37, i32 0, i32 0
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %38, align 8
  store %struct.iscsi_session* %39, %struct.iscsi_session** %10, align 8
  %40 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %41 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %40, i32 0, i32 1
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %44 = call i32 @iscsi_session_chkready(%struct.iscsi_cls_session* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %2
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %221

51:                                               ; preds = %2
  %52 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %53 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ISCSI_STATE_LOGGED_IN, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %51
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %59 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %85 [
    i32 132, label %61
    i32 131, label %61
    i32 130, label %67
    i32 129, label %73
    i32 128, label %79
  ]

61:                                               ; preds = %57, %57
  %62 = load i32, i32* @FAILURE_SESSION_IN_RECOVERY, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @DID_IMM_RETRY, align 4
  %64 = shl i32 %63, 16
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %91

67:                                               ; preds = %57
  %68 = load i32, i32* @FAILURE_SESSION_LOGGING_OUT, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @DID_IMM_RETRY, align 4
  %70 = shl i32 %69, 16
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %91

73:                                               ; preds = %57
  %74 = load i32, i32* @FAILURE_SESSION_RECOVERY_TIMEOUT, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @DID_TRANSPORT_FAILFAST, align 4
  %76 = shl i32 %75, 16
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %91

79:                                               ; preds = %57
  %80 = load i32, i32* @FAILURE_SESSION_TERMINATE, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @DID_NO_CONNECT, align 4
  %82 = shl i32 %81, 16
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %91

85:                                               ; preds = %57
  %86 = load i32, i32* @FAILURE_SESSION_FREED, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @DID_NO_CONNECT, align 4
  %88 = shl i32 %87, 16
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %79, %73, %67, %61
  br label %221

92:                                               ; preds = %51
  %93 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %94 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %93, i32 0, i32 5
  %95 = load %struct.iscsi_conn*, %struct.iscsi_conn** %94, align 8
  store %struct.iscsi_conn* %95, %struct.iscsi_conn** %11, align 8
  %96 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %97 = icmp ne %struct.iscsi_conn* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @FAILURE_SESSION_FREED, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @DID_NO_CONNECT, align 4
  %101 = shl i32 %100, 16
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  br label %221

104:                                              ; preds = %92
  %105 = load i32, i32* @ISCSI_SUSPEND_BIT, align 4
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 1
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32, i32* @FAILURE_SESSION_IN_RECOVERY, align 4
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* @DID_REQUEUE, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  br label %221

115:                                              ; preds = %104
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %117 = call i64 @iscsi_check_cmdsn_window_closed(%struct.iscsi_conn* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @FAILURE_WINDOW_CLOSED, align 4
  store i32 %120, i32* %9, align 4
  br label %198

121:                                              ; preds = %115
  %122 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %124 = call %struct.iscsi_task* @iscsi_alloc_task(%struct.iscsi_conn* %122, %struct.scsi_cmnd* %123)
  store %struct.iscsi_task* %124, %struct.iscsi_task** %12, align 8
  %125 = load %struct.iscsi_task*, %struct.iscsi_task** %12, align 8
  %126 = icmp ne %struct.iscsi_task* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @FAILURE_OOM, align 4
  store i32 %128, i32* %9, align 4
  br label %198

129:                                              ; preds = %121
  %130 = load %struct.iscsi_host*, %struct.iscsi_host** %8, align 8
  %131 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %172, label %134

134:                                              ; preds = %129
  %135 = load %struct.iscsi_task*, %struct.iscsi_task** %12, align 8
  %136 = call i32 @iscsi_prep_scsi_cmd_pdu(%struct.iscsi_task* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %134
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @EACCES, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144, %139
  %150 = load i32, i32* @FAILURE_OOM, align 4
  store i32 %150, i32* %9, align 4
  br label %192

151:                                              ; preds = %144
  %152 = load i32, i32* @DID_ABORT, align 4
  %153 = shl i32 %152, 16
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  br label %215

156:                                              ; preds = %134
  %157 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %158 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %157, i32 0, i32 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i64 (%struct.iscsi_task*)*, i64 (%struct.iscsi_task*)** %160, align 8
  %162 = load %struct.iscsi_task*, %struct.iscsi_task** %12, align 8
  %163 = call i64 %161(%struct.iscsi_task* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %167 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* @FAILURE_SESSION_NOT_READY, align 4
  store i32 %170, i32* %9, align 4
  br label %192

171:                                              ; preds = %156
  br label %180

172:                                              ; preds = %129
  %173 = load %struct.iscsi_task*, %struct.iscsi_task** %12, align 8
  %174 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %173, i32 0, i32 0
  %175 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %176 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %175, i32 0, i32 0
  %177 = call i32 @list_add_tail(i32* %174, i32* %176)
  %178 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %179 = call i32 @iscsi_conn_queue_work(%struct.iscsi_conn* %178)
  br label %180

180:                                              ; preds = %172, %171
  %181 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %182 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %186 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %185, i32 0, i32 1
  %187 = call i32 @spin_unlock(i32* %186)
  %188 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %189 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @spin_lock(i32* %190)
  store i32 0, i32* %3, align 4
  br label %263

192:                                              ; preds = %165, %149
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %194 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %193, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* null, void (%struct.scsi_cmnd*)** %194, align 8
  %195 = load %struct.iscsi_task*, %struct.iscsi_task** %12, align 8
  %196 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %197 = call i32 @iscsi_complete_task(%struct.iscsi_task* %195, i32 %196)
  br label %198

198:                                              ; preds = %192, %127, %119
  %199 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %200 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %199, i32 0, i32 1
  %201 = call i32 @spin_unlock(i32* %200)
  %202 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %204 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %207, i32 %208)
  %210 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %211 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @spin_lock(i32* %212)
  %214 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  store i32 %214, i32* %3, align 4
  br label %263

215:                                              ; preds = %151
  %216 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %217 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %216, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* null, void (%struct.scsi_cmnd*)** %217, align 8
  %218 = load %struct.iscsi_task*, %struct.iscsi_task** %12, align 8
  %219 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %220 = call i32 @iscsi_complete_task(%struct.iscsi_task* %218, i32 %219)
  br label %221

221:                                              ; preds = %215, %110, %98, %91, %47
  %222 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %223 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %222, i32 0, i32 1
  %224 = call i32 @spin_unlock(i32* %223)
  %225 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %226 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %227 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %225, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %234 = call i32 @scsi_bidi_cmnd(%struct.scsi_cmnd* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %221
  %237 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %238 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %239 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %238)
  %240 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %237, i32 %239)
  br label %256

241:                                              ; preds = %221
  %242 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %243 = call %struct.TYPE_9__* @scsi_out(%struct.scsi_cmnd* %242)
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %247 = call %struct.TYPE_9__* @scsi_out(%struct.scsi_cmnd* %246)
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  %249 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %250 = call %struct.TYPE_10__* @scsi_in(%struct.scsi_cmnd* %249)
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %254 = call %struct.TYPE_10__* @scsi_in(%struct.scsi_cmnd* %253)
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  store i32 %252, i32* %255, align 4
  br label %256

256:                                              ; preds = %241, %236
  %257 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %258 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %257(%struct.scsi_cmnd* %258)
  %259 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %260 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @spin_lock(i32* %261)
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %256, %198, %180
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.iscsi_cls_session* @starget_to_session(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iscsi_session_chkready(%struct.iscsi_cls_session*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @iscsi_check_cmdsn_window_closed(%struct.iscsi_conn*) #1

declare dso_local %struct.iscsi_task* @iscsi_alloc_task(%struct.iscsi_conn*, %struct.scsi_cmnd*) #1

declare dso_local i32 @iscsi_prep_scsi_cmd_pdu(%struct.iscsi_task*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iscsi_conn_queue_work(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i32, i32) #1

declare dso_local i32 @scsi_bidi_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_9__* @scsi_out(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_10__* @scsi_in(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
