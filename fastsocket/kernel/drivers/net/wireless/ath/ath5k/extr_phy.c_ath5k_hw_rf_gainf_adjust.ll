; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_gainf_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_gainf_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_gain_opt = type { i32, %struct.ath5k_gain_opt_step* }
%struct.ath5k_gain_opt_step = type { i32 }
%struct.ath5k_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@rfgain_opt_5111 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@rfgain_opt_5112 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@ATH5K_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ret %d, gain step %u, current gain %u, target gain %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_hw_rf_gainf_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf_gainf_adjust(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_gain_opt*, align 8
  %5 = alloca %struct.ath5k_gain_opt_step*, align 8
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %12 [
    i32 129, label %10
    i32 128, label %11
  ]

10:                                               ; preds = %1
  store %struct.ath5k_gain_opt* @rfgain_opt_5111, %struct.ath5k_gain_opt** %4, align 8
  br label %13

11:                                               ; preds = %1
  store %struct.ath5k_gain_opt* @rfgain_opt_5112, %struct.ath5k_gain_opt** %4, align 8
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %200

13:                                               ; preds = %11, %10
  %14 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %14, i32 0, i32 1
  %16 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %15, align 8
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %16, i64 %20
  store %struct.ath5k_gain_opt_step* %21, %struct.ath5k_gain_opt_step** %5, align 8
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %13
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %200

38:                                               ; preds = %31
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  br label %46

46:                                               ; preds = %86, %38
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %50, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %58 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %60, 0
  br label %62

62:                                               ; preds = %56, %46
  %63 = phi i1 [ false, %46 ], [ %61, %56 ]
  br i1 %63, label %64, label %95

64:                                               ; preds = %62
  %65 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %4, align 8
  %66 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %65, i32 0, i32 1
  %67 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %66, align 8
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %67, i64 %72
  %74 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %5, align 8
  %77 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = mul nsw i32 2, %79
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, %80
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %64
  %87 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %4, align 8
  %88 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %87, i32 0, i32 1
  %89 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %88, align 8
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %91 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %89, i64 %93
  store %struct.ath5k_gain_opt_step* %94, %struct.ath5k_gain_opt_step** %5, align 8
  br label %46

95:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %182

96:                                               ; preds = %13
  %97 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %98 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %102 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %100, %104
  br i1 %105, label %106, label %181

106:                                              ; preds = %96
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %108 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %4, align 8
  %112 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  store i32 -2, i32* %2, align 4
  br label %200

118:                                              ; preds = %106
  %119 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %120 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %124 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 8
  br label %126

126:                                              ; preds = %171, %118
  %127 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %128 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = icmp sle i32 %130, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %126
  %137 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %138 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %4, align 8
  %142 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %140, %145
  br label %147

147:                                              ; preds = %136, %126
  %148 = phi i1 [ false, %126 ], [ %146, %136 ]
  br i1 %148, label %149, label %180

149:                                              ; preds = %147
  %150 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %4, align 8
  %151 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %150, i32 0, i32 1
  %152 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %151, align 8
  %153 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %154 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %152, i64 %157
  %159 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %5, align 8
  %162 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %160, %163
  %165 = mul nsw i32 2, %164
  %166 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %167 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, %165
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %149
  %172 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %4, align 8
  %173 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %172, i32 0, i32 1
  %174 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %173, align 8
  %175 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %176 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %174, i64 %178
  store %struct.ath5k_gain_opt_step* %179, %struct.ath5k_gain_opt_step** %5, align 8
  br label %126

180:                                              ; preds = %147
  store i32 2, i32* %6, align 4
  br label %182

181:                                              ; preds = %96
  br label %182

182:                                              ; preds = %181, %180, %95
  %183 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %184 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %187 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %191 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %195 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %183, i32 %184, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %185, i64 %189, i32 %193, i32 %197)
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %182, %117, %37, %12
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
