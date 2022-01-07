; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_set_port_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_set_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fcoe_port = type { %struct.fcoe_interface* }
%struct.fcoe_interface = type { i32 }
%struct.fcoe_ctlr = type { i32 }

@ELS_FLOGI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, i32, %struct.fc_frame*)* @fcoe_set_port_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_set_port_id(%struct.fc_lport* %0, i32 %1, %struct.fc_frame* %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_frame*, align 8
  %7 = alloca %struct.fcoe_port*, align 8
  %8 = alloca %struct.fcoe_interface*, align 8
  %9 = alloca %struct.fcoe_ctlr*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fc_frame* %2, %struct.fc_frame** %6, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %11 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %10)
  store %struct.fcoe_port* %11, %struct.fcoe_port** %7, align 8
  %12 = load %struct.fcoe_port*, %struct.fcoe_port** %7, align 8
  %13 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %12, i32 0, i32 0
  %14 = load %struct.fcoe_interface*, %struct.fcoe_interface** %13, align 8
  store %struct.fcoe_interface* %14, %struct.fcoe_interface** %8, align 8
  %15 = load %struct.fcoe_interface*, %struct.fcoe_interface** %8, align 8
  %16 = call %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface* %15)
  store %struct.fcoe_ctlr* %16, %struct.fcoe_ctlr** %9, align 8
  %17 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %18 = icmp ne %struct.fc_frame* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %21 = call i64 @fc_frame_payload_op(%struct.fc_frame* %20)
  %22 = load i64, i64* @ELS_FLOGI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %9, align 8
  %26 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %27 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %28 = call i32 @fcoe_ctlr_recv_flogi(%struct.fcoe_ctlr* %25, %struct.fc_lport* %26, %struct.fc_frame* %27)
  br label %29

29:                                               ; preds = %24, %19, %3
  ret void
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @fcoe_ctlr_recv_flogi(%struct.fcoe_ctlr*, %struct.fc_lport*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
