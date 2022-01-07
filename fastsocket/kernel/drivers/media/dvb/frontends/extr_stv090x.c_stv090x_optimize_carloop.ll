; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_optimize_carloop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_optimize_carloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_long_frame_crloop = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@stv090x_s2_crl_cut20 = common dso_local global %struct.stv090x_long_frame_crloop* null, align 8
@stv090x_s2_lowqpsk_crl_cut20 = common dso_local global %struct.stv090x_long_frame_crloop* null, align 8
@stv090x_s2_apsk_crl_cut20 = common dso_local global %struct.stv090x_long_frame_crloop* null, align 8
@stv090x_s2_crl_cut30 = common dso_local global %struct.stv090x_long_frame_crloop* null, align 8
@stv090x_s2_lowqpsk_crl_cut30 = common dso_local global %struct.stv090x_long_frame_crloop* null, align 8
@stv090x_s2_apsk_crl_cut30 = common dso_local global %struct.stv090x_long_frame_crloop* null, align 8
@STV090x_QPSK_12 = common dso_local global i32 0, align 4
@STV090x_QPSK_25 = common dso_local global i32 0, align 4
@STV090x_8PSK_910 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32, i32)* @stv090x_optimize_carloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_optimize_carloop(%struct.stv090x_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stv090x_long_frame_crloop*, align 8
  %10 = alloca %struct.stv090x_long_frame_crloop*, align 8
  %11 = alloca %struct.stv090x_long_frame_crloop*, align 8
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 41, i32* %7, align 4
  %12 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %13 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** @stv090x_s2_crl_cut20, align 8
  store %struct.stv090x_long_frame_crloop* %19, %struct.stv090x_long_frame_crloop** %9, align 8
  %20 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** @stv090x_s2_lowqpsk_crl_cut20, align 8
  store %struct.stv090x_long_frame_crloop* %20, %struct.stv090x_long_frame_crloop** %10, align 8
  %21 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** @stv090x_s2_apsk_crl_cut20, align 8
  store %struct.stv090x_long_frame_crloop* %21, %struct.stv090x_long_frame_crloop** %11, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** @stv090x_s2_crl_cut30, align 8
  store %struct.stv090x_long_frame_crloop* %23, %struct.stv090x_long_frame_crloop** %9, align 8
  %24 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** @stv090x_s2_lowqpsk_crl_cut30, align 8
  store %struct.stv090x_long_frame_crloop* %24, %struct.stv090x_long_frame_crloop** %10, align 8
  %25 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** @stv090x_s2_apsk_crl_cut30, align 8
  store %struct.stv090x_long_frame_crloop* %25, %struct.stv090x_long_frame_crloop** %11, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @STV090x_QPSK_12, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %36, i64 %38
  %40 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %35, %41
  br label %43

43:                                               ; preds = %34, %31
  %44 = phi i1 [ false, %31 ], [ %42, %34 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %31

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 2, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %98

53:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 14
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %59, i64 %61
  %63 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %58, %64
  br label %66

66:                                               ; preds = %57, %54
  %67 = phi i1 [ false, %54 ], [ %65, %57 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %54

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 14
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 11
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %11, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %80, i64 %82
  %84 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %79, %85
  br label %87

87:                                               ; preds = %78, %75
  %88 = phi i1 [ false, %75 ], [ %86, %78 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %75

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 11
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 10, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92
  br label %97

97:                                               ; preds = %96, %71
  br label %98

98:                                               ; preds = %97, %52
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @STV090x_QPSK_25, align 4
  %101 = icmp ule i32 %99, %100
  br i1 %101, label %102, label %224

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %164

105:                                              ; preds = %102
  %106 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %107 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sle i32 %108, 3000000
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %111, i64 %113
  %115 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  br label %163

117:                                              ; preds = %105
  %118 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %119 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sle i32 %120, 7000000
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %123, i64 %125
  %127 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %7, align 4
  br label %162

129:                                              ; preds = %117
  %130 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %131 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %132, 15000000
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %135, i64 %137
  %139 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %7, align 4
  br label %161

141:                                              ; preds = %129
  %142 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %143 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %144, 25000000
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %147, i64 %149
  %151 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %7, align 4
  br label %160

153:                                              ; preds = %141
  %154 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %154, i64 %156
  %158 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %153, %146
  br label %161

161:                                              ; preds = %160, %134
  br label %162

162:                                              ; preds = %161, %122
  br label %163

163:                                              ; preds = %162, %110
  br label %223

164:                                              ; preds = %102
  %165 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %166 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sle i32 %167, 3000000
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %170, i64 %172
  %174 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %7, align 4
  br label %222

176:                                              ; preds = %164
  %177 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %178 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sle i32 %179, 7000000
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %182, i64 %184
  %186 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %7, align 4
  br label %221

188:                                              ; preds = %176
  %189 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %190 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp sle i32 %191, 15000000
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %194, i64 %196
  %198 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %7, align 4
  br label %220

200:                                              ; preds = %188
  %201 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %202 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sle i32 %203, 25000000
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %206, i64 %208
  %210 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %7, align 4
  br label %219

212:                                              ; preds = %200
  %213 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %10, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %213, i64 %215
  %217 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %212, %205
  br label %220

220:                                              ; preds = %219, %193
  br label %221

221:                                              ; preds = %220, %181
  br label %222

222:                                              ; preds = %221, %169
  br label %223

223:                                              ; preds = %222, %163
  br label %410

224:                                              ; preds = %98
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* @STV090x_8PSK_910, align 4
  %227 = icmp ule i32 %225, %226
  br i1 %227, label %228, label %350

228:                                              ; preds = %224
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %290

231:                                              ; preds = %228
  %232 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %233 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp sle i32 %234, 3000000
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %237, i64 %239
  %241 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %7, align 4
  br label %289

243:                                              ; preds = %231
  %244 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %245 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp sle i32 %246, 7000000
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %249, i64 %251
  %253 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %7, align 4
  br label %288

255:                                              ; preds = %243
  %256 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %257 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp sle i32 %258, 15000000
  br i1 %259, label %260, label %267

260:                                              ; preds = %255
  %261 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %261, i64 %263
  %265 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %7, align 4
  br label %287

267:                                              ; preds = %255
  %268 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %269 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp sle i32 %270, 25000000
  br i1 %271, label %272, label %279

272:                                              ; preds = %267
  %273 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %273, i64 %275
  %277 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %7, align 4
  br label %286

279:                                              ; preds = %267
  %280 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %280, i64 %282
  %284 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %7, align 4
  br label %286

286:                                              ; preds = %279, %272
  br label %287

287:                                              ; preds = %286, %260
  br label %288

288:                                              ; preds = %287, %248
  br label %289

289:                                              ; preds = %288, %236
  br label %349

290:                                              ; preds = %228
  %291 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %292 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp sle i32 %293, 3000000
  br i1 %294, label %295, label %302

295:                                              ; preds = %290
  %296 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %296, i64 %298
  %300 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %7, align 4
  br label %348

302:                                              ; preds = %290
  %303 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %304 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp sle i32 %305, 7000000
  br i1 %306, label %307, label %314

307:                                              ; preds = %302
  %308 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %308, i64 %310
  %312 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %7, align 4
  br label %347

314:                                              ; preds = %302
  %315 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %316 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp sle i32 %317, 15000000
  br i1 %318, label %319, label %326

319:                                              ; preds = %314
  %320 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %321 = load i32, i32* %8, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %320, i64 %322
  %324 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %323, i32 0, i32 8
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %7, align 4
  br label %346

326:                                              ; preds = %314
  %327 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %328 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp sle i32 %329, 25000000
  br i1 %330, label %331, label %338

331:                                              ; preds = %326
  %332 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %332, i64 %334
  %336 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %335, i32 0, i32 9
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %7, align 4
  br label %345

338:                                              ; preds = %326
  %339 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %9, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %339, i64 %341
  %343 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %342, i32 0, i32 10
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %7, align 4
  br label %345

345:                                              ; preds = %338, %331
  br label %346

346:                                              ; preds = %345, %319
  br label %347

347:                                              ; preds = %346, %307
  br label %348

348:                                              ; preds = %347, %295
  br label %349

349:                                              ; preds = %348, %289
  br label %409

350:                                              ; preds = %224
  %351 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %352 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp sle i32 %353, 3000000
  br i1 %354, label %355, label %362

355:                                              ; preds = %350
  %356 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %11, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %356, i64 %358
  %360 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %7, align 4
  br label %408

362:                                              ; preds = %350
  %363 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %364 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp sle i32 %365, 7000000
  br i1 %366, label %367, label %374

367:                                              ; preds = %362
  %368 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %11, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %368, i64 %370
  %372 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %7, align 4
  br label %407

374:                                              ; preds = %362
  %375 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %376 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp sle i32 %377, 15000000
  br i1 %378, label %379, label %386

379:                                              ; preds = %374
  %380 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %11, align 8
  %381 = load i32, i32* %8, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %380, i64 %382
  %384 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %7, align 4
  br label %406

386:                                              ; preds = %374
  %387 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %388 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp sle i32 %389, 25000000
  br i1 %390, label %391, label %398

391:                                              ; preds = %386
  %392 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %11, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %392, i64 %394
  %396 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %7, align 4
  br label %405

398:                                              ; preds = %386
  %399 = load %struct.stv090x_long_frame_crloop*, %struct.stv090x_long_frame_crloop** %11, align 8
  %400 = load i32, i32* %8, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %399, i64 %401
  %403 = getelementptr inbounds %struct.stv090x_long_frame_crloop, %struct.stv090x_long_frame_crloop* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 4
  store i32 %404, i32* %7, align 4
  br label %405

405:                                              ; preds = %398, %391
  br label %406

406:                                              ; preds = %405, %379
  br label %407

407:                                              ; preds = %406, %367
  br label %408

408:                                              ; preds = %407, %355
  br label %409

409:                                              ; preds = %408, %349
  br label %410

410:                                              ; preds = %409, %223
  %411 = load i32, i32* %7, align 4
  ret i32 %411
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
