; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_scr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Entered SCR state from %s state\0A\00", align 1
@LPORT_ST_SCR = common dso_local global i32 0, align 4
@FC_FID_FCTRL = common dso_local global i32 0, align 4
@ELS_SCR = common dso_local global i32 0, align 4
@fc_lport_scr_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_scr(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_frame.1*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %6 = call i32 @fc_lport_state(%struct.fc_lport* %5)
  %7 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %9 = load i32, i32* @LPORT_ST_SCR, align 4
  %10 = call i32 @fc_lport_state_enter(%struct.fc_lport* %8, i32 %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %12 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %11, i32 4)
  store %struct.fc_frame.1* %12, %struct.fc_frame.1** %3, align 8
  %13 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  %14 = icmp ne %struct.fc_frame.1* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %17 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  %18 = call i32 @fc_lport_error(%struct.fc_lport* %16, %struct.fc_frame.1* %17)
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %21 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)*, i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)** %22, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %25 = bitcast %struct.fc_lport* %24 to %struct.fc_lport.0*
  %26 = load i32, i32* @FC_FID_FCTRL, align 4
  %27 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  %28 = bitcast %struct.fc_frame.1* %27 to %struct.fc_frame*
  %29 = load i32, i32* @ELS_SCR, align 4
  %30 = load i32, i32* @fc_lport_scr_resp, align 4
  %31 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %32 = bitcast %struct.fc_lport* %31 to %struct.fc_lport.0*
  %33 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %34 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 2, %35
  %37 = call i32 %23(%struct.fc_lport.0* %25, i32 %26, %struct.fc_frame* %28, i32 %29, i32 %30, %struct.fc_lport.0* %32, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %19
  %40 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %41 = call i32 @fc_lport_error(%struct.fc_lport* %40, %struct.fc_frame.1* null)
  br label %42

42:                                               ; preds = %15, %39, %19
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_lport_error(%struct.fc_lport*, %struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
