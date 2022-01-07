; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsquery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, i32, i32 }

@bfa_fcs_rport_sm_adisc_online_sending = common dso_local global i32 0, align 4
@BFA_FCS_RPORT_MAX_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_nsquery_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_offline = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logosend = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logorcv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_nsquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_nsquery(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(i32 %14, i32 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %85 [
    i32 137, label %25
    i32 133, label %31
    i32 135, label %54
    i32 134, label %64
    i32 131, label %65
    i32 128, label %65
    i32 130, label %75
    i32 136, label %75
    i32 129, label %75
    i32 132, label %75
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_rport_sm_adisc_online_sending, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %26, i32 %27)
  %29 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %30 = call i32 @bfa_fcs_rport_send_adisc(%struct.bfa_fcs_rport_s* %29, i32* null)
  br label %91

31:                                               ; preds = %2
  %32 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BFA_FCS_RPORT_MAX_RETRIES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %43 = load i32, i32* @bfa_fcs_rport_sm_nsquery_sending, align 4
  %44 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %42, i32 %43)
  %45 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %46 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %45, i32* null)
  br label %53

47:                                               ; preds = %31
  %48 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %49 = load i32, i32* @bfa_fcs_rport_sm_fc4_offline, align 4
  %50 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %48, i32 %49)
  %51 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %52 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %51)
  br label %53

53:                                               ; preds = %47, %41
  br label %91

54:                                               ; preds = %2
  %55 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %56 = load i32, i32* @bfa_fcs_rport_sm_fc4_logosend, align 4
  %57 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %55, i32 %56)
  %58 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bfa_fcxp_discard(i32 %60)
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %63 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %62)
  br label %91

64:                                               ; preds = %2
  br label %91

65:                                               ; preds = %2, %2
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %67 = load i32, i32* @bfa_fcs_rport_sm_fc4_logorcv, align 4
  %68 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %66, i32 %67)
  %69 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bfa_fcxp_discard(i32 %71)
  %73 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %74 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %73)
  br label %91

75:                                               ; preds = %2, %2, %2, %2
  %76 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %77 = load i32, i32* @bfa_fcs_rport_sm_fc4_offline, align 4
  %78 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %76, i32 %77)
  %79 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bfa_fcxp_discard(i32 %81)
  %83 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %84 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %83)
  br label %91

85:                                               ; preds = %2
  %86 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %87 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @bfa_sm_fault(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %75, %65, %64, %54, %53, %25
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_adisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
