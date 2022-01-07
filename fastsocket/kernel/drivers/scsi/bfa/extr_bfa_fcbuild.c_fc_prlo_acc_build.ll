; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prlo_acc_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prlo_acc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_prlo_acc_s = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i64 }

@FC_ELS_ACC = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_prlo_acc_build(%struct.fchs_s* %0, %struct.fc_prlo_acc_s* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fchs_s*, align 8
  %8 = alloca %struct.fc_prlo_acc_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fchs_s* %0, %struct.fchs_s** %7, align 8
  store %struct.fc_prlo_acc_s* %1, %struct.fc_prlo_acc_s** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.fchs_s*, %struct.fchs_s** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @fc_els_rsp_build(%struct.fchs_s* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = mul nsw i32 %20, 16
  %22 = add nsw i32 %21, 4
  %23 = call i32 @memset(%struct.fc_prlo_acc_s* %19, i32 0, i32 %22)
  %24 = load i32, i32* @FC_ELS_ACC, align 4
  %25 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %26 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %28 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %27, i32 0, i32 0
  store i32 16, i32* %28, align 8
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 %29, 16
  %31 = add nsw i32 %30, 4
  %32 = call i32 @cpu_to_be16(i32 %31)
  %33 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %34 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %76, %6
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %41 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %48 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @FC_TYPE_FCP, align 4
  %55 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %56 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %54, i32* %61, align 8
  %62 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %63 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %70 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %39
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %35

79:                                               ; preds = %35
  %80 = load %struct.fc_prlo_acc_s*, %struct.fc_prlo_acc_s** %8, align 8
  %81 = getelementptr inbounds %struct.fc_prlo_acc_s, %struct.fc_prlo_acc_s* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be16_to_cpu(i32 %82)
  ret i32 %83
}

declare dso_local i32 @fc_els_rsp_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.fc_prlo_acc_s*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
