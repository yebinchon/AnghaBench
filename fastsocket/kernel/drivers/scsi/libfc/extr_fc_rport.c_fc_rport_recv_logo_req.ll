; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_logo_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_logo_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)*, i32 (%struct.fc_frame*, i32, i32*)* }
%struct.fc_rport_priv = type { i32 }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }

@ELS_LS_ACC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Received LOGO request while in state %s\0A\00", align 1
@RPORT_EV_LOGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Received LOGO from non-logged-in port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.1*)* @fc_rport_recv_logo_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_logo_req(%struct.fc_lport* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32 (%struct.fc_frame*, i32, i32*)*, i32 (%struct.fc_frame*, i32, i32*)** %9, align 8
  %11 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %12 = bitcast %struct.fc_frame.1* %11 to %struct.fc_frame*
  %13 = load i32, i32* @ELS_LS_ACC, align 4
  %14 = call i32 %10(%struct.fc_frame* %12, i32 %13, i32* null)
  %15 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %16 = call i32 @fc_frame_sid(%struct.fc_frame.1* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %22 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)** %23, align 8
  %25 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %26 = bitcast %struct.fc_lport* %25 to %struct.fc_lport.0*
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.fc_rport_priv* %24(%struct.fc_lport.0* %26, i32 %27)
  store %struct.fc_rport_priv* %28, %struct.fc_rport_priv** %5, align 8
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %30 = icmp ne %struct.fc_rport_priv* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %33 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %37 = call i32 @fc_rport_state(%struct.fc_rport_priv* %36)
  %38 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %40 = load i32, i32* @RPORT_EV_LOGO, align 4
  %41 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %39, i32 %40)
  %42 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %43 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %46, i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %31
  %50 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %51 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %55 = call i32 @fc_frame_free(%struct.fc_frame.1* %54)
  ret void
}

declare dso_local i32 @fc_frame_sid(%struct.fc_frame.1*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_delete(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @FC_RPORT_ID_DBG(%struct.fc_lport*, i32, i8*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
