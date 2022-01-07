; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_disc_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_disc_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)* }
%struct.fc_frame = type opaque
%struct.fc_seq_els_data = type { i32, i32 }
%struct.fc_frame.0 = type { i32 }

@ELS_RJT_UNSUP = common dso_local global i32 0, align 4
@ELS_EXPL_NONE = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.0*)* @fcoe_ctlr_disc_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_disc_recv(%struct.fc_lport* %0, %struct.fc_frame.0* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  %5 = alloca %struct.fc_seq_els_data, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.0* %1, %struct.fc_frame.0** %4, align 8
  %6 = load i32, i32* @ELS_RJT_UNSUP, align 4
  %7 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %5, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @ELS_EXPL_NONE, align 4
  %9 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %11 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %12, align 8
  %14 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %15 = bitcast %struct.fc_frame.0* %14 to %struct.fc_frame*
  %16 = load i32, i32* @ELS_LS_RJT, align 4
  %17 = call i32 %13(%struct.fc_frame* %15, i32 %16, %struct.fc_seq_els_data* %5)
  %18 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %19 = call i32 @fc_frame_free(%struct.fc_frame.0* %18)
  ret void
}

declare dso_local i32 @fc_frame_free(%struct.fc_frame.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
