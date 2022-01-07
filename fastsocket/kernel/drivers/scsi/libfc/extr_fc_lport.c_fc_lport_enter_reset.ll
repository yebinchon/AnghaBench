; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Entered RESET state from %s state\0A\00", align 1
@LPORT_ST_DISABLED = common dso_local global i64 0, align 8
@LPORT_ST_LOGO = common dso_local global i64 0, align 8
@FC_VPORT_INITIALIZING = common dso_local global i32 0, align 4
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@LPORT_ST_RESET = common dso_local global i32 0, align 4
@FCH_EVT_LIPRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_reset(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = call i32 @fc_lport_state(%struct.fc_lport* %4)
  %6 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LPORT_ST_DISABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPORT_ST_LOGO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  br label %63

19:                                               ; preds = %12
  %20 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %21 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @FC_VPORT_INITIALIZING, align 4
  %34 = call i32 @fc_vport_set_state(i64 %32, i32 %33)
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %40 = call i32 @fc_vport_set_state(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %44 = load i32, i32* @LPORT_ST_RESET, align 4
  %45 = call i32 @fc_lport_state_enter(%struct.fc_lport* %43, i32 %44)
  %46 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %47 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (...) @fc_get_event_number()
  %50 = load i32, i32* @FCH_EVT_LIPRESET, align 4
  %51 = call i32 @fc_host_post_event(i32 %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %53 = call i32 @fc_vports_linkchange(%struct.fc_lport* %52)
  %54 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %55 = call i32 @fc_lport_reset_locked(%struct.fc_lport* %54)
  %56 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %57 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %62 = call i32 @fc_lport_enter_flogi(%struct.fc_lport* %61)
  br label %63

63:                                               ; preds = %18, %60, %42
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_vport_set_state(i64, i32) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_host_post_event(i32, i32, i32, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @fc_vports_linkchange(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_reset_locked(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_enter_flogi(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
