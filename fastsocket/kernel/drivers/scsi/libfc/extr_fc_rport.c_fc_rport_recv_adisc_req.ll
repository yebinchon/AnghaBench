; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_adisc_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_adisc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport*, %struct.fc_frame*)*, i32 (%struct.fc_frame.0*, i32, %struct.fc_seq_els_data*)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type opaque
%struct.fc_seq_els_data = type { i32, i32 }
%struct.fc_frame.1 = type { i32 }
%struct.fc_els_adisc = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Received ADISC request\0A\00", align 1
@ELS_RJT_PROT = common dso_local global i32 0, align 4
@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, %struct.fc_frame.1*)* @fc_rport_recv_adisc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_adisc_req(%struct.fc_rport_priv* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_frame.1*, align 8
  %7 = alloca %struct.fc_els_adisc*, align 8
  %8 = alloca %struct.fc_seq_els_data, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %9 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %10 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %9, i32 0, i32 0
  %11 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  store %struct.fc_lport* %11, %struct.fc_lport** %5, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %13 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %15 = call %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame.1* %14, i32 4)
  store %struct.fc_els_adisc* %15, %struct.fc_els_adisc** %7, align 8
  %16 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %7, align 8
  %17 = icmp ne %struct.fc_els_adisc* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ELS_RJT_PROT, align 4
  %20 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  %22 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.fc_frame.0*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame.0*, i32, %struct.fc_seq_els_data*)** %25, align 8
  %27 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %28 = bitcast %struct.fc_frame.1* %27 to %struct.fc_frame.0*
  %29 = load i32, i32* @ELS_LS_RJT, align 4
  %30 = call i32 %26(%struct.fc_frame.0* %28, i32 %29, %struct.fc_seq_els_data* %8)
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %33 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %32, i32 4)
  store %struct.fc_frame.1* %33, %struct.fc_frame.1** %6, align 8
  %34 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %35 = icmp ne %struct.fc_frame.1* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %58

37:                                               ; preds = %31
  %38 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %39 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %40 = call i32 @fc_adisc_fill(%struct.fc_lport* %38, %struct.fc_frame.1* %39)
  %41 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %42 = call %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame.1* %41, i32 4)
  store %struct.fc_els_adisc* %42, %struct.fc_els_adisc** %7, align 8
  %43 = load i32, i32* @ELS_LS_ACC, align 4
  %44 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %7, align 8
  %45 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %47 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %48 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %49 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.1* %46, %struct.fc_frame.1* %47, i32 %48, i32 0)
  %50 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %51 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.fc_lport*, %struct.fc_frame*)*, i32 (%struct.fc_lport*, %struct.fc_frame*)** %52, align 8
  %54 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %55 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %56 = bitcast %struct.fc_frame.1* %55 to %struct.fc_frame*
  %57 = call i32 %53(%struct.fc_lport* %54, %struct.fc_frame* %56)
  br label %58

58:                                               ; preds = %37, %36, %18
  %59 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %60 = call i32 @fc_frame_free(%struct.fc_frame.1* %59)
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*) #1

declare dso_local %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame.1*, i32) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_adisc_fill(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.1*, %struct.fc_frame.1*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
