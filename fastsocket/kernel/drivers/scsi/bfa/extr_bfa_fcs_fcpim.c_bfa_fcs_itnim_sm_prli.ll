; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { %struct.TYPE_4__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BFA_RPORT_INITIATOR = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_initiator = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_hal_rport_online = common dso_local global i32 0, align 4
@RPSM_EVENT_FC4_FCS_ONLINE = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_prli_retry = common dso_local global i32 0, align 4
@bfa_fcs_itnim_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_offline = common dso_local global i32 0, align 4
@RPSM_EVENT_FC4_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_itnim_s*, i32)* @bfa_fcs_itnim_sm_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_sm_prli(%struct.bfa_fcs_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(%struct.TYPE_4__* %7, i32 %12)
  %14 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_4__* %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %97 [
    i32 128, label %20
    i32 130, label %42
    i32 129, label %57
    i32 131, label %61
    i32 132, label %74
    i32 133, label %87
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BFA_RPORT_INITIATOR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %30 = load i32, i32* @bfa_fcs_itnim_sm_initiator, align 4
  %31 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %29, i32 %30)
  br label %36

32:                                               ; preds = %20
  %33 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %34 = load i32, i32* @bfa_fcs_itnim_sm_hal_rport_online, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* @RPSM_EVENT_FC4_FCS_ONLINE, align 4
  %41 = call i32 @bfa_sm_send_event(%struct.TYPE_5__* %39, i32 %40)
  br label %103

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %44 = load i32, i32* @bfa_fcs_itnim_sm_prli_retry, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %43, i32 %44)
  %46 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %51, i32 0, i32 3
  %53 = load i32, i32* @bfa_fcs_itnim_timeout, align 4
  %54 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %55 = load i32, i32* @BFA_FCS_RETRY_TIMEOUT, align 4
  %56 = call i32 @bfa_timer_start(i32 %50, i32* %52, i32 %53, %struct.bfa_fcs_itnim_s* %54, i32 %55)
  br label %103

57:                                               ; preds = %2
  %58 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %59 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %60 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %58, i32 %59)
  br label %103

61:                                               ; preds = %2
  %62 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %63 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %64 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %62, i32 %63)
  %65 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bfa_fcxp_discard(i32 %67)
  %69 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* @RPSM_EVENT_FC4_OFFLINE, align 4
  %73 = call i32 @bfa_sm_send_event(%struct.TYPE_5__* %71, i32 %72)
  br label %103

74:                                               ; preds = %2
  %75 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %76 = load i32, i32* @bfa_fcs_itnim_sm_initiator, align 4
  %77 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %75, i32 %76)
  %78 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bfa_fcxp_discard(i32 %80)
  %82 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* @RPSM_EVENT_FC4_FCS_ONLINE, align 4
  %86 = call i32 @bfa_sm_send_event(%struct.TYPE_5__* %84, i32 %85)
  br label %103

87:                                               ; preds = %2
  %88 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %89 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %90 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %88, i32 %89)
  %91 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bfa_fcxp_discard(i32 %93)
  %95 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %96 = call i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s* %95)
  br label %103

97:                                               ; preds = %2
  %98 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %99 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @bfa_sm_fault(%struct.TYPE_4__* %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %87, %74, %61, %57, %42, %36
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_itnim_s*, i32) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
