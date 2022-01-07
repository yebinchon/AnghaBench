; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_ls_rjt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_ls_rjt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i32, i32 }
%struct.bfa_fcxp_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32, i32)* @bfa_fcs_rport_send_ls_rjt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_send_ls_rjt(%struct.bfa_fcs_rport_s* %0, %struct.fchs_s* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfa_fcs_lport_s*, align 8
  %10 = alloca %struct.fchs_s, align 4
  %11 = alloca %struct.bfa_fcxp_s*, align 8
  %12 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %5, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %13, i32 0, i32 1
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %14, align 8
  store %struct.bfa_fcs_lport_s* %15, %struct.bfa_fcs_lport_s** %9, align 8
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %20 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bfa_trc(i32 %18, i32 %21)
  %23 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BFA_FALSE, align 4
  %27 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %25, i32 %26)
  store %struct.bfa_fcxp_s* %27, %struct.bfa_fcxp_s** %11, align 8
  %28 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %11, align 8
  %29 = icmp ne %struct.bfa_fcxp_s* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  br label %59

31:                                               ; preds = %4
  %32 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %11, align 8
  %33 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %32)
  %34 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %35 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %38 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %37)
  %39 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %40 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @fc_ls_rjt_build(%struct.fchs_s* %10, i32 %33, i32 %36, i32 %38, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %11, align 8
  %46 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BFA_FALSE, align 4
  %55 = load i32, i32* @FC_CLASS_3, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %58 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %45, i32* null, i32 %50, i32 %53, i32 %54, i32 %55, i32 %56, %struct.fchs_s* %10, i32* null, i32* null, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_ls_rjt_build(%struct.fchs_s*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
