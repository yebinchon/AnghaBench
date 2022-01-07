; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_pdisc_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_pdisc_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_logi_s = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@FC_PARSE_LEN_INVAL = common dso_local global i32 0, align 4
@FC_ELS_ACC = common dso_local global i64 0, align 8
@FC_PARSE_ACC_INVAL = common dso_local global i32 0, align 4
@FC_PARSE_PWWN_NOT_EQUAL = common dso_local global i32 0, align 4
@FC_PARSE_NWWN_NOT_EQUAL = common dso_local global i32 0, align 4
@FC_MIN_PDUSZ = common dso_local global i64 0, align 8
@FC_PARSE_RXSZ_INVAL = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_pdisc_rsp_parse(%struct.fchs_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_logi_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %10 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %9, i64 1
  %11 = bitcast %struct.fchs_s* %10 to %struct.fc_logi_s*
  store %struct.fc_logi_s* %11, %struct.fc_logi_s** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 24
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @FC_PARSE_LEN_INVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %19 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FC_ELS_ACC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @FC_PARSE_ACC_INVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %17
  %27 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %28 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @wwn_is_equal(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @FC_PARSE_PWWN_NOT_EQUAL, align 4
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %26
  %36 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %37 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @FC_PARSE_NWWN_NOT_EQUAL, align 4
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %35
  %44 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %45 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @be16_to_cpu(i32 %47)
  %49 = load i64, i64* @FC_MIN_PDUSZ, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @FC_PARSE_RXSZ_INVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %51, %41, %33, %24, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @wwn_is_equal(i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
