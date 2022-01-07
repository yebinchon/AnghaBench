; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_flogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_4__, %struct.fc_lport* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_lport = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Entered FLOGI state from %s state\0A\00", align 1
@RPORT_ST_FLOGI = common dso_local global i32 0, align 4
@ELS_FLOGI = common dso_local global i32 0, align 4
@fc_rport_flogi_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @fc_rport_enter_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_enter_flogi(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %5 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %5, i32 0, i32 2
  %7 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  store %struct.fc_lport* %7, %struct.fc_lport** %3, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %9 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  call void @fc_rport_enter_plogi(%struct.fc_rport_priv* %13)
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %17 = call i32 @fc_rport_state(%struct.fc_rport_priv* %16)
  %18 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %20 = load i32, i32* @RPORT_ST_FLOGI, align 4
  %21 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %19, i32 %20)
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %22, i32 4)
  store %struct.fc_frame.0* %23, %struct.fc_frame.0** %4, align 8
  %24 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %25 = icmp ne %struct.fc_frame.0* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %28 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  call void @fc_rport_error_retry(%struct.fc_rport_priv* %27, %struct.fc_frame.0* %28)
  br label %56

29:                                               ; preds = %14
  %30 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)** %32, align 8
  %34 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %35 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %36 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %40 = bitcast %struct.fc_frame.0* %39 to %struct.fc_frame*
  %41 = load i32, i32* @ELS_FLOGI, align 4
  %42 = load i32, i32* @fc_rport_flogi_resp, align 4
  %43 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %44 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %45 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 2, %46
  %48 = call i32 %33(%struct.fc_lport* %34, i32 %38, %struct.fc_frame* %40, i32 %41, i32 %42, %struct.fc_rport_priv* %43, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %29
  %51 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  call void @fc_rport_error_retry(%struct.fc_rport_priv* %51, %struct.fc_frame.0* null)
  br label %56

52:                                               ; preds = %29
  %53 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %54 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %53, i32 0, i32 0
  %55 = call i32 @kref_get(i32* %54)
  br label %56

56:                                               ; preds = %12, %26, %52, %50
  ret void
}

declare dso_local void @fc_rport_enter_plogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local void @fc_rport_error_retry(%struct.fc_rport_priv*, %struct.fc_frame.0*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
