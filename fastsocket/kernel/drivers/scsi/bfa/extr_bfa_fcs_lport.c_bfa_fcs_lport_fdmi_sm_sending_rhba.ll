; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_sm_sending_rhba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_sm_sending_rhba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_fdmi_s = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@bfa_fcs_lport_fdmi_sm_rhba = common dso_local global i32 0, align 4
@bfa_fcs_lport_fdmi_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_fdmi_s*, i32)* @bfa_fcs_lport_fdmi_sm_sending_rhba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_fdmi_sm_sending_rhba(%struct.bfa_fcs_lport_fdmi_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_fdmi_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  store %struct.bfa_fcs_lport_fdmi_s* %0, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  store %struct.bfa_fcs_lport_s* %10, %struct.bfa_fcs_lport_s** %5, align 8
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(i32 %13, i32 %17)
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %38 [
    i32 128, label %25
    i32 129, label %29
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_lport_fdmi_sm_rhba, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_fdmi_s* %26, i32 %27)
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %31 = load i32, i32* @bfa_fcs_lport_fdmi_sm_offline, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_fdmi_s* %30, i32 %31)
  %33 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %34 = call i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.bfa_fcs_lport_s* %33)
  %35 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %35, i32 0, i32 0
  %37 = call i32 @bfa_fcxp_walloc_cancel(i32 %34, i32* %36)
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @bfa_sm_fault(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %29, %25
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_fdmi_s*, i32) #1

declare dso_local i32 @bfa_fcxp_walloc_cancel(i32, i32*) #1

declare dso_local i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
