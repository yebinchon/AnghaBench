; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_async_link_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_async_link_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32 }
%struct.be_async_event_link_state = type { i32, i64, i32 }

@ASYNC_EVENT_LINK_DOWN = common dso_local global i32 0, align 4
@ASYNC_EVENT_LOGICAL = common dso_local global i32 0, align 4
@BEISCSI_PHY_LINK_FAULT_NONE = common dso_local global i64 0, align 8
@BE_ADAPTER_LINK_DOWN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BC_%d : Link Down on Port %d\0A\00", align 1
@be2iscsi_fail_session = common dso_local global i32 0, align 4
@ASYNC_EVENT_LINK_UP = common dso_local global i32 0, align 4
@BE_ADAPTER_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BC_%d : Link UP on Port %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_async_link_state_process(%struct.beiscsi_hba* %0, %struct.be_async_event_link_state* %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_async_event_link_state*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store %struct.be_async_event_link_state* %1, %struct.be_async_event_link_state** %4, align 8
  %5 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %6 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ASYNC_EVENT_LINK_DOWN, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %12 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ASYNC_EVENT_LOGICAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %19 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BEISCSI_PHY_LINK_FAULT_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @BE_ADAPTER_LINK_DOWN, align 4
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %26 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %28 = load i32, i32* @KERN_ERR, align 4
  %29 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %30 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %33 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @beiscsi_log(%struct.beiscsi_hba* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @be2iscsi_fail_session, align 4
  %40 = call i32 @iscsi_host_for_each_session(i32 %38, i32 %39)
  br label %75

41:                                               ; preds = %17, %10
  %42 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %43 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ASYNC_EVENT_LINK_UP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %41
  %49 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %50 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ASYNC_EVENT_LOGICAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %48
  %56 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %57 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BEISCSI_PHY_LINK_FAULT_NONE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55, %41
  %62 = load i32, i32* @BE_ADAPTER_UP, align 4
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %64 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %68 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.be_async_event_link_state*, %struct.be_async_event_link_state** %4, align 8
  %71 = getelementptr inbounds %struct.be_async_event_link_state, %struct.be_async_event_link_state* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @beiscsi_log(%struct.beiscsi_hba* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %61, %55, %48
  br label %75

75:                                               ; preds = %74, %23
  ret void
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @iscsi_host_for_each_session(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
