; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_logo_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_send_logo_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.TYPE_3__, %struct.bfa_fcs_lport_s*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcxp_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_fcs_rport_send_logo_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_send_logo_acc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.fchs_s, align 4
  %6 = alloca %struct.bfa_fcxp_s*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.bfa_fcs_rport_s*
  store %struct.bfa_fcs_rport_s* %9, %struct.bfa_fcs_rport_s** %3, align 8
  %10 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bfa_trc(i32 %12, i32 %15)
  %17 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %17, i32 0, i32 3
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %18, align 8
  store %struct.bfa_fcs_lport_s* %19, %struct.bfa_fcs_lport_s** %4, align 8
  %20 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BFA_FALSE, align 4
  %24 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %22, i32 %23)
  store %struct.bfa_fcxp_s* %24, %struct.bfa_fcxp_s** %6, align 8
  %25 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %26 = icmp ne %struct.bfa_fcxp_s* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %59

28:                                               ; preds = %1
  %29 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %35 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %34)
  %36 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %40 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %39)
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fc_logo_acc_build(%struct.fchs_s* %5, i32 %35, i32 %38, i32 %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %46 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BFA_FALSE, align 4
  %55 = load i32, i32* @FC_CLASS_3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %58 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %45, i32* null, i32 %50, i32 %53, i32 %54, i32 %55, i32 %56, %struct.fchs_s* %5, i32* null, i32* null, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_logo_acc_build(%struct.fchs_s*, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
