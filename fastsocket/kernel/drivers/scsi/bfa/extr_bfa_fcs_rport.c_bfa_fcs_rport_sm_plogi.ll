; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_plogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@bfa_fcs_rport_sm_fc4_fcs_online = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FCS_RPORT_MAX_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_plogi_retry = common dso_local global i32 0, align 4
@bfa_fcs_rport_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@rport_del_max_plogi_retry = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_rport_del_timeout = common dso_local global i32 0, align 4
@FC_RA_TOV = common dso_local global i32 0, align 4
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_nsdisc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_plogiacc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_plogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_plogi(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_6__* %7, i32 %10)
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_6__* %14, i32 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(%struct.TYPE_6__* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %217 [
    i32 140, label %25
    i32 134, label %33
    i32 130, label %36
    i32 136, label %50
    i32 128, label %103
    i32 129, label %104
    i32 131, label %123
    i32 135, label %141
    i32 139, label %162
    i32 137, label %162
    i32 132, label %187
    i32 138, label %197
    i32 133, label %207
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_rport_sm_fc4_fcs_online, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %26, i32 %27)
  %29 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %29, i32 0, i32 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %32 = call i32 @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s* %31)
  br label %223

33:                                               ; preds = %2
  %34 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %35 = call i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s* %34)
  br label %36

36:                                               ; preds = %2, %33
  %37 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BFA_TRUE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %44 = call i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bfa_fcxp_discard(i32 %48)
  br label %50

50:                                               ; preds = %2, %45
  %51 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BFA_FCS_RPORT_MAX_RETRIES, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %62 = load i32, i32* @bfa_fcs_rport_sm_plogi_retry, align 4
  %63 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %61, i32 %62)
  %64 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %69, i32 0, i32 7
  %71 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %72 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %73 = load i32, i32* @BFA_FCS_RETRY_TIMEOUT, align 4
  %74 = call i32 @bfa_timer_start(i32 %68, i32* %70, i32 %71, %struct.bfa_fcs_rport_s* %72, i32 %73)
  br label %102

75:                                               ; preds = %50
  %76 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %77 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %76, i32 0, i32 6
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* @rport_del_max_plogi_retry, align 4
  %80 = call i32 @bfa_stats(%struct.TYPE_7__* %78, i32 %79)
  %81 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %82 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %85 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %87 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %89 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %90 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %88, i32 %89)
  %91 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %97 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %96, i32 0, i32 7
  %98 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %99 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %100 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %101 = call i32 @bfa_timer_start(i32 %95, i32* %97, i32 %98, %struct.bfa_fcs_rport_s* %99, i32 %100)
  br label %102

102:                                              ; preds = %75, %56
  br label %223

103:                                              ; preds = %2
  br label %223

104:                                              ; preds = %2
  %105 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %106 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %107 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %105, i32 %106)
  %108 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %109 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @bfa_fcxp_discard(i32 %110)
  %112 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %113 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %118 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %117, i32 0, i32 7
  %119 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %120 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %121 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %122 = call i32 @bfa_timer_start(i32 %116, i32* %118, i32 %119, %struct.bfa_fcs_rport_s* %120, i32 %121)
  br label %223

123:                                              ; preds = %2
  %124 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %125 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %124, i32 0, i32 8
  store i32 0, i32* %125, align 4
  %126 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %127 = load i32, i32* @bfa_fcs_rport_sm_plogi_retry, align 4
  %128 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %126, i32 %127)
  %129 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %130 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %129, i32 0, i32 3
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %135 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %134, i32 0, i32 7
  %136 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %137 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %138 = load i32, i32* @FC_RA_TOV, align 4
  %139 = mul nsw i32 %138, 1000
  %140 = call i32 @bfa_timer_start(i32 %133, i32* %135, i32 %136, %struct.bfa_fcs_rport_s* %137, i32 %139)
  br label %223

141:                                              ; preds = %2
  %142 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %143 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %145 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %146 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %144, i32 %145)
  %147 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %148 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @bfa_fcxp_discard(i32 %149)
  %151 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %152 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %151, i32 0, i32 3
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %157 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %156, i32 0, i32 7
  %158 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %159 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %160 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %161 = call i32 @bfa_timer_start(i32 %155, i32* %157, i32 %158, %struct.bfa_fcs_rport_s* %159, i32 %160)
  br label %223

162:                                              ; preds = %2, %2
  %163 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %164 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @bfa_fcxp_discard(i32 %165)
  %167 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %168 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %167, i32 0, i32 6
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @bfa_fcport_get_topology(i32 %173)
  %175 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %176 = icmp ne i32 %174, %175
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @WARN_ON(i32 %178)
  %180 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %181 = load i32, i32* @bfa_fcs_rport_sm_nsdisc_sending, align 4
  %182 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %180, i32 %181)
  %183 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %184 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %183, i32 0, i32 5
  store i32 0, i32* %184, align 4
  %185 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %186 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %185, i32* null)
  br label %223

187:                                              ; preds = %2
  %188 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %189 = load i32, i32* @bfa_fcs_rport_sm_plogiacc_sending, align 4
  %190 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %188, i32 %189)
  %191 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %192 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @bfa_fcxp_discard(i32 %193)
  %195 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %196 = call i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s* %195, i32* null)
  br label %223

197:                                              ; preds = %2
  %198 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %199 = load i32, i32* @bfa_fcs_rport_sm_uninit, align 4
  %200 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %198, i32 %199)
  %201 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %202 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @bfa_fcxp_discard(i32 %203)
  %205 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %206 = call i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s* %205)
  br label %223

207:                                              ; preds = %2
  %208 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %209 = load i32, i32* @bfa_fcs_rport_sm_fc4_fcs_online, align 4
  %210 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %208, i32 %209)
  %211 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %212 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @bfa_fcxp_discard(i32 %213)
  %215 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %216 = call i32 @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s* %215)
  br label %223

217:                                              ; preds = %2
  %218 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %219 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %218, i32 0, i32 3
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @bfa_sm_fault(%struct.TYPE_6__* %220, i32 %221)
  br label %223

223:                                              ; preds = %217, %207, %197, %187, %162, %141, %123, %104, %103, %102, %25
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_stats(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_fcport_get_topology(i32) #1

declare dso_local i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
