; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_validate_ccdc_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_validate_ccdc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_config_params_raw = type { i64, i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@CCDC_DATA_NO_SHIFT = common dso_local global i64 0, align 8
@CCDC_DATA_SHIFT_6BIT = common dso_local global i64 0, align 8
@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid value of data shift\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CCDC_NO_MEDIAN_FILTER1 = common dso_local global i64 0, align 8
@CCDC_MEDIAN_FILTER1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid value of median filter1\0A\00", align 1
@CCDC_NO_MEDIAN_FILTER2 = common dso_local global i64 0, align 8
@CCDC_MEDIAN_FILTER2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid value of median filter2\0A\00", align 1
@CCDC_MED_FILT_THRESH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Invalid value of median filter thresold\0A\00", align 1
@CCDC_DATA_16BITS = common dso_local global i64 0, align 8
@CCDC_DATA_8BITS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid value of data size\0A\00", align 1
@CCDC_GAMMA_BITS_13_4 = common dso_local global i64 0, align 8
@CCDC_GAMMA_BITS_09_0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid value of ALAW\0A\00", align 1
@CCDC_SAMPLE_1PIXELS = common dso_local global i64 0, align 8
@CCDC_SAMPLE_16PIXELS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid value of sample pixel\0A\00", align 1
@CCDC_SAMPLE_1LINES = common dso_local global i64 0, align 8
@CCDC_SAMPLE_16LINES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"Invalid value of sample lines\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccdc_config_params_raw*)* @validate_ccdc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ccdc_param(%struct.ccdc_config_params_raw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccdc_config_params_raw*, align 8
  store %struct.ccdc_config_params_raw* %0, %struct.ccdc_config_params_raw** %3, align 8
  %4 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %5 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CCDC_DATA_NO_SHIFT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %11 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CCDC_DATA_SHIFT_6BIT, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @dev, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %159

20:                                               ; preds = %9
  %21 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %22 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CCDC_NO_MEDIAN_FILTER1, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %28 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CCDC_MEDIAN_FILTER1, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @dev, align 4
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %159

37:                                               ; preds = %26
  %38 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %39 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CCDC_NO_MEDIAN_FILTER2, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %45 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CCDC_MEDIAN_FILTER2, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @dev, align 4
  %51 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %159

54:                                               ; preds = %43
  %55 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %56 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %61 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CCDC_MED_FILT_THRESH, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59, %54
  %66 = load i32, i32* @dev, align 4
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %159

70:                                               ; preds = %59
  %71 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %72 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CCDC_DATA_16BITS, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %78 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CCDC_DATA_8BITS, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76, %70
  %83 = load i32, i32* @dev, align 4
  %84 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %159

87:                                               ; preds = %76
  %88 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %89 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %95 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CCDC_GAMMA_BITS_13_4, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %102 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CCDC_GAMMA_BITS_09_0, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100, %93
  %108 = load i32, i32* @dev, align 4
  %109 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %159

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %87
  %114 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %115 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %113
  %120 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %121 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CCDC_SAMPLE_1PIXELS, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %133, label %126

126:                                              ; preds = %119
  %127 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %128 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CCDC_SAMPLE_16PIXELS, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %126, %119
  %134 = load i32, i32* @dev, align 4
  %135 = call i32 @dev_dbg(i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %159

138:                                              ; preds = %126
  %139 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %140 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @CCDC_SAMPLE_1LINES, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %147 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CCDC_SAMPLE_16LINES, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %145, %138
  %153 = load i32, i32* @dev, align 4
  %154 = call i32 @dev_dbg(i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %159

157:                                              ; preds = %145
  br label %158

158:                                              ; preds = %157, %113
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %152, %133, %107, %82, %65, %49, %32, %15
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
