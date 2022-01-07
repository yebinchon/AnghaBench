; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_adisc_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_adisc_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, i32 }

@bfa_fcs_rport_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_offline = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logosend = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logorcv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_adisc_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_adisc_online(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
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
  switch i32 %24, label %71 [
    i32 136, label %25
    i32 129, label %29
    i32 132, label %34
    i32 135, label %34
    i32 134, label %40
    i32 133, label %50
    i32 131, label %51
    i32 130, label %61
    i32 128, label %61
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_rport_sm_online, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %26, i32 %27)
  br label %77

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bfa_fcxp_discard(i32 %32)
  br label %34

34:                                               ; preds = %2, %2, %29
  %35 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %36 = load i32, i32* @bfa_fcs_rport_sm_fc4_offline, align 4
  %37 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %35, i32 %36)
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %39 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %38)
  br label %77

40:                                               ; preds = %2
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %42 = load i32, i32* @bfa_fcs_rport_sm_fc4_logosend, align 4
  %43 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %41, i32 %42)
  %44 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bfa_fcxp_discard(i32 %46)
  %48 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %49 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %48)
  br label %77

50:                                               ; preds = %2
  br label %77

51:                                               ; preds = %2
  %52 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %53 = load i32, i32* @bfa_fcs_rport_sm_fc4_offline, align 4
  %54 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %52, i32 %53)
  %55 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bfa_fcxp_discard(i32 %57)
  %59 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %60 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %59)
  br label %77

61:                                               ; preds = %2, %2
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %63 = load i32, i32* @bfa_fcs_rport_sm_fc4_logorcv, align 4
  %64 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %62, i32 %63)
  %65 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bfa_fcxp_discard(i32 %67)
  %69 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %70 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %69)
  br label %77

71:                                               ; preds = %2
  %72 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @bfa_sm_fault(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %61, %51, %50, %40, %34, %25
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
