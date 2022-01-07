; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_plogi_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_plogi_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_lport_ms_s = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fc_els_cmd_s = type { i32 }
%struct.fc_ls_rjt_s = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@MSSM_EVENT_RSP_ERROR = common dso_local global i32 0, align 4
@MSSM_EVENT_RSP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i32, i32, %struct.fchs_s*)* @bfa_fcs_lport_ms_plogi_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ms_plogi_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_lport_ms_s*, align 8
  %16 = alloca %struct.bfa_fcs_lport_s*, align 8
  %17 = alloca %struct.fc_els_cmd_s*, align 8
  %18 = alloca %struct.fc_ls_rjt_s*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.bfa_fcs_lport_ms_s*
  store %struct.bfa_fcs_lport_ms_s* %20, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %21 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %21, i32 0, i32 0
  %23 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %22, align 8
  store %struct.bfa_fcs_lport_s* %23, %struct.bfa_fcs_lport_s** %16, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @bfa_trc(i32 %26, i32 %27)
  %29 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bfa_trc(i32 %31, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @BFA_STATUS_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %7
  %41 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @bfa_trc(i32 %48, i32 %49)
  %51 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %52 = load i32, i32* @MSSM_EVENT_RSP_ERROR, align 4
  %53 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %51, i32 %52)
  br label %130

54:                                               ; preds = %7
  %55 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %56 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %55)
  %57 = inttoptr i64 %56 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %57, %struct.fc_els_cmd_s** %17, align 8
  %58 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %17, align 8
  %59 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %114 [
    i32 129, label %61
    i32 128, label %88
  ]

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 4
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @bfa_trc(i32 %68, i32 %69)
  %71 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %72 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %77 = load i32, i32* @MSSM_EVENT_RSP_ERROR, align 4
  %78 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %76, i32 %77)
  br label %130

79:                                               ; preds = %61
  %80 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %81 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %86 = load i32, i32* @MSSM_EVENT_RSP_OK, align 4
  %87 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %85, i32 %86)
  br label %130

88:                                               ; preds = %54
  %89 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %90 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %89)
  %91 = inttoptr i64 %90 to %struct.fc_ls_rjt_s*
  store %struct.fc_ls_rjt_s* %91, %struct.fc_ls_rjt_s** %18, align 8
  %92 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %93 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %18, align 8
  %96 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bfa_trc(i32 %94, i32 %97)
  %99 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %100 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %18, align 8
  %103 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bfa_trc(i32 %101, i32 %104)
  %106 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %107 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %112 = load i32, i32* @MSSM_EVENT_RSP_ERROR, align 4
  %113 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %111, i32 %112)
  br label %130

114:                                              ; preds = %54
  %115 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %116 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %121 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %17, align 8
  %124 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bfa_trc(i32 %122, i32 %125)
  %127 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %128 = load i32, i32* @MSSM_EVENT_RSP_ERROR, align 4
  %129 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %127, i32 %128)
  br label %130

130:                                              ; preds = %40, %114, %88, %79, %65
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
