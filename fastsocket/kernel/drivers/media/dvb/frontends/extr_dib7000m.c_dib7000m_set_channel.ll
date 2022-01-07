; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DIB7000M_POWER_COR4_DINTLV_ICIRM_EQUAL_CFROD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000m_state*, %struct.dvb_frontend_parameters*, i32)* @dib7000m_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000m_set_channel(%struct.dib7000m_state* %0, %struct.dvb_frontend_parameters* %1, i32 %2) #0 {
  %4 = alloca %struct.dib7000m_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %10 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BANDWIDTH_TO_KHZ(i32 %14)
  %16 = call i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %9, i32 %15)
  store i32 0, i32* %7, align 4
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
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
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
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
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
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
  %67 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %67, i32 0, i32 %68)
  %70 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %71, 4
  %73 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %70, i32 5, i32 %72)
  store i32 0, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, 64
  store i32 %75, i32* %7, align 4
  %76 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %64
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, 16
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %64
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  br i1 true, label %95, label %101

95:                                               ; preds = %94, %85
  %96 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %97 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  br label %107

101:                                              ; preds = %94
  %102 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  br label %107

107:                                              ; preds = %101, %95
  %108 = phi i32 [ %100, %95 ], [ %106, %101 ]
  switch i32 %108, label %121 [
    i32 144, label %109
    i32 143, label %112
    i32 142, label %115
    i32 141, label %118
    i32 145, label %122
  ]

109:                                              ; preds = %107
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, 4
  store i32 %111, i32* %7, align 4
  br label %125

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, 6
  store i32 %114, i32* %7, align 4
  br label %125

115:                                              ; preds = %107
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, 10
  store i32 %117, i32* %7, align 4
  br label %125

118:                                              ; preds = %107
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, 14
  store i32 %120, i32* %7, align 4
  br label %125

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %107, %121
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, 2
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %122, %118, %115, %112, %109
  %126 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %127 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %128 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 267, %129
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %126, i32 %130, i32 %131)
  %133 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %134 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %133, i32 26, i32 26240)
  %135 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %136 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %135, i32 29, i32 4723)
  %137 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %138 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %137, i32 32, i32 3)
  %139 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %140 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %139, i32 33, i32 5)
  %141 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %142 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %149 [
    i32 128, label %146
    i32 129, label %147
    i32 130, label %148
  ]

146:                                              ; preds = %125
  store i32 256, i32* %7, align 4
  br label %150

147:                                              ; preds = %125
  store i32 128, i32* %7, align 4
  br label %150

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %125, %148
  store i32 64, i32* %7, align 4
  br label %150

150:                                              ; preds = %149, %147, %146
  %151 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %152 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %165 [
    i32 140, label %156
    i32 137, label %159
    i32 138, label %162
    i32 139, label %166
  ]

156:                                              ; preds = %150
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 %157, 2
  store i32 %158, i32* %7, align 4
  br label %169

159:                                              ; preds = %150
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 %160, 4
  store i32 %161, i32* %7, align 4
  br label %169

162:                                              ; preds = %150
  %163 = load i32, i32* %7, align 4
  %164 = mul nsw i32 %163, 8
  store i32 %164, i32* %7, align 4
  br label %169

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %150, %165
  %167 = load i32, i32* %7, align 4
  %168 = mul nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %166, %162, %159, %156
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 %170, 3
  %172 = sdiv i32 %171, 2
  %173 = add nsw i32 %172, 32
  %174 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %175 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %177 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %176, i32 0, i32 3
  store i32 0, i32* %177, align 4
  %178 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %179 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %178, i32 0, i32 5
  %180 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %181 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @dib7000m_set_diversity_in(i32* %179, i32 %182)
  %184 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %185 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  switch i32 %188, label %199 [
    i32 132, label %189
    i32 133, label %194
  ]

189:                                              ; preds = %169
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 328, i32* %190, align 16
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65520, i32* %191, align 4
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %192, align 8
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %193, align 4
  br label %204

194:                                              ; preds = %169
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 573, i32* %195, align 16
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65503, i32* %196, align 4
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 164, i32* %197, align 8
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65520, i32* %198, align 4
  br label %204

199:                                              ; preds = %169
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 2458, i32* %200, align 16
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 65454, i32* %201, align 4
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 819, i32* %202, align 8
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 65528, i32* %203, align 4
  br label %204

204:                                              ; preds = %199, %194, %189
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %221, %204
  %206 = load i32, i32* %7, align 4
  %207 = icmp slt i32 %206, 4
  br i1 %207, label %208, label %224

208:                                              ; preds = %205
  %209 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 214, %210
  %212 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %213 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %211, %214
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %209, i32 %215, i32 %219)
  br label %221

221:                                              ; preds = %208
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %205

224:                                              ; preds = %205
  %225 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %226 = load i32, i32* @DIB7000M_POWER_COR4_DINTLV_ICIRM_EQUAL_CFROD, align 4
  %227 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %225, i32 %226)
  ret void
}

declare dso_local i32 @dib7000m_set_bandwidth(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @dib7000m_set_diversity_in(i32*, i32) #1

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
