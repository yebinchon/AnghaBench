; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_rls_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_rls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__, %struct.fc_host_statistics, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_lport*, %struct.fc_frame.0*)*, i32 (%struct.fc_lport*, %struct.fc_els_lesb*)* }
%struct.fc_frame = type opaque
%struct.fc_seq_els_data = type { i32, i32 }
%struct.fc_frame.0 = type opaque
%struct.fc_els_lesb = type opaque
%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32 }
%struct.fc_frame.1 = type { i32 }
%struct.fc_els_rls = type { i32 }
%struct.fc_els_rls_resp = type { %struct.fc_els_lesb.2, i32 }
%struct.fc_els_lesb.2 = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"Received RLS request while in state %s\0A\00", align 1
@ELS_RJT_PROT = common dso_local global i32 0, align 4
@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_RJT_UNAB = common dso_local global i32 0, align 4
@ELS_EXPL_INSUF_RES = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, %struct.fc_frame.1*)* @fc_rport_recv_rls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_rls_req(%struct.fc_rport_priv* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_frame.1*, align 8
  %7 = alloca %struct.fc_els_rls*, align 8
  %8 = alloca %struct.fc_els_rls_resp*, align 8
  %9 = alloca %struct.fc_els_lesb.2*, align 8
  %10 = alloca %struct.fc_seq_els_data, align 4
  %11 = alloca %struct.fc_host_statistics*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %12, i32 0, i32 0
  %14 = load %struct.fc_lport*, %struct.fc_lport** %13, align 8
  store %struct.fc_lport* %14, %struct.fc_lport** %5, align 8
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %17 = call i32 @fc_rport_state(%struct.fc_rport_priv* %16)
  %18 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %20 = call i8* @fc_frame_payload_get(%struct.fc_frame.1* %19, i32 4)
  %21 = bitcast i8* %20 to %struct.fc_els_rls*
  store %struct.fc_els_rls* %21, %struct.fc_els_rls** %7, align 8
  %22 = load %struct.fc_els_rls*, %struct.fc_els_rls** %7, align 8
  %23 = icmp ne %struct.fc_els_rls* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ELS_RJT_PROT, align 4
  %26 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  %28 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %120

29:                                               ; preds = %2
  %30 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %31 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %30, i32 56)
  store %struct.fc_frame.1* %31, %struct.fc_frame.1** %6, align 8
  %32 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %33 = icmp ne %struct.fc_frame.1* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ELS_RJT_UNAB, align 4
  %36 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @ELS_EXPL_INSUF_RES, align 4
  %38 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %120

39:                                               ; preds = %29
  %40 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %41 = call i8* @fc_frame_payload_get(%struct.fc_frame.1* %40, i32 56)
  %42 = bitcast i8* %41 to %struct.fc_els_rls_resp*
  store %struct.fc_els_rls_resp* %42, %struct.fc_els_rls_resp** %8, align 8
  %43 = load %struct.fc_els_rls_resp*, %struct.fc_els_rls_resp** %8, align 8
  %44 = call i32 @memset(%struct.fc_els_rls_resp* %43, i32 0, i32 56)
  %45 = load i32, i32* @ELS_LS_ACC, align 4
  %46 = load %struct.fc_els_rls_resp*, %struct.fc_els_rls_resp** %8, align 8
  %47 = getelementptr inbounds %struct.fc_els_rls_resp, %struct.fc_els_rls_resp* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.fc_els_rls_resp*, %struct.fc_els_rls_resp** %8, align 8
  %49 = getelementptr inbounds %struct.fc_els_rls_resp, %struct.fc_els_rls_resp* %48, i32 0, i32 0
  store %struct.fc_els_lesb.2* %49, %struct.fc_els_lesb.2** %9, align 8
  %50 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %51 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32 (%struct.fc_lport*, %struct.fc_els_lesb*)*, i32 (%struct.fc_lport*, %struct.fc_els_lesb*)** %52, align 8
  %54 = icmp ne i32 (%struct.fc_lport*, %struct.fc_els_lesb*)* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %39
  %56 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %57 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32 (%struct.fc_lport*, %struct.fc_els_lesb*)*, i32 (%struct.fc_lport*, %struct.fc_els_lesb*)** %58, align 8
  %60 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %61 = load %struct.fc_els_lesb.2*, %struct.fc_els_lesb.2** %9, align 8
  %62 = bitcast %struct.fc_els_lesb.2* %61 to %struct.fc_els_lesb*
  %63 = call i32 %59(%struct.fc_lport* %60, %struct.fc_els_lesb* %62)
  br label %107

64:                                               ; preds = %39
  %65 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %66 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @fc_get_host_stats(i32 %67)
  %69 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %70 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %69, i32 0, i32 1
  store %struct.fc_host_statistics* %70, %struct.fc_host_statistics** %11, align 8
  %71 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %72 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @htonl(i32 %73)
  %75 = load %struct.fc_els_lesb.2*, %struct.fc_els_lesb.2** %9, align 8
  %76 = getelementptr inbounds %struct.fc_els_lesb.2, %struct.fc_els_lesb.2* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %78 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @htonl(i32 %79)
  %81 = load %struct.fc_els_lesb.2*, %struct.fc_els_lesb.2** %9, align 8
  %82 = getelementptr inbounds %struct.fc_els_lesb.2, %struct.fc_els_lesb.2* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %84 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @htonl(i32 %85)
  %87 = load %struct.fc_els_lesb.2*, %struct.fc_els_lesb.2** %9, align 8
  %88 = getelementptr inbounds %struct.fc_els_lesb.2, %struct.fc_els_lesb.2* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %90 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @htonl(i32 %91)
  %93 = load %struct.fc_els_lesb.2*, %struct.fc_els_lesb.2** %9, align 8
  %94 = getelementptr inbounds %struct.fc_els_lesb.2, %struct.fc_els_lesb.2* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %96 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @htonl(i32 %97)
  %99 = load %struct.fc_els_lesb.2*, %struct.fc_els_lesb.2** %9, align 8
  %100 = getelementptr inbounds %struct.fc_els_lesb.2, %struct.fc_els_lesb.2* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %11, align 8
  %102 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @htonl(i32 %103)
  %105 = load %struct.fc_els_lesb.2*, %struct.fc_els_lesb.2** %9, align 8
  %106 = getelementptr inbounds %struct.fc_els_lesb.2, %struct.fc_els_lesb.2* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %64, %55
  %108 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %109 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %110 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %111 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.1* %108, %struct.fc_frame.1* %109, i32 %110, i32 0)
  %112 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %113 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32 (%struct.fc_lport*, %struct.fc_frame.0*)*, i32 (%struct.fc_lport*, %struct.fc_frame.0*)** %114, align 8
  %116 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %117 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %118 = bitcast %struct.fc_frame.1* %117 to %struct.fc_frame.0*
  %119 = call i32 %115(%struct.fc_lport* %116, %struct.fc_frame.0* %118)
  br label %129

120:                                              ; preds = %34, %24
  %121 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %122 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %123, align 8
  %125 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %126 = bitcast %struct.fc_frame.1* %125 to %struct.fc_frame*
  %127 = load i32, i32* @ELS_LS_RJT, align 4
  %128 = call i32 %124(%struct.fc_frame* %126, i32 %127, %struct.fc_seq_els_data* %10)
  br label %129

129:                                              ; preds = %120, %107
  %130 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %131 = call i32 @fc_frame_free(%struct.fc_frame.1* %130)
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame.1*, i32) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_rls_resp*, i32, i32) #1

declare dso_local i32 @fc_get_host_stats(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.1*, %struct.fc_frame.1*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
