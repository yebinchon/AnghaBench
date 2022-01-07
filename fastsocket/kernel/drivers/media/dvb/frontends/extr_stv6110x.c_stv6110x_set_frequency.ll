; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_set_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110x_state* }
%struct.stv6110x_state = type { i32* }

@STV6110x_CTRL1 = common dso_local global i64 0, align 8
@CTRL1_K = common dso_local global i32 0, align 4
@REFCLOCK_MHz = common dso_local global i32 0, align 4
@STV6110x_TNG1 = common dso_local global i64 0, align 8
@TNG1_DIV4SEL = common dso_local global i32 0, align 4
@TNG1_PRESC32_ON = common dso_local global i32 0, align 4
@REFCLOCK_kHz = common dso_local global i32 0, align 4
@TNG1_R_DIV = common dso_local global i32 0, align 4
@TNG1_N_DIV_11_8 = common dso_local global i32 0, align 4
@STV6110x_TNG0 = common dso_local global i64 0, align 8
@TNG0_N_DIV_7_0 = common dso_local global i32 0, align 4
@STV6110x_STAT1 = common dso_local global i64 0, align 8
@STAT1_CALVCO_STRT = common dso_local global i32 0, align 4
@TRIALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv6110x_set_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_set_frequency(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv6110x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.stv6110x_state*, %struct.stv6110x_state** %14, align 8
  store %struct.stv6110x_state* %15, %struct.stv6110x_state** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 1000, i32* %11, align 4
  %16 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %17 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @STV6110x_CTRL1, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CTRL1_K, align 4
  %23 = load i32, i32* @REFCLOCK_MHz, align 4
  %24 = sub nsw i32 %23, 16
  %25 = call i32 @STV6110x_SETFIELD(i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 1023000
  br i1 %27, label %28, label %45

28:                                               ; preds = %2
  %29 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %30 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @STV6110x_TNG1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TNG1_DIV4SEL, align 4
  %36 = call i32 @STV6110x_SETFIELD(i32 %34, i32 %35, i32 1)
  %37 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %38 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @STV6110x_TNG1, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TNG1_PRESC32_ON, align 4
  %44 = call i32 @STV6110x_SETFIELD(i32 %42, i32 %43, i32 0)
  store i32 40, i32* %8, align 4
  br label %104

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 1300000
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %50 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @STV6110x_TNG1, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TNG1_DIV4SEL, align 4
  %56 = call i32 @STV6110x_SETFIELD(i32 %54, i32 %55, i32 1)
  %57 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %58 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @STV6110x_TNG1, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TNG1_PRESC32_ON, align 4
  %64 = call i32 @STV6110x_SETFIELD(i32 %62, i32 %63, i32 1)
  store i32 40, i32* %8, align 4
  br label %103

65:                                               ; preds = %45
  %66 = load i32, i32* %4, align 4
  %67 = icmp sle i32 %66, 2046000
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %70 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @STV6110x_TNG1, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TNG1_DIV4SEL, align 4
  %76 = call i32 @STV6110x_SETFIELD(i32 %74, i32 %75, i32 0)
  %77 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %78 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @STV6110x_TNG1, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TNG1_PRESC32_ON, align 4
  %84 = call i32 @STV6110x_SETFIELD(i32 %82, i32 %83, i32 0)
  store i32 20, i32* %8, align 4
  br label %102

85:                                               ; preds = %65
  %86 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %87 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @STV6110x_TNG1, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TNG1_DIV4SEL, align 4
  %93 = call i32 @STV6110x_SETFIELD(i32 %91, i32 %92, i32 0)
  %94 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %95 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @STV6110x_TNG1, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TNG1_PRESC32_ON, align 4
  %101 = call i32 @STV6110x_SETFIELD(i32 %99, i32 %100, i32 1)
  store i32 20, i32* %8, align 4
  br label %102

102:                                              ; preds = %85, %68
  br label %103

103:                                              ; preds = %102, %48
  br label %104

104:                                              ; preds = %103, %28
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %131, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp sle i32 %106, 3
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i32, i32* @REFCLOCK_kHz, align 4
  %110 = sdiv i32 %109, 100
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @R_DIV(i32 %111)
  %113 = sdiv i32 %110, %112
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call i64 @abs(i32 %116)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i64 @abs(i32 %120)
  %122 = icmp slt i64 %117, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %108
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %123, %108
  %126 = load i32, i32* @REFCLOCK_kHz, align 4
  %127 = sdiv i32 %126, 100
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @R_DIV(i32 %128)
  %130 = sdiv i32 %127, %129
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %105

134:                                              ; preds = %105
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @R_DIV(i32 %136)
  %138 = mul nsw i32 %135, %137
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* @REFCLOCK_kHz, align 4
  %142 = sdiv i32 %140, %141
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 5
  %145 = sdiv i32 %144, 10
  store i32 %145, i32* %7, align 4
  %146 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %147 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @STV6110x_TNG1, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TNG1_R_DIV, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @STV6110x_SETFIELD(i32 %151, i32 %152, i32 %153)
  %155 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %156 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @STV6110x_TNG1, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TNG1_N_DIV_11_8, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @MSB(i32 %162)
  %164 = call i32 @STV6110x_SETFIELD(i32 %160, i32 %161, i32 %163)
  %165 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %166 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @STV6110x_TNG0, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @TNG0_N_DIV_7_0, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @LSB(i32 %172)
  %174 = call i32 @STV6110x_SETFIELD(i32 %170, i32 %171, i32 %173)
  %175 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %176 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @STV6110x_STAT1, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @STAT1_CALVCO_STRT, align 4
  %182 = call i32 @STV6110x_SETFIELD(i32 %180, i32 %181, i32 1)
  %183 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %184 = load i64, i64* @STV6110x_CTRL1, align 8
  %185 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %186 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @STV6110x_CTRL1, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %183, i64 %184, i32 %190)
  %192 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %193 = load i64, i64* @STV6110x_TNG1, align 8
  %194 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %195 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @STV6110x_TNG1, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %192, i64 %193, i32 %199)
  %201 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %202 = load i64, i64* @STV6110x_TNG0, align 8
  %203 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %204 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @STV6110x_TNG0, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %201, i64 %202, i32 %208)
  %210 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %211 = load i64, i64* @STV6110x_STAT1, align 8
  %212 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %213 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @STV6110x_STAT1, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %210, i64 %211, i32 %217)
  store i64 0, i64* %12, align 8
  br label %219

