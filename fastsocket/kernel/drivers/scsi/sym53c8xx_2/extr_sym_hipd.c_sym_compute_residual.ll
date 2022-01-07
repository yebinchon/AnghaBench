; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_compute_residual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_compute_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_ccb = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@XE_EXTRA_DATA = common dso_local global i32 0, align 4
@XE_SODL_UNRUN = common dso_local global i32 0, align 4
@XE_SWIDE_OVRUN = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_compute_residual(%struct.sym_hcb* %0, %struct.sym_ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %12 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @XE_EXTRA_DATA, align 4
  %15 = load i32, i32* @XE_SODL_UNRUN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %2
  %22 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %23 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XE_EXTRA_DATA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %30 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %28, %21
  %37 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %38 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @XE_SODL_UNRUN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %48 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %59 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %64 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %150

69:                                               ; preds = %57
  %70 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %71 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %74 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %90, label %79

79:                                               ; preds = %69
  %80 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %81 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %82 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %83 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @scr_to_cpu(i64 %86)
  %88 = call i64 @sym_evaluate_dp(%struct.sym_hcb* %80, %struct.sym_ccb* %81, i32 %87, i32* %9)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %79, %69
  %91 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %92 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %95 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  store i32 %97, i32* %3, align 4
  br label %150

98:                                               ; preds = %79
  %99 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %100 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @HF_SENSE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %150

108:                                              ; preds = %98
  %109 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %110 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %111 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  store i32 %113, i32* %7, align 4
  %114 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %115 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  %118 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %119 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %140, %108
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %127 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @scr_to_cpu(i64 %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = and i32 %136, 16777215
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %125
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %121

143:                                              ; preds = %121
  %144 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %145 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %143, %105, %90, %67
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @sym_evaluate_dp(%struct.sym_hcb*, %struct.sym_ccb*, i32, i32*) #1

declare dso_local i32 @scr_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
