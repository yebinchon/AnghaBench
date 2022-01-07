; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_fdisc_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_fdisc_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_vport_s = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@bfa_fcs_vport_sm_cleanup = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_fdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_vport_s*, i32)* @bfa_fcs_vport_sm_fdisc_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_vport_sm_fdisc_retry(%struct.bfa_fcs_vport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_vport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_vport_s* %0, %struct.bfa_fcs_vport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %6 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %5)
  %7 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %8 = call i32 @__vport_pwwn(%struct.bfa_fcs_vport_s* %7)
  %9 = call i32 @bfa_trc(i32 %6, i32 %8)
  %10 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %11 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bfa_trc(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %47 [
    i32 130, label %15
    i32 129, label %25
    i32 128, label %32
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %17 = load i32, i32* @bfa_fcs_vport_sm_cleanup, align 4
  %18 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %16, i32 %17)
  %19 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %19, i32 0, i32 2
  %21 = call i32 @bfa_timer_stop(i32* %20)
  %22 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %22, i32 0, i32 3
  %24 = call i32 @bfa_fcs_lport_delete(i32* %23)
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_vport_sm_offline, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %26, i32 %27)
  %29 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %29, i32 0, i32 2
  %31 = call i32 @bfa_timer_stop(i32* %30)
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %34 = load i32, i32* @bfa_fcs_vport_sm_fdisc, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %33, i32 %34)
  %36 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %46 = call i32 @bfa_fcs_vport_do_fdisc(%struct.bfa_fcs_vport_s* %45)
  br label %52

47:                                               ; preds = %2
  %48 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %49 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @bfa_sm_fault(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %32, %25, %15
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @__vport_fcs(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @__vport_pwwn(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @bfa_fcs_lport_delete(i32*) #1

declare dso_local i32 @bfa_fcs_vport_do_fdisc(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
