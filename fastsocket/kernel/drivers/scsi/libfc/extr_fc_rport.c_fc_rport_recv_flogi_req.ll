; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_flogi_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_flogi_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, %struct.TYPE_4__, i64, %struct.fc_disc }
%struct.TYPE_4__ = type { i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, %struct.fc_rport_priv* (%struct.fc_lport.2*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_seq_els_data = type { i8*, i8* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_rport_priv = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.fc_lport.2 = type opaque
%struct.fc_disc = type { i32 }
%struct.fc_frame.3 = type { i32 }
%struct.fc_els_flogi = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Received FLOGI request\0A\00", align 1
@ELS_RJT_UNSUP = common dso_local global i8* null, align 8
@ELS_EXPL_NONE = common dso_local global i8* null, align 8
@ELS_RJT_LOGIC = common dso_local global i8* null, align 8
@ELS_EXPL_INV_LEN = common dso_local global i8* null, align 8
@ELS_RJT_FIP = common dso_local global i8* null, align 8
@ELS_EXPL_NOT_NEIGHBOR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Received FLOGI in %s state\0A\00", align 1
@RPORT_EV_LOGO = common dso_local global i32 0, align 4
@ELS_RJT_BUSY = common dso_local global i8* null, align 8
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_rport_recv_flogi_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_flogi_req(%struct.fc_lport* %0, %struct.fc_frame.3* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.3*, align 8
  %5 = alloca %struct.fc_disc*, align 8
  %6 = alloca %struct.fc_els_flogi*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_frame.3*, align 8
  %9 = alloca %struct.fc_seq_els_data, align 8
  %10 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.3* %1, %struct.fc_frame.3** %4, align 8
  %11 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  store %struct.fc_frame.3* %11, %struct.fc_frame.3** %8, align 8
  %12 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %13 = call i32 @fc_frame_sid(%struct.fc_frame.3* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 3
  store %struct.fc_disc* %18, %struct.fc_disc** %5, align 8
  %19 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %20 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** @ELS_RJT_UNSUP, align 8
  %28 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %30 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  br label %160

31:                                               ; preds = %2
  %32 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %33 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.3* %32, i32 4)
  store %struct.fc_els_flogi* %33, %struct.fc_els_flogi** %6, align 8
  %34 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %6, align 8
  %35 = icmp ne %struct.fc_els_flogi* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** @ELS_RJT_LOGIC, align 8
  %38 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @ELS_EXPL_INV_LEN, align 8
  %40 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %160

41:                                               ; preds = %31
  %42 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %43 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.fc_rport_priv* (%struct.fc_lport.2*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport.2*, i32)** %44, align 8
  %46 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %47 = bitcast %struct.fc_lport* %46 to %struct.fc_lport.2*
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.fc_rport_priv* %45(%struct.fc_lport.2* %47, i32 %48)
  store %struct.fc_rport_priv* %49, %struct.fc_rport_priv** %7, align 8
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %51 = icmp ne %struct.fc_rport_priv* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load i8*, i8** @ELS_RJT_FIP, align 8
  %54 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** @ELS_EXPL_NOT_NEIGHBOR, align 8
  %56 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  br label %160

57:                                               ; preds = %41
  %58 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %59 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %62 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %63 = call i32 @fc_rport_state(%struct.fc_rport_priv* %62)
  %64 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %66 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %95 [
    i32 133, label %68
    i32 135, label %75
    i32 134, label %83
    i32 131, label %83
    i32 132, label %83
    i32 130, label %84
    i32 128, label %84
    i32 129, label %84
    i32 136, label %84
  ]

68:                                               ; preds = %57
  %69 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %70 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %95

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %57, %74
  %76 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %77 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i8*, i8** @ELS_RJT_FIP, align 8
  %80 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** @ELS_EXPL_NOT_NEIGHBOR, align 8
  %82 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  br label %160

83:                                               ; preds = %57, %57, %57
  br label %95

84:                                               ; preds = %57, %57, %57, %57
  %85 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %86 = load i32, i32* @RPORT_EV_LOGO, align 4
  %87 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %85, i32 %86)
  %88 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %89 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i8*, i8** @ELS_RJT_BUSY, align 8
  %92 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %94 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %93, i8** %94, align 8
  br label %160

95:                                               ; preds = %57, %83, %73
  %96 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %97 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %98 = call i64 @fc_rport_login_complete(%struct.fc_rport_priv* %96, %struct.fc_frame.3* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %102 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i8*, i8** @ELS_RJT_LOGIC, align 8
  %105 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load i8*, i8** @ELS_EXPL_NONE, align 8
  %107 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %9, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  br label %160

108:                                              ; preds = %95
  %109 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %110 = call %struct.fc_frame.3* @fc_frame_alloc(%struct.fc_lport* %109, i32 4)
  store %struct.fc_frame.3* %110, %struct.fc_frame.3** %8, align 8
  %111 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %112 = icmp ne %struct.fc_frame.3* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %151

114:                                              ; preds = %108
  %115 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %116 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %117 = call i32 @fc_flogi_fill(%struct.fc_lport* %115, %struct.fc_frame.3* %116)
  %118 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %119 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.3* %118, i32 4)
  store %struct.fc_els_flogi* %119, %struct.fc_els_flogi** %6, align 8
  %120 = load i32, i32* @ELS_LS_ACC, align 4
  %121 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %6, align 8
  %122 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %124 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %125 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %126 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.3* %123, %struct.fc_frame.3* %124, i32 %125, i32 0)
  %127 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %128 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)** %129, align 8
  %131 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %132 = bitcast %struct.fc_lport* %131 to %struct.fc_lport.0*
  %133 = load %struct.fc_frame.3*, %struct.fc_frame.3** %8, align 8
  %134 = bitcast %struct.fc_frame.3* %133 to %struct.fc_frame.1*
  %135 = call i32 %130(%struct.fc_lport.0* %132, %struct.fc_frame.1* %134)
  %136 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %137 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %141 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %114
  %145 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %146 = call i32 @fc_rport_enter_plogi(%struct.fc_rport_priv* %145)
  br label %150

147:                                              ; preds = %114
  %148 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %149 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %148, i32 131)
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %113
  %152 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %153 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %152, i32 0, i32 1
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %156 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %159 = call i32 @fc_frame_free(%struct.fc_frame.3* %158)
  br label %174

160:                                              ; preds = %100, %84, %75, %52, %36, %26
  %161 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %162 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %165 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %166, align 8
  %168 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %169 = bitcast %struct.fc_frame.3* %168 to %struct.fc_frame*
  %170 = load i32, i32* @ELS_LS_RJT, align 4
  %171 = call i32 %167(%struct.fc_frame* %169, i32 %170, %struct.fc_seq_els_data* %9)
  %172 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %173 = call i32 @fc_frame_free(%struct.fc_frame.3* %172)
  br label %174

174:                                              ; preds = %160, %151
  ret void
}

declare dso_local i32 @fc_frame_sid(%struct.fc_frame.3*) #1

declare dso_local i32 @FC_RPORT_ID_DBG(%struct.fc_lport*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame.3*, i32) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_rport_enter_delete(%struct.fc_rport_priv*, i32) #1

declare dso_local i64 @fc_rport_login_complete(%struct.fc_rport_priv*, %struct.fc_frame.3*) #1

declare dso_local %struct.fc_frame.3* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_flogi_fill(%struct.fc_lport*, %struct.fc_frame.3*) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.3*, %struct.fc_frame.3*, i32, i32) #1

declare dso_local i32 @fc_rport_enter_plogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
