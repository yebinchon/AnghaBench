; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_els_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_els_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_els_cmd_s = type { i32 }
%struct.fc_ls_rjt_s = type { i32 }

@FC_LS_RJT_RSN_LOGICAL_BUSY = common dso_local global i32 0, align 4
@FC_PARSE_BUSY = common dso_local global i32 0, align 4
@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_els_rsp_parse(%struct.fchs_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fchs_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_els_cmd_s*, align 8
  %7 = alloca %struct.fc_ls_rjt_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %9 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %8, i64 1
  %10 = bitcast %struct.fchs_s* %9 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %10, %struct.fc_els_cmd_s** %6, align 8
  %11 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %6, align 8
  %12 = bitcast %struct.fc_els_cmd_s* %11 to %struct.fc_ls_rjt_s*
  store %struct.fc_ls_rjt_s* %12, %struct.fc_ls_rjt_s** %7, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %6, align 8
  %15 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 128, label %17
    i32 129, label %27
  ]

17:                                               ; preds = %2
  %18 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %7, align 8
  %19 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FC_LS_RJT_RSN_LOGICAL_BUSY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @FC_PARSE_BUSY, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %17
  %26 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27, %25, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
