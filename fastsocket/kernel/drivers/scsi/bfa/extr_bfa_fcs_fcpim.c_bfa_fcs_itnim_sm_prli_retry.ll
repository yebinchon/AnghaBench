; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_prli_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_prli_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BFA_FCS_RPORT_MAX_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_prli_send = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_offline = common dso_local global i32 0, align 4
@RPSM_EVENT_LOGO_IMP = common dso_local global i32 0, align 4
@RPSM_EVENT_FC4_OFFLINE = common dso_local global i32 0, align 4
@bfa_fcs_itnim_sm_initiator = common dso_local global i32 0, align 4
@RPSM_EVENT_FC4_FCS_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_itnim_s*, i32)* @bfa_fcs_itnim_sm_prli_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_sm_prli_retry(%struct.bfa_fcs_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(i32 %7, i32 %12)
  %14 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %86 [
    i32 128, label %20
    i32 129, label %53
    i32 130, label %65
    i32 131, label %77
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BFA_FCS_RPORT_MAX_RETRIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bfa_trc(i32 %33, i32 %36)
  %38 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %39 = load i32, i32* @bfa_fcs_itnim_sm_prli_send, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %38, i32 %39)
  %41 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %42 = call i32 @bfa_fcs_itnim_send_prli(%struct.bfa_fcs_itnim_s* %41, i32* null)
  br label %52

43:                                               ; preds = %20
  %44 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %45 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %46 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %44, i32 %45)
  %47 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* @RPSM_EVENT_LOGO_IMP, align 4
  %51 = call i32 @bfa_sm_send_event(%struct.TYPE_2__* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %26
  br label %92

53:                                               ; preds = %2
  %54 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %55 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %56 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %54, i32 %55)
  %57 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %57, i32 0, i32 2
  %59 = call i32 @bfa_timer_stop(i32* %58)
  %60 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* @RPSM_EVENT_FC4_OFFLINE, align 4
  %64 = call i32 @bfa_sm_send_event(%struct.TYPE_2__* %62, i32 %63)
  br label %92

65:                                               ; preds = %2
  %66 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %67 = load i32, i32* @bfa_fcs_itnim_sm_initiator, align 4
  %68 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %66, i32 %67)
  %69 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %69, i32 0, i32 2
  %71 = call i32 @bfa_timer_stop(i32* %70)
  %72 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* @RPSM_EVENT_FC4_FCS_ONLINE, align 4
  %76 = call i32 @bfa_sm_send_event(%struct.TYPE_2__* %74, i32 %75)
  br label %92

77:                                               ; preds = %2
  %78 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %79 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %80 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %78, i32 %79)
  %81 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %82 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %81, i32 0, i32 2
  %83 = call i32 @bfa_timer_stop(i32* %82)
  %84 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %85 = call i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s* %84)
  br label %92

86:                                               ; preds = %2
  %87 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %88 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @bfa_sm_fault(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %77, %65, %53, %52
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s*, i32) #1

declare dso_local i32 @bfa_fcs_itnim_send_prli(%struct.bfa_fcs_itnim_s*, i32*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
