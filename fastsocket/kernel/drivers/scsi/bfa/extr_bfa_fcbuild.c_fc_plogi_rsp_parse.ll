; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_plogi_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_plogi_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_els_cmd_s = type { i32 }
%struct.fc_logi_s = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_ls_rjt_s = type { i32 }

@FC_LS_RJT_RSN_LOGICAL_BUSY = common dso_local global i32 0, align 4
@FC_PARSE_BUSY = common dso_local global i32 0, align 4
@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_MIN_PDUSZ = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_plogi_rsp_parse(%struct.fchs_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_els_cmd_s*, align 8
  %9 = alloca %struct.fc_logi_s*, align 8
  %10 = alloca %struct.fc_ls_rjt_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %12 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %11, i64 1
  %13 = bitcast %struct.fchs_s* %12 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %13, %struct.fc_els_cmd_s** %8, align 8
  %14 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %8, align 8
  %15 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %68 [
    i32 128, label %17
    i32 129, label %30
  ]

17:                                               ; preds = %3
  %18 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %19 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %18, i64 1
  %20 = bitcast %struct.fchs_s* %19 to %struct.fc_ls_rjt_s*
  store %struct.fc_ls_rjt_s* %20, %struct.fc_ls_rjt_s** %10, align 8
  %21 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %10, align 8
  %22 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FC_LS_RJT_RSN_LOGICAL_BUSY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @FC_PARSE_BUSY, align 4
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %17
  %29 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %32 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %31, i64 1
  %33 = bitcast %struct.fchs_s* %32 to %struct.fc_logi_s*
  store %struct.fc_logi_s* %33, %struct.fc_logi_s** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 12
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %30
  %40 = load %struct.fc_logi_s*, %struct.fc_logi_s** %9, align 8
  %41 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @wwn_is_equal(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %47, i32* %4, align 4
  br label %70

48:                                               ; preds = %39
  %49 = load %struct.fc_logi_s*, %struct.fc_logi_s** %9, align 8
  %50 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %48
  %57 = load %struct.fc_logi_s*, %struct.fc_logi_s** %9, align 8
  %58 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be16_to_cpu(i32 %60)
  %62 = load i32, i32* @FC_MIN_PDUSZ, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %3
  %69 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %66, %64, %54, %46, %37, %28, %26
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @wwn_is_equal(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
