; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_adisc_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_adisc_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fc_ls_rjt_s = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fc_adisc_s = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@RPSM_EVENT_FAILED = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i64 0, align 8
@RPSM_EVENT_ACCEPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i32, i32, %struct.fchs_s*)* @bfa_fcs_rport_adisc_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_adisc_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_rport_s*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.fc_ls_rjt_s*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.bfa_fcs_rport_s*
  store %struct.bfa_fcs_rport_s* %19, %struct.bfa_fcs_rport_s** %15, align 8
  %20 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %21 = call i8* @bfa_fcxp_get_rspbuf(%struct.bfa_fcxp_s* %20)
  store i8* %21, i8** %16, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @BFA_STATUS_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %7
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @bfa_trc(i32 %28, i32 %29)
  %31 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %37 = load i32, i32* @RPSM_EVENT_FAILED, align 4
  %38 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %36, i32 %37)
  br label %94

39:                                               ; preds = %7
  %40 = load i8*, i8** %16, align 8
  %41 = bitcast i8* %40 to %struct.fc_adisc_s*
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @fc_adisc_rsp_parse(%struct.fc_adisc_s* %41, i32 %42, i32 %45, i32 %48)
  %50 = load i64, i64* @FC_PARSE_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %59 = load i32, i32* @RPSM_EVENT_ACCEPTED, align 4
  %60 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %58, i32 %59)
  br label %94

61:                                               ; preds = %39
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i8*, i8** %16, align 8
  %68 = bitcast i8* %67 to %struct.fc_ls_rjt_s*
  store %struct.fc_ls_rjt_s* %68, %struct.fc_ls_rjt_s** %17, align 8
  %69 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %17, align 8
  %73 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bfa_trc(i32 %71, i32 %75)
  %77 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %17, align 8
  %81 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bfa_trc(i32 %79, i32 %82)
  %84 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %85 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %17, align 8
  %88 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bfa_trc(i32 %86, i32 %89)
  %91 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %92 = load i32, i32* @RPSM_EVENT_FAILED, align 4
  %93 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %91, i32 %92)
  br label %94

94:                                               ; preds = %61, %52, %25
  ret void
}

declare dso_local i8* @bfa_fcxp_get_rspbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i64 @fc_adisc_rsp_parse(%struct.fc_adisc_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
