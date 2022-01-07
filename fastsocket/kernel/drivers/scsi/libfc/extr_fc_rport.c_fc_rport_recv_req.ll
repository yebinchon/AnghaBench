; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_req.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.0*)* @fc_rport_recv_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_req(%struct.fc_lport* %0, %struct.fc_frame.0* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  %5 = alloca %struct.fc_seq_els_data, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.0* %1, %struct.fc_frame.0** %4, align 8
  %6 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %7 = call i32 @fc_frame_payload_op(%struct.fc_frame.0* %6)
  switch i32 %7, label %24 [
    i32 135, label %8
    i32 133, label %12
    i32 134, label %16
    i32 132, label %20
    i32 131, label %20
    i32 136, label %20
    i32 128, label %20
    i32 130, label %20
    i32 129, label %20
  ]

8:                                                ; preds = %2
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %11 = call i32 @fc_rport_recv_flogi_req(%struct.fc_lport* %9, %struct.fc_frame.0* %10)
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %14 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %15 = call i32 @fc_rport_recv_plogi_req(%struct.fc_lport* %13, %struct.fc_frame.0* %14)
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %19 = call i32 @fc_rport_recv_logo_req(%struct.fc_lport* %17, %struct.fc_frame.0* %18)
  br label %39

20:                                               ; preds = %2, %2, %2, %2, %2, %2
  %21 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %22 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %23 = call i32 @fc_rport_recv_els_req(%struct.fc_lport* %21, %struct.fc_frame.0* %22)
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* @ELS_RJT_UNSUP, align 4
  %26 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ELS_EXPL_NONE, align 4
  %28 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %30 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %31, align 8
  %33 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %34 = bitcast %struct.fc_frame.0* %33 to %struct.fc_frame*
  %35 = load i32, i32* @ELS_LS_RJT, align 4
  %36 = call i32 %32(%struct.fc_frame* %34, i32 %35, %struct.fc_seq_els_data* %5)
  %37 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %38 = call i32 @fc_frame_free(%struct.fc_frame.0* %37)
  br label %39

39:                                               ; preds = %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame.0*) #1

declare dso_local i32 @fc_rport_recv_flogi_req(%struct.fc_lport*, %struct.fc_frame.0*) #1

declare dso_local i32 @fc_rport_recv_plogi_req(%struct.fc_lport*, %struct.fc_frame.0*) #1

declare dso_local i32 @fc_rport_recv_logo_req(%struct.fc_lport*, %struct.fc_frame.0*) #1

declare dso_local i32 @fc_rport_recv_els_req(%struct.fc_lport*, %struct.fc_frame.0*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
