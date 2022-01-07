; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_rpsc_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_rpsc_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rpf_s = type { i32, i32, %struct.bfa_fcs_rport_s* }
%struct.bfa_fcs_rport_s = type { i32, i32 }

@bfa_fcs_rpf_sm_rpsc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rpf_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rpf_s*, i32)* @bfa_fcs_rpf_sm_rpsc_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rpf_sm_rpsc_retry(%struct.bfa_fcs_rpf_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rpf_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  store %struct.bfa_fcs_rpf_s* %0, %struct.bfa_fcs_rpf_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %6, i32 0, i32 2
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  store %struct.bfa_fcs_rport_s* %8, %struct.bfa_fcs_rport_s** %5, align 8
  %9 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_trc(i32 %11, i32 %14)
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @bfa_trc(i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %37 [
    i32 128, label %22
    i32 129, label %28
  ]

22:                                               ; preds = %2
  %23 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %24 = load i32, i32* @bfa_fcs_rpf_sm_rpsc_sending, align 4
  %25 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %23, i32 %24)
  %26 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %27 = call i32 @bfa_fcs_rpf_send_rpsc2(%struct.bfa_fcs_rpf_s* %26, i32* null)
  br label %43

28:                                               ; preds = %2
  %29 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %29, i32 0, i32 1
  %31 = call i32 @bfa_timer_stop(i32* %30)
  %32 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %33 = load i32, i32* @bfa_fcs_rpf_sm_offline, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %32, i32 %33)
  %35 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @bfa_sm_fault(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %28, %22
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s*, i32) #1

declare dso_local i32 @bfa_fcs_rpf_send_rpsc2(%struct.bfa_fcs_rpf_s*, i32*) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
