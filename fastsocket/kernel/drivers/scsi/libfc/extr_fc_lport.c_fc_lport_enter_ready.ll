; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32, %struct.fc_lport.0*)* }
%struct.fc_lport.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"Entered READY from state %s\0A\00", align 1
@LPORT_ST_READY = common dso_local global i32 0, align 4
@FC_VPORT_ACTIVE = common dso_local global i32 0, align 4
@fc_lport_disc_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_ready(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = call i32 @fc_lport_state(%struct.fc_lport* %4)
  %6 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = load i32, i32* @LPORT_ST_READY, align 4
  %9 = call i32 @fc_lport_state_enter(%struct.fc_lport* %7, i32 %8)
  %10 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %11 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @FC_VPORT_ACTIVE, align 4
  %19 = call i32 @fc_vport_set_state(i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %22 = call i32 @fc_vports_linkchange(%struct.fc_lport* %21)
  %23 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct.fc_lport.0*)*, i32 (i32, %struct.fc_lport.0*)** %30, align 8
  %32 = load i32, i32* @fc_lport_disc_callback, align 4
  %33 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %34 = bitcast %struct.fc_lport* %33 to %struct.fc_lport.0*
  %35 = call i32 %31(i32 %32, %struct.fc_lport.0* %34)
  br label %36

36:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_vport_set_state(i64, i32) #1

declare dso_local i32 @fc_vports_linkchange(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
