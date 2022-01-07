; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_rtv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_rtv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_3__, %struct.fc_lport* }
%struct.TYPE_3__ = type { i32 }
%struct.fc_lport = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Port entered RTV state from %s state\0A\00", align 1
@RPORT_ST_RTV = common dso_local global i32 0, align 4
@ELS_RTV = common dso_local global i32 0, align 4
@fc_rport_rtv_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @fc_rport_enter_rtv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_enter_rtv(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  %3 = alloca %struct.fc_frame.0*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %5 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %5, i32 0, i32 2
  %7 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  store %struct.fc_lport* %7, %struct.fc_lport** %4, align 8
  %8 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %9 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %10 = call i32 @fc_rport_state(%struct.fc_rport_priv* %9)
  %11 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %13 = load i32, i32* @RPORT_ST_RTV, align 4
  %14 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %12, i32 %13)
  %15 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %16 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %15, i32 4)
  store %struct.fc_frame.0* %16, %struct.fc_frame.0** %3, align 8
  %17 = load %struct.fc_frame.0*, %struct.fc_frame.0** %3, align 8
  %18 = icmp ne %struct.fc_frame.0* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %21 = load %struct.fc_frame.0*, %struct.fc_frame.0** %3, align 8
  %22 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %20, %struct.fc_frame.0* %21)
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)** %26, align 8
  %28 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %30 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fc_frame.0*, %struct.fc_frame.0** %3, align 8
  %34 = bitcast %struct.fc_frame.0* %33 to %struct.fc_frame*
  %35 = load i32, i32* @ELS_RTV, align 4
  %36 = load i32, i32* @fc_rport_rtv_resp, align 4
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %38 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 2, %40
  %42 = call i32 %27(%struct.fc_lport* %28, i32 %32, %struct.fc_frame* %34, i32 %35, i32 %36, %struct.fc_rport_priv* %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %23
  %45 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %46 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %45, %struct.fc_frame.0* null)
  br label %51

47:                                               ; preds = %23
  %48 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %49 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %48, i32 0, i32 0
  %50 = call i32 @kref_get(i32* %49)
  br label %51

51:                                               ; preds = %19, %47, %44
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_rport_error_retry(%struct.fc_rport_priv*, %struct.fc_frame.0*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
