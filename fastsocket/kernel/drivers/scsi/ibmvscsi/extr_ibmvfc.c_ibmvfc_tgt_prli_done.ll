; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_prli_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_prli_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ibmvfc_event = type { %struct.TYPE_5__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_5__ = type { %struct.ibmvfc_process_login }
%struct.ibmvfc_process_login = type { i32, i32, %struct.TYPE_6__, %struct.ibmvfc_prli_svc_parms }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_prli_svc_parms = type { i32, i32, i32 }
%struct.ibmvfc_host = type { i32, i32 }
%struct.ibmvfc_target = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Process Login succeeded: %X %02X %04X\0A\00", align 1
@IBMVFC_SCSI_FCP_TYPE = common dso_local global i32 0, align 4
@prli_rsp = common dso_local global %struct.TYPE_8__* null, align 8
@IBMVFC_PRLI_EST_IMG_PAIR = common dso_local global i32 0, align 4
@IBMVFC_PRLI_TARGET_FUNC = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@IBMVFC_PRLI_INITIATOR_FUNC = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@ibmvfc_tgt_send_prli = common dso_local global i32 0, align 4
@IBMVFC_VIOS_FAILURE = common dso_local global i32 0, align 4
@IBMVFC_PLOGI_REQUIRED = common dso_local global i32 0, align 4
@ibmvfc_tgt_send_plogi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Process Login failed: %s (%x:%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_prli_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_prli_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_process_login*, align 8
  %6 = alloca %struct.ibmvfc_prli_svc_parms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %10, i32 0, i32 2
  %12 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %11, align 8
  store %struct.ibmvfc_target* %12, %struct.ibmvfc_target** %3, align 8
  %13 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %13, i32 0, i32 1
  %15 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %14, align 8
  store %struct.ibmvfc_host* %15, %struct.ibmvfc_host** %4, align 8
  %16 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.ibmvfc_process_login* %19, %struct.ibmvfc_process_login** %5, align 8
  %20 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %20, i32 0, i32 3
  store %struct.ibmvfc_prli_svc_parms* %21, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %22 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @IBMVFC_DEFAULT_LOG_LEVEL, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %28 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %32 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %33 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %141 [
    i32 128, label %35
    i32 130, label %135
    i32 131, label %136
    i32 129, label %140
  ]

35:                                               ; preds = %1
  %36 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %37 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %38 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %41 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %44 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tgt_dbg(%struct.ibmvfc_target* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  %47 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %48 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IBMVFC_SCSI_FCP_TYPE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %130

52:                                               ; preds = %35
  %53 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ibmvfc_get_prli_rsp(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prli_rsp, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %112

64:                                               ; preds = %52
  %65 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %66 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IBMVFC_PRLI_EST_IMG_PAIR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %64
  %72 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %73 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %72, i32 0, i32 4
  store i32 0, i32* %73, align 4
  %74 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %75 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %78 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IBMVFC_PRLI_TARGET_FUNC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %71
  %84 = load i32, i32* @FC_PORT_ROLE_FCP_TARGET, align 4
  %85 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %71
  %91 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %92 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IBMVFC_PRLI_INITIATOR_FUNC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %99 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %100 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %90
  %105 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %106 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %111

107:                                              ; preds = %64
  %108 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %109 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %110 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  br label %129

112:                                              ; preds = %52
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prli_rsp, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %122 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %123 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %121, i32 %122)
  br label %128

124:                                              ; preds = %112
  %125 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %126 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %127 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %111
  br label %134

130:                                              ; preds = %35
  %131 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %132 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %133 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %129
  br label %210

135:                                              ; preds = %1
  br label %210

136:                                              ; preds = %1
  %137 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %138 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %139 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %137, i32 %138)
  br label %210

140:                                              ; preds = %1
  br label %141

141:                                              ; preds = %1, %140
  %142 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %143 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IBMVFC_VIOS_FAILURE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %141
  %149 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %150 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IBMVFC_PLOGI_REQUIRED, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %156 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %157 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %155, i32 %156)
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %192

160:                                              ; preds = %148, %141
  %161 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %162 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %167 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %168 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %166, i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %191

171:                                              ; preds = %160
  %172 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %173 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %176 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ibmvfc_retry_cmd(i32 %174, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %182 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %183 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %181, i32 %182)
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %9, align 4
  br label %190

186:                                              ; preds = %171
  %187 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %188 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %189 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %180
  br label %191

191:                                              ; preds = %190, %165
  br label %192

192:                                              ; preds = %191, %154
  %193 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %196 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %199 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ibmvfc_get_cmd_error(i32 %197, i32 %200)
  %202 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %203 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %206 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @tgt_log(%struct.ibmvfc_target* %193, i32 %194, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %201, i32 %204, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %192, %136, %135, %134
  %211 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %212 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %211, i32 0, i32 1
  %213 = load i32, i32* @ibmvfc_release_tgt, align 4
  %214 = call i32 @kref_put(i32* %212, i32 %213)
  %215 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %216 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %215)
  %217 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %218 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %217, i32 0, i32 0
  %219 = call i32 @wake_up(i32* %218)
  ret void
}

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_prli_rsp(i32) #1

declare dso_local i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_cmd(i32, i32) #1

declare dso_local i32 @tgt_log(%struct.ibmvfc_target*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
