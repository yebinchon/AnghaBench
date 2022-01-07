; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_plogi_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_plogi_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_4__, i32, i8*, %struct.fc_disc }
%struct.TYPE_4__ = type { i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, %struct.fc_rport_priv* (%struct.fc_lport.2*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_seq_els_data = type { i8*, i32 }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_rport_priv = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.fc_lport.2 = type opaque
%struct.fc_disc = type { i32 }
%struct.fc_frame.3 = type { i32 }
%struct.fc_els_flogi = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Received PLOGI request\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Received PLOGI too short\0A\00", align 1
@ELS_RJT_PROT = common dso_local global i32 0, align 4
@ELS_EXPL_INV_LEN = common dso_local global i8* null, align 8
@ELS_RJT_UNAB = common dso_local global i32 0, align 4
@ELS_EXPL_INSUF_RES = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Received PLOGI in INIT state\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Received PLOGI in PLOGI_WAIT state\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Received PLOGI in PLOGI state\0A\00", align 1
@ELS_RJT_INPROG = common dso_local global i32 0, align 4
@ELS_EXPL_NONE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"Received PLOGI in logged-in state %d - ignored for now\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Received PLOGI in state %s - send busy\0A\00", align 1
@ELS_RJT_BUSY = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_rport_recv_plogi_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_plogi_req(%struct.fc_lport* %0, %struct.fc_frame.3* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.3*, align 8
  %5 = alloca %struct.fc_disc*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca %struct.fc_frame.3*, align 8
  %8 = alloca %struct.fc_els_flogi*, align 8
  %9 = alloca %struct.fc_seq_els_data, align 8
  %10 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.3* %1, %struct.fc_frame.3** %4, align 8
  %11 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  store %struct.fc_frame.3* %11, %struct.fc_frame.3** %7, align 8
  %12 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %13 = call i32 @fc_frame_sid(%struct.fc_frame.3* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %18 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.3* %17, i32 8)
  store %struct.fc_els_flogi* %18, %struct.fc_els_flogi** %8, align 8
  %19 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %8, align 8
  %20 = icmp ne %struct.fc_els_flogi* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %22, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ELS_RJT_PROT, align 4
  %26 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** @ELS_EXPL_INV_LEN, align 8
  %28 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  br label %158

29:                                               ; preds = %2
  %30 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 3
  store %struct.fc_disc* %31, %struct.fc_disc** %5, align 8
  %32 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %33 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.fc_rport_priv* (%struct.fc_lport.2*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport.2*, i32)** %37, align 8
  %39 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %40 = bitcast %struct.fc_lport* %39 to %struct.fc_lport.2*
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.fc_rport_priv* %38(%struct.fc_lport.2* %40, i32 %41)
  store %struct.fc_rport_priv* %42, %struct.fc_rport_priv** %6, align 8
  %43 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %44 = icmp ne %struct.fc_rport_priv* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %29
  %46 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %47 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* @ELS_RJT_UNAB, align 4
  %50 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load i8*, i8** @ELS_EXPL_INSUF_RES, align 8
  %52 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  br label %158

53:                                               ; preds = %29
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %55 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %58 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %8, align 8
  %61 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %60, i32 0, i32 1
  %62 = call i8* @get_unaligned_be64(i32* %61)
  %63 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %64 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %8, align 8
  %67 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %66, i32 0, i32 0
  %68 = call i8* @get_unaligned_be64(i32* %67)
  %69 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %70 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  %72 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %73 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %119 [
    i32 133, label %75
    i32 131, label %78
    i32 132, label %81
    i32 130, label %101
    i32 128, label %101
    i32 129, label %101
    i32 136, label %101
    i32 134, label %107
    i32 135, label %107
  ]

75:                                               ; preds = %53
  %76 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %77 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %119

78:                                               ; preds = %53
  %79 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %80 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %119

81:                                               ; preds = %53
  %82 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %83 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %85 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %89 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ult i8* %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %81
  %93 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %94 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* @ELS_RJT_INPROG, align 4
  %97 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  %98 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %99 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  br label %158

100:                                              ; preds = %81
  br label %119

101:                                              ; preds = %53, %53, %53, %53
  %102 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %103 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %104 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %119

107:                                              ; preds = %53, %53
  %108 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %109 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %110 = call i32 @fc_rport_state(%struct.fc_rport_priv* %109)
  %111 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %108, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %113 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* @ELS_RJT_BUSY, align 4
  %116 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i32 %115, i32* %116, align 8
  %117 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %118 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %117, i8** %118, align 8
  br label %158

119:                                              ; preds = %53, %101, %100, %78, %75
  %120 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %8, align 8
  %121 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %122 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @fc_plogi_get_maxframe(%struct.fc_els_flogi* %120, i32 %123)
  %125 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %126 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %128 = call %struct.fc_frame.3* @fc_frame_alloc(%struct.fc_lport* %127, i32 8)
  store %struct.fc_frame.3* %128, %struct.fc_frame.3** %7, align 8
  %129 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %130 = icmp ne %struct.fc_frame.3* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %119
  br label %152

132:                                              ; preds = %119
  %133 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %134 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %135 = load i32, i32* @ELS_LS_ACC, align 4
  %136 = call i32 @fc_plogi_fill(%struct.fc_lport* %133, %struct.fc_frame.3* %134, i32 %135)
  %137 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %138 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %139 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %140 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.3* %137, %struct.fc_frame.3* %138, i32 %139, i32 0)
  %141 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %142 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)** %143, align 8
  %145 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %146 = bitcast %struct.fc_lport* %145 to %struct.fc_lport.0*
  %147 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %148 = bitcast %struct.fc_frame.3* %147 to %struct.fc_frame.1*
  %149 = call i32 %144(%struct.fc_lport.0* %146, %struct.fc_frame.1* %148)
  %150 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %151 = call i32 @fc_rport_enter_prli(%struct.fc_rport_priv* %150)
  br label %152

152:                                              ; preds = %132, %131
  %153 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %154 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %153, i32 0, i32 1
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %157 = call i32 @fc_frame_free(%struct.fc_frame.3* %156)
  br label %169

158:                                              ; preds = %107, %92, %45, %21
  %159 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %160 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %161, align 8
  %163 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %164 = bitcast %struct.fc_frame.3* %163 to %struct.fc_frame*
  %165 = load i32, i32* @ELS_LS_RJT, align 4
  %166 = call i32 %162(%struct.fc_frame* %164, i32 %165, %struct.fc_seq_els_data* %9)
  %167 = load %struct.fc_frame.3*, %struct.fc_frame.3** %7, align 8
  %168 = call i32 @fc_frame_free(%struct.fc_frame.3* %167)
  br label %169

169:                                              ; preds = %158, %152
  ret void
}

declare dso_local i32 @fc_frame_sid(%struct.fc_frame.3*) #1

declare dso_local i32 @FC_RPORT_ID_DBG(%struct.fc_lport*, i32, i8*) #1

declare dso_local %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.3*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @get_unaligned_be64(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, ...) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_plogi_get_maxframe(%struct.fc_els_flogi*, i32) #1

declare dso_local %struct.fc_frame.3* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_plogi_fill(%struct.fc_lport*, %struct.fc_frame.3*, i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.3*, %struct.fc_frame.3*, i32, i32) #1

declare dso_local i32 @fc_rport_enter_prli(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