219:                                              ; preds = %244, %134
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* @TRIALS, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %247

223:                                              ; preds = %219
  %224 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %225 = load i64, i64* @STV6110x_STAT1, align 8
  %226 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %227 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* @STV6110x_STAT1, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = call i32 @stv6110x_read_reg(%struct.stv6110x_state* %224, i64 %225, i32* %230)
  %232 = load i32, i32* @STAT1_CALVCO_STRT, align 4
  %233 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %234 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @STV6110x_STAT1, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @STV6110x_GETFIELD(i32 %232, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %223
  br label %247

242:                                              ; preds = %223
  %243 = call i32 @msleep(i32 1)
  br label %244

244:                                              ; preds = %242
  %245 = load i64, i64* %12, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %12, align 8
  br label %219

247:                                              ; preds = %241, %219
  ret i32 0
}

declare dso_local i32 @STV6110x_SETFIELD(i32, i32, i32) #1

declare dso_local i32 @R_DIV(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @MSB(i32) #1

declare dso_local i32 @LSB(i32) #1

declare dso_local i32 @stv6110x_write_reg(%struct.stv6110x_state*, i64, i32) #1

declare dso_local i32 @stv6110x_read_reg(%struct.stv6110x_state*, i64, i32*) #1

declare dso_local i32 @STV6110x_GETFIELD(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
