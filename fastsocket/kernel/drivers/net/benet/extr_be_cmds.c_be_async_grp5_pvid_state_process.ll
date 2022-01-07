; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_async_grp5_pvid_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_async_grp5_pvid_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_async_event_grp5_pvid_state = type { i32, i64 }

@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_async_event_grp5_pvid_state*)* @be_async_grp5_pvid_state_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_async_grp5_pvid_state_process(%struct.be_adapter* %0, %struct.be_async_event_grp5_pvid_state* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_async_event_grp5_pvid_state*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_async_event_grp5_pvid_state* %1, %struct.be_async_event_grp5_pvid_state** %4, align 8
  %5 = load %struct.be_async_event_grp5_pvid_state*, %struct.be_async_event_grp5_pvid_state** %4, align 8
  %6 = getelementptr inbounds %struct.be_async_event_grp5_pvid_state, %struct.be_async_event_grp5_pvid_state* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.be_async_event_grp5_pvid_state*, %struct.be_async_event_grp5_pvid_state** %4, align 8
  %11 = getelementptr inbounds %struct.be_async_event_grp5_pvid_state, %struct.be_async_event_grp5_pvid_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @le16_to_cpu(i32 %12)
  %14 = load i32, i32* @VLAN_VID_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
