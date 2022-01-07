; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_plogi_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_plogi_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_logi_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_MIN_PDUSZ = common dso_local global i64 0, align 8
@FC_MAX_PDUSZ = common dso_local global i64 0, align 8
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_plogi_parse(%struct.fchs_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fchs_s*, align 8
  %4 = alloca %struct.fc_logi_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %3, align 8
  %5 = load %struct.fchs_s*, %struct.fchs_s** %3, align 8
  %6 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %5, i64 1
  %7 = bitcast %struct.fchs_s* %6 to %struct.fc_logi_s*
  store %struct.fc_logi_s* %7, %struct.fc_logi_s** %4, align 8
  %8 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %9 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %17 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @be16_to_cpu(i64 %19)
  %21 = load i64, i64* @FC_MIN_PDUSZ, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %15
  %24 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %25 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @be16_to_cpu(i64 %27)
  %29 = load i64, i64* @FC_MAX_PDUSZ, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %33 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %23, %15
  %38 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
