; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_pdisc_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_pdisc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_logi_s = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_MIN_PDUSZ = common dso_local global i32 0, align 4
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_pdisc_parse(%struct.fchs_s* %0, i32 %1, i32 %2) #0 {
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
  %12 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %13 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %21 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @be16_to_cpu(i64 %23)
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* @FC_MIN_PDUSZ, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 4
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %32 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %19
  %37 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %37, i32* %4, align 4
  br label %58

38:                                               ; preds = %30
  %39 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %40 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @wwn_is_equal(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %38
  %48 = load %struct.fc_logi_s*, %struct.fc_logi_s** %8, align 8
  %49 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @wwn_is_equal(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %54, %45, %36, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @wwn_is_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
