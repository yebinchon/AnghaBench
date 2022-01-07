; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_pll_calculate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_pll_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24123_bandselect_val = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.cx24123_state* }
%struct.cx24123_state = type { i32, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cx24123_AGC_val = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@cx24123_bandselect_vals = common dso_local global %struct.cx24123_bandselect_val* null, align 8
@cx24123_AGC_vals = common dso_local global %struct.cx24123_bandselect_val* null, align 8
@force_band = common dso_local global i32 0, align 4
@XTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @cx24123_pll_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_pll_calculate(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.cx24123_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cx24123_bandselect_val*, align 8
  %14 = alloca %struct.cx24123_AGC_val*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.cx24123_state*, %struct.cx24123_state** %16, align 8
  store %struct.cx24123_state* %17, %struct.cx24123_state** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.cx24123_bandselect_val* %18)
  store i32 %19, i32* %12, align 4
  store %struct.cx24123_bandselect_val* null, %struct.cx24123_bandselect_val** %13, align 8
  store %struct.cx24123_AGC_val* null, %struct.cx24123_AGC_val** %14, align 8
  %20 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %21 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %20, i64 0
  %22 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %25 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %27 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %26, i64 0
  %28 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %31 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %33 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %32, i64 0
  %34 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %37 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %39 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %38, i64 0
  %40 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %89, %2
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.cx24123_bandselect_val* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %42
  %48 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_AGC_vals, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %48, i64 %50
  %52 = bitcast %struct.cx24123_bandselect_val* %51 to %struct.cx24123_AGC_val*
  store %struct.cx24123_AGC_val* %52, %struct.cx24123_AGC_val** %14, align 8
  %53 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %14, align 8
  %54 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %55, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %47
  %63 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %14, align 8
  %64 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %65, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %62
  %73 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %14, align 8
  %74 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %77 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %14, align 8
  %79 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %82 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %14, align 8
  %84 = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %87 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %72, %62, %47
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %42

92:                                               ; preds = %42
  %93 = load i32, i32* @force_band, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @force_band, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %95, %92
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %127, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %105, i64 %107
  store %struct.cx24123_bandselect_val* %108, %struct.cx24123_bandselect_val** %13, align 8
  %109 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** %13, align 8
  %110 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %113 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sle i32 %111, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %104
  %117 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** %13, align 8
  %118 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %121 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %124, %116, %104
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %100

130:                                              ; preds = %100
  br label %134

131:                                              ; preds = %95
  %132 = load i32, i32* @force_band, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %131, %130
  %135 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %135, i64 %137
  %139 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %142 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %143, i64 %145
  %147 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %8, align 4
  %149 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %150 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %152, i64 %154
  %156 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** @cx24123_bandselect_vals, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %158, i64 %160
  %162 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %157, %163
  %165 = sdiv i32 %164, 2
  %166 = icmp slt i32 %151, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  br label %169

168:                                              ; preds = %134
  store i32 2, i32* %10, align 4
  br label %169

169:                                              ; preds = %168, %167
  %170 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %171 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = mul nsw i32 %172, %173
  %175 = mul nsw i32 %174, 10
  %176 = load i32, i32* @XTAL, align 4
  %177 = mul nsw i32 2, %176
  %178 = sdiv i32 %177, 1000
  %179 = sdiv i32 %175, %178
  %180 = sdiv i32 %179, 32
  %181 = and i32 %180, 511
  store i32 %181, i32* %6, align 4
  %182 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %183 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = mul nsw i32 %184, %185
  %187 = mul nsw i32 %186, 10
  %188 = load i32, i32* @XTAL, align 4
  %189 = mul nsw i32 2, %188
  %190 = sdiv i32 %189, 1000
  %191 = sdiv i32 %187, %190
  %192 = srem i32 %191, 32
  %193 = and i32 %192, 31
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %169
  %197 = load i32, i32* %6, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %199, %196, %169
  %203 = load i32, i32* %10, align 4
  %204 = shl i32 %203, 14
  %205 = or i32 2031616, %204
  %206 = load i32, i32* %6, align 4
  %207 = shl i32 %206, 5
  %208 = or i32 %205, %207
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %212 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.cx24123_bandselect_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
