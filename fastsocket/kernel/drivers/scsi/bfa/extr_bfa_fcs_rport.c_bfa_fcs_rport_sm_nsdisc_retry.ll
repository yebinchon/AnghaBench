; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsdisc_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsdisc_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@bfa_fcs_rport_sm_nsdisc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_uninit = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_plogiacc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_rport_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_del_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_fcs_online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_nsdisc_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_nsdisc_retry(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_3__* %7, i32 %10)
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_3__* %14, i32 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(%struct.TYPE_3__* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %95 [
    i32 128, label %25
    i32 134, label %31
    i32 136, label %31
    i32 135, label %42
    i32 130, label %51
    i32 133, label %60
    i32 132, label %80
    i32 129, label %83
    i32 131, label %86
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_rport_sm_nsdisc_sending, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %26, i32 %27)
  %29 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %30 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %29, i32* null)
  br label %101

31:                                               ; preds = %2, %2
  %32 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %33 = load i32, i32* @bfa_fcs_rport_sm_nsdisc_sending, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %32, i32 %33)
  %35 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %35, i32 0, i32 3
  %37 = call i32 @bfa_timer_stop(i32* %36)
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %38, i32 0, i32 4
  store i32 0, i32* %39, align 4
  %40 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %41 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %40, i32* null)
  br label %101

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %44 = load i32, i32* @bfa_fcs_rport_sm_uninit, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %43, i32 %44)
  %46 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %46, i32 0, i32 3
  %48 = call i32 @bfa_timer_stop(i32* %47)
  %49 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %50 = call i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s* %49)
  br label %101

51:                                               ; preds = %2
  %52 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %53 = load i32, i32* @bfa_fcs_rport_sm_plogiacc_sending, align 4
  %54 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %52, i32 %53)
  %55 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %55, i32 0, i32 3
  %57 = call i32 @bfa_timer_stop(i32* %56)
  %58 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %59 = call i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s* %58, i32* null)
  br label %101

60:                                               ; preds = %2
  %61 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %64 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %65 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %63, i32 %64)
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %66, i32 0, i32 3
  %68 = call i32 @bfa_timer_stop(i32* %67)
  %69 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %75 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %74, i32 0, i32 3
  %76 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %77 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %78 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %79 = call i32 @bfa_timer_start(i32 %73, i32* %75, i32 %76, %struct.bfa_fcs_rport_s* %77, i32 %78)
  br label %101

80:                                               ; preds = %2
  %81 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %82 = call i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s* %81)
  br label %101

83:                                               ; preds = %2
  %84 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %85 = call i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s* %84)
  br label %101

86:                                               ; preds = %2
  %87 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %88 = load i32, i32* @bfa_fcs_rport_sm_fc4_fcs_online, align 4
  %89 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %87, i32 %88)
  %90 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %91 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %90, i32 0, i32 3
  %92 = call i32 @bfa_timer_stop(i32* %91)
  %93 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %94 = call i32 @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s* %93)
  br label %101

95:                                               ; preds = %2
  %96 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %97 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %86, %83, %80, %60, %51, %42, %31, %25
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
