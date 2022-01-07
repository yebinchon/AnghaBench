; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_logo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { %struct.TYPE_4__, %struct.fc_lport* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_lport = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Port sending LOGO from %s state\0A\00", align 1
@ELS_LOGO = common dso_local global i32 0, align 4
@fc_rport_logo_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @fc_rport_enter_logo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_enter_logo(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %5 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %5, i32 0, i32 1
  %7 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  store %struct.fc_lport* %7, %struct.fc_lport** %3, align 8
  %8 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %9 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %10 = call i32 @fc_rport_state(%struct.fc_rport_priv* %9)
  %11 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %13 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %12, i32 4)
  store %struct.fc_frame.0* %13, %struct.fc_frame.0** %4, align 8
  %14 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %15 = icmp ne %struct.fc_frame.0* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)** %20, align 8
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %24 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %28 = bitcast %struct.fc_frame.0* %27 to %struct.fc_frame*
  %29 = load i32, i32* @ELS_LOGO, align 4
  %30 = load i32, i32* @fc_rport_logo_resp, align 4
  %31 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %32 = call i32 %21(%struct.fc_lport* %22, i32 %26, %struct.fc_frame* %28, i32 %29, i32 %30, %struct.fc_lport* %31, i32 0)
  br label %33

33:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
