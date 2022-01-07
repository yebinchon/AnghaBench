; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*, %struct.dvb_frontend_parameters*, i32)* @dib7000p_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_set_channel(%struct.dib7000p_state* %0, %struct.dvb_frontend_parameters* %1, i32 %2) #0 {
  %4 = alloca %struct.dib7000p_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %10 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BANDWIDTH_TO_KHZ(i32 %14)
  %16 = call i32 @dib7000p_set_bandwidth(%struct.dib7000p_state* %9, i32 %15)
  store i32 0, i32* %7, align 4
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %27 [
    i32 130, label %22
    i32 129, label %24
    i32 128, label %28
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %7, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, 256
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %3, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 128
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %24, %22
  %32 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %45 [
    i32 139, label %37
    i32 140, label %39
    i32 138, label %42
    i32 137, label %46
  ]

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %7, align 4
  br label %49

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 32
  store i32 %41, i32* %7, align 4
  br label %49

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, 96
  store i32 %44, i32* %7, align 4
  br label %49

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %31, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 64
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %42, %39, %37
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %60 [
    i32 131, label %55
    i32 133, label %57
    i32 132, label %61
  ]

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %7, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, 8
  store i32 %59, i32* %7, align 4
  br label %64

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %49, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 16
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %57, %55
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %67, i32 0, i32 %68)
  %70 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %71, 4
  %73 = or i32 %72, 1
  %74 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %70, i32 5, i32 %73)
  store i32 0, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, 64
  store i32 %76, i32* %7, align 4
  %77 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %64
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, 16
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %64
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, 1
  store i32 %88, i32* %7, align 4
  %89 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %86
  br i1 true, label %96, label %102

96:                                               ; preds = %95, %86
  %97 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  br label %108

102:                                              ; preds = %95
  %103 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %104 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  br label %108

108:                                              ; preds = %102, %96
  %109 = phi i32 [ %101, %96 ], [ %107, %102 ]
  switch i32 %109, label %122 [
    i32 144, label %110
    i32 143, label %113
    i32 142, label %116
    i32 141, label %119
    i32 145, label %123
  ]

110:                                              ; preds = %108
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, 4
  store i32 %112, i32* %7, align 4
  br label %126

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, 6
  store i32 %115, i32* %7, align 4
  br label %126

116:                                              ; preds = %108
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, 10
  store i32 %118, i32* %7, align 4
  br label %126

119:                                              ; preds = %108
  %120 = load i32, i32* %7, align 4
  %121 = or i32 %120, 14
  store i32 %121, i32* %7, align 4
  br label %126

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %108, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, 2
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %123, %119, %116, %113, %110
  %127 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %127, i32 208, i32 %128)
  %130 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %131 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %130, i32 26, i32 26240)
  %132 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %133 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %132, i32 32, i32 3)
  %134 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %135 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %134, i32 29, i32 4723)
  %136 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %137 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %136, i32 33, i32 5)
  %138 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %139 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %146 [
    i32 128, label %143
    i32 129, label %144
    i32 130, label %145
  ]

143:                                              ; preds = %126
  store i32 256, i32* %7, align 4
  br label %147

144:                                              ; preds = %126
  store i32 128, i32* %7, align 4
  br label %147

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %126, %145
  store i32 64, i32* %7, align 4
  br label %147

147:                                              ; preds = %146, %144, %143
  %148 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %149 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %162 [
    i32 140, label %153
    i32 137, label %156
    i32 138, label %159
    i32 139, label %163
  ]

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  %155 = mul nsw i32 %154, 2
  store i32 %155, i32* %7, align 4
  br label %166

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 %157, 4
  store i32 %158, i32* %7, align 4
  br label %166

159:                                              ; preds = %147
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 %160, 8
  store i32 %161, i32* %7, align 4
  br label %166

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %147, %162
  %164 = load i32, i32* %7, align 4
  %165 = mul nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %163, %159, %156, %153
  %167 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %168 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load i32, i32* %7, align 4
  %174 = mul nsw i32 %173, 3
  %175 = sdiv i32 %174, 2
  %176 = add nsw i32 %175, 48
  %177 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %178 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  br label %190

179:                                              ; preds = %166
  %180 = load i32, i32* %7, align 4
  %181 = mul nsw i32 %180, 3
  %182 = sdiv i32 %181, 2
  %183 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %184 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %182, %186
  %188 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %189 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %179, %172
  %191 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %192 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %191, i32 0, i32 1
  store i32 0, i32* %192, align 4
  %193 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %194 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %193, i32 0, i32 3
  %195 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %196 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dib7000p_set_diversity_in(i32* %194, i32 %197)
  %199 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %200 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %214 [
    i32 132, label %204
    i32 133, label %209
  ]

204:                                              ; preds = %190
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 328, i32* %205, align 16
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65520, i32* %206, align 4
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %207, align 8
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %208, align 4
  br label %219

209:                                              ; preds = %190
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 573, i32* %210, align 16
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65503, i32* %211, align 4
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %212, align 8
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65520, i32* %213, align 4
  br label %219

214:                                              ; preds = %190
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 2458, i32* %215, align 16
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65454, i32* %216, align 4
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 819, i32* %217, align 8
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %218, align 4
  br label %219

219:                                              ; preds = %214, %209, %204
  store i32 0, i32* %7, align 4
  br label %220

220:                                              ; preds = %232, %219
  %221 = load i32, i32* %7, align 4
  %222 = icmp slt i32 %221, 4
  br i1 %222, label %223, label %235

223:                                              ; preds = %220
  %224 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 187, %225
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %224, i32 %226, i32 %230)
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %220

235:                                              ; preds = %220
  ret void
}

declare dso_local i32 @dib7000p_set_bandwidth(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_set_diversity_in(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
