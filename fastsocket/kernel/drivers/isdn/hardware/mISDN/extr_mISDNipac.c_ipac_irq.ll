; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_ipac_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_ipac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, %struct.hscx_hw* }

@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPACX_ISTAB = common dso_local global i32 0, align 4
@IPAC_TYPE_IPAC = common dso_local global i32 0, align 4
@IPAC_ISTAB = common dso_local global i32 0, align 4
@IPAC__EXA = common dso_local global i32 0, align 4
@IPAC__EXB = common dso_local global i32 0, align 4
@IPAC_EXIRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: B%1d EXIRB %02x\0A\00", align 1
@HSCX__EXA = common dso_local global i32 0, align 4
@HSCX__ICA = common dso_local global i32 0, align 4
@HSCX__EXB = common dso_local global i32 0, align 4
@IPAC_B_XDU = common dso_local global i32 0, align 4
@IPACX_B_XDU = common dso_local global i32 0, align 4
@IPAC_B_RFO = common dso_local global i32 0, align 4
@IPACX_B_RFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: B%1d ISTAB %02x\0A\00", align 1
@FLG_ACTIVE = common dso_local global i32 0, align 4
@IPACX_B_RME = common dso_local global i32 0, align 4
@IPACX_B_RPF = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: B%1d RFO error\0A\00", align 1
@IPACX_B_XPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: B%1d XDU error at len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*, i32)* @ipac_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipac_irq(%struct.hscx_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.hscx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hscx_hw* %0, %struct.hscx_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %9 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %18 = load i32, i32* @IPACX_ISTAB, align 4
  %19 = call i32 @ReadHSCX(%struct.hscx_hw* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %138

20:                                               ; preds = %2
  %21 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %22 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IPAC_TYPE_IPAC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %20
  %30 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %31 = load i32, i32* @IPAC_ISTAB, align 4
  %32 = call i32 @ReadHSCX(%struct.hscx_hw* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %34 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @IPAC__EXA, align 4
  br label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @IPAC__EXB, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %51 = load i32, i32* @IPAC_EXIRB, align 4
  %52 = call i32 @ReadHSCX(%struct.hscx_hw* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %54 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %59 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %49, %43
  br label %137

65:                                               ; preds = %20
  %66 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %67 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %110

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @HSCX__EXA, align 4
  %75 = load i32, i32* @HSCX__ICA, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %81 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load %struct.hscx_hw*, %struct.hscx_hw** %83, align 8
  %85 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %84, i64 0
  %86 = load i32, i32* %4, align 4
  call void @ipac_irq(%struct.hscx_hw* %85, i32 %86)
  br label %87

87:                                               ; preds = %79, %72
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @HSCX__EXB, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %94 = load i32, i32* @IPAC_EXIRB, align 4
  %95 = call i32 @ReadHSCX(%struct.hscx_hw* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %97 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %102 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %92, %87
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, 248
  store i32 %109, i32* %5, align 4
  br label %136

110:                                              ; preds = %65
  %111 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %112 = load i32, i32* @IPAC_ISTAB, align 4
  %113 = call i32 @ReadHSCX(%struct.hscx_hw* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @HSCX__EXA, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %110
  %119 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %120 = load i32, i32* @IPAC_EXIRB, align 4
  %121 = call i32 @ReadHSCX(%struct.hscx_hw* %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %123 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %128 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %118, %110
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 248
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %107
  br label %137

137:                                              ; preds = %136, %64
  br label %138

138:                                              ; preds = %137, %16
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @IPAC_B_XDU, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @IPACX_B_XDU, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @IPAC_B_RFO, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @IPACX_B_RFO, align 4
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %158 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %163 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %161, i32 %165, i32 %166)
  %168 = load i32, i32* @FLG_ACTIVE, align 4
  %169 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %170 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = call i64 @test_bit(i32 %168, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %156
  br label %273

175:                                              ; preds = %156
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @IPACX_B_RME, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %182 = call i32 @ipac_rme(%struct.hscx_hw* %181)
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @IPACX_B_RPF, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %183
  %189 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %190 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %191 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @hscx_empty_fifo(%struct.hscx_hw* %189, i32 %192)
  %194 = load i32, i32* @FLG_TRANSPARENT, align 4
  %195 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %196 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = call i64 @test_bit(i32 %194, i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %188
  %201 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %202 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %208 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %207, i32 0, i32 0
  %209 = call i32 @recv_Bchannel(%struct.TYPE_4__* %208, i32 0)
  br label %210

210:                                              ; preds = %206, %200
  br label %211

211:                                              ; preds = %210, %188
  br label %212

212:                                              ; preds = %211, %183
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @IPACX_B_RFO, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %212
  %218 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %219 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %218, i32 0, i32 1
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %224 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %226)
  %228 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %229 = call i32 @hscx_cmdr(%struct.hscx_hw* %228, i32 64)
  br label %230

230:                                              ; preds = %217, %212
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @IPACX_B_XPR, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %237 = call i32 @hscx_xpr(%struct.hscx_hw* %236)
  br label %238

238:                                              ; preds = %235, %230
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @IPACX_B_XDU, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %273

243:                                              ; preds = %238
  %244 = load i32, i32* @FLG_TRANSPARENT, align 4
  %245 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %246 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 2
  %248 = call i64 @test_bit(i32 %244, i32* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %243
  %251 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %252 = call i32 @hscx_fill_fifo(%struct.hscx_hw* %251)
  br label %273

253:                                              ; preds = %243
  %254 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %255 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %254, i32 0, i32 1
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %260 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %264 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %258, i32 %262, i32 %266)
  %268 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %269 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  store i32 0, i32* %270, align 4
  %271 = load %struct.hscx_hw*, %struct.hscx_hw** %3, align 8
  %272 = call i32 @hscx_cmdr(%struct.hscx_hw* %271, i32 1)
  br label %273

273:                                              ; preds = %174, %250, %253, %238
  ret void
}

declare dso_local i32 @ReadHSCX(%struct.hscx_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ipac_rme(%struct.hscx_hw*) #1

declare dso_local i32 @hscx_empty_fifo(%struct.hscx_hw*, i32) #1

declare dso_local i32 @recv_Bchannel(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @hscx_cmdr(%struct.hscx_hw*, i32) #1

declare dso_local i32 @hscx_xpr(%struct.hscx_hw*) #1

declare dso_local i32 @hscx_fill_fifo(%struct.hscx_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
