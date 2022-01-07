; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prlo_rsp_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prlo_rsp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_prlo_acc_s = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@FC_ELS_ACC = common dso_local global i64 0, align 8
@FC_PARSE_FAILURE = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@FC_PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_prlo_rsp_parse(%struct.fchs_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fchs_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_prlo_acc_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fchs_s*, %struct.fchs_s** %4, align 8
  %10 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %9, i64 1
  %11 = bitcast %struct.fchs_s* %10 to %struct.fc_prlo_acc_s*
  store %struct.fc_prlo_acc_s* %11, %struct.fc_prlo_acc_s** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %6, align 8
  %14 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FC_ELS_ACC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %98

20:                                               ; preds = %2
  %21 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %6, align 8
  %22 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @be16_to_cpu(i32 %23)
  %25 = sub nsw i32 %24, 4
  %26 = sdiv i32 %25, 16
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %93, %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %27
  %32 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %6, align 8
  %33 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FC_TYPE_FCP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %31
  %45 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %6, align 8
  %46 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %44
  %57 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %6, align 8
  %58 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %56
  %69 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %6, align 8
  %70 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %79, i32* %3, align 4
  br label %98

80:                                               ; preds = %68
  %81 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %6, align 8
  %82 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @FC_PARSE_FAILURE, align 4
  store i32 %91, i32* %3, align 4
  br label %98

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %27

96:                                               ; preds = %27
  %97 = load i32, i32* @FC_PARSE_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %90, %78, %66, %54, %42, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
