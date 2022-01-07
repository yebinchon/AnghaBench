; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_async_grp5_evt_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_async_grp5_evt_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_mcc_compl = type { i32 }
%struct.be_async_event_grp5_cos_priority = type { i32 }
%struct.be_async_event_grp5_qos_link_speed = type { i32 }
%struct.be_async_event_grp5_pvid_state = type { i32 }

@ASYNC_TRAILER_EVENT_TYPE_SHIFT = common dso_local global i32 0, align 4
@ASYNC_TRAILER_EVENT_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown grp5 event!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, i32, %struct.be_mcc_compl*)* @be_async_grp5_evt_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_async_grp5_evt_process(%struct.be_adapter* %0, i32 %1, %struct.be_mcc_compl* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_mcc_compl*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.be_mcc_compl* %2, %struct.be_mcc_compl** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ASYNC_TRAILER_EVENT_TYPE_SHIFT, align 4
  %10 = ashr i32 %8, %9
  %11 = load i32, i32* @ASYNC_TRAILER_EVENT_TYPE_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %29 [
    i32 130, label %14
    i32 128, label %19
    i32 129, label %24
  ]

14:                                               ; preds = %3
  %15 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %16 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %6, align 8
  %17 = bitcast %struct.be_mcc_compl* %16 to %struct.be_async_event_grp5_cos_priority*
  %18 = call i32 @be_async_grp5_cos_priority_process(%struct.be_adapter* %15, %struct.be_async_event_grp5_cos_priority* %17)
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %21 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %6, align 8
  %22 = bitcast %struct.be_mcc_compl* %21 to %struct.be_async_event_grp5_qos_link_speed*
  %23 = call i32 @be_async_grp5_qos_speed_process(%struct.be_adapter* %20, %struct.be_async_event_grp5_qos_link_speed* %22)
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %26 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %6, align 8
  %27 = bitcast %struct.be_mcc_compl* %26 to %struct.be_async_event_grp5_pvid_state*
  %28 = call i32 @be_async_grp5_pvid_state_process(%struct.be_adapter* %25, %struct.be_async_event_grp5_pvid_state* %27)
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %29, %24, %19, %14
  ret void
}

declare dso_local i32 @be_async_grp5_cos_priority_process(%struct.be_adapter*, %struct.be_async_event_grp5_cos_priority*) #1

declare dso_local i32 @be_async_grp5_qos_speed_process(%struct.be_adapter*, %struct.be_async_event_grp5_qos_link_speed*) #1

declare dso_local i32 @be_async_grp5_pvid_state_process(%struct.be_adapter*, %struct.be_async_event_grp5_pvid_state*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
