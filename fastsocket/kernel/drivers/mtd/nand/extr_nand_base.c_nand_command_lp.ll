; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_command_lp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_command_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.nand_chip* }
%struct.nand_chip = type { i32, i32, i32 (%struct.mtd_info.0*)*, i32, i32, i32 (%struct.mtd_info.1*, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque

@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32, i32)* @nand_command_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_command_lp(%struct.mtd_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 1
  %13 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  store %struct.nand_chip* %13, %struct.nand_chip** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NAND_CMD_READOOB, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  store i32 138, i32* %6, align 4
  br label %25

25:                                               ; preds = %17, %4
  %26 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 5
  %28 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %27, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %30 = bitcast %struct.mtd_info* %29 to %struct.mtd_info.1*
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = load i32, i32* @NAND_NCE, align 4
  %34 = load i32, i32* @NAND_CLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 %28(%struct.mtd_info.1* %30, i32 %32, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %125

44:                                               ; preds = %41, %25
  %45 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %46 = load i32, i32* @NAND_NCE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NAND_ALE, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %84

52:                                               ; preds = %44
  %53 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 5
  %65 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %64, align 8
  %66 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %67 = bitcast %struct.mtd_info* %66 to %struct.mtd_info.1*
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 %65(%struct.mtd_info.1* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 5
  %77 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %76, align 8
  %78 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %79 = bitcast %struct.mtd_info* %78 to %struct.mtd_info.1*
  %80 = load i32, i32* %7, align 4
  %81 = ashr i32 %80, 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 %77(%struct.mtd_info.1* %79, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %62, %44
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %124

87:                                               ; preds = %84
  %88 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 5
  %90 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %89, align 8
  %91 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %92 = bitcast %struct.mtd_info* %91 to %struct.mtd_info.1*
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 %90(%struct.mtd_info.1* %92, i32 %93, i32 %94)
  %96 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 5
  %98 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %97, align 8
  %99 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %100 = bitcast %struct.mtd_info* %99 to %struct.mtd_info.1*
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 8
  %103 = load i32, i32* @NAND_NCE, align 4
  %104 = load i32, i32* @NAND_ALE, align 4
  %105 = or i32 %103, %104
  %106 = call i32 %98(%struct.mtd_info.1* %100, i32 %102, i32 %105)
  %107 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %108 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 134217728
  br i1 %110, label %111, label %123

111:                                              ; preds = %87
  %112 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 5
  %114 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %113, align 8
  %115 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %116 = bitcast %struct.mtd_info* %115 to %struct.mtd_info.1*
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 16
  %119 = load i32, i32* @NAND_NCE, align 4
  %120 = load i32, i32* @NAND_ALE, align 4
  %121 = or i32 %119, %120
  %122 = call i32 %114(%struct.mtd_info.1* %116, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %111, %87
  br label %124

124:                                              ; preds = %123, %84
  br label %125

125:                                              ; preds = %124, %41
  %126 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %127 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 5
  %128 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %127, align 8
  %129 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %130 = bitcast %struct.mtd_info* %129 to %struct.mtd_info.1*
  %131 = load i32, i32* @NAND_CMD_NONE, align 4
  %132 = load i32, i32* @NAND_NCE, align 4
  %133 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %134 = or i32 %132, %133
  %135 = call i32 %128(%struct.mtd_info.1* %130, i32 %131, i32 %134)
  %136 = load i32, i32* %6, align 4
  switch i32 %136, label %234 [
    i32 143, label %137
    i32 139, label %137
    i32 141, label %137
    i32 140, label %137
    i32 134, label %137
    i32 136, label %137
    i32 133, label %137
    i32 142, label %137
    i32 132, label %138
    i32 131, label %138
    i32 130, label %138
    i32 129, label %138
    i32 128, label %138
    i32 137, label %143
    i32 135, label %188
    i32 138, label %211
  ]

137:                                              ; preds = %125, %125, %125, %125, %125, %125, %125, %125
  br label %249

138:                                              ; preds = %125, %125, %125, %125, %125
  %139 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %140 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @udelay(i32 %141)
  br label %249

143:                                              ; preds = %125
  %144 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %145 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %245

149:                                              ; preds = %143
  %150 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @udelay(i32 %152)
  %154 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %155 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %154, i32 0, i32 5
  %156 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %155, align 8
  %157 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %158 = bitcast %struct.mtd_info* %157 to %struct.mtd_info.1*
  %159 = load i32, i32* @NAND_NCE, align 4
  %160 = load i32, i32* @NAND_CLE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %163 = or i32 %161, %162
  %164 = call i32 %156(%struct.mtd_info.1* %158, i32 133, i32 %163)
  %165 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %166 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %165, i32 0, i32 5
  %167 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %166, align 8
  %168 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %169 = bitcast %struct.mtd_info* %168 to %struct.mtd_info.1*
  %170 = load i32, i32* @NAND_CMD_NONE, align 4
  %171 = load i32, i32* @NAND_NCE, align 4
  %172 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %173 = or i32 %171, %172
  %174 = call i32 %167(%struct.mtd_info.1* %169, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %186, %149
  %176 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %177 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %176, i32 0, i32 2
  %178 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %177, align 8
  %179 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %180 = bitcast %struct.mtd_info* %179 to %struct.mtd_info.0*
  %181 = call i32 %178(%struct.mtd_info.0* %180)
  %182 = load i32, i32* @NAND_STATUS_READY, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %175

187:                                              ; preds = %175
  br label %249

188:                                              ; preds = %125
  %189 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %190 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %189, i32 0, i32 5
  %191 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %190, align 8
  %192 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %193 = bitcast %struct.mtd_info* %192 to %struct.mtd_info.1*
  %194 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %195 = load i32, i32* @NAND_NCE, align 4
  %196 = load i32, i32* @NAND_CLE, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %199 = or i32 %197, %198
  %200 = call i32 %191(%struct.mtd_info.1* %193, i32 %194, i32 %199)
  %201 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %202 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %201, i32 0, i32 5
  %203 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %202, align 8
  %204 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %205 = bitcast %struct.mtd_info* %204 to %struct.mtd_info.1*
  %206 = load i32, i32* @NAND_CMD_NONE, align 4
  %207 = load i32, i32* @NAND_NCE, align 4
  %208 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %209 = or i32 %207, %208
  %210 = call i32 %203(%struct.mtd_info.1* %205, i32 %206, i32 %209)
  br label %249

211:                                              ; preds = %125
  %212 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %213 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %212, i32 0, i32 5
  %214 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %213, align 8
  %215 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %216 = bitcast %struct.mtd_info* %215 to %struct.mtd_info.1*
  %217 = load i32, i32* @NAND_CMD_READSTART, align 4
  %218 = load i32, i32* @NAND_NCE, align 4
  %219 = load i32, i32* @NAND_CLE, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %222 = or i32 %220, %221
  %223 = call i32 %214(%struct.mtd_info.1* %216, i32 %217, i32 %222)
  %224 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %225 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %224, i32 0, i32 5
  %226 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %225, align 8
  %227 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %228 = bitcast %struct.mtd_info* %227 to %struct.mtd_info.1*
  %229 = load i32, i32* @NAND_CMD_NONE, align 4
  %230 = load i32, i32* @NAND_NCE, align 4
  %231 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %232 = or i32 %230, %231
  %233 = call i32 %226(%struct.mtd_info.1* %228, i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %125, %211
  %235 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %236 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %234
  %240 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %241 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @udelay(i32 %242)
  br label %249

244:                                              ; preds = %234
  br label %245

245:                                              ; preds = %244, %148
  %246 = call i32 @ndelay(i32 100)
  %247 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %248 = call i32 @nand_wait_ready(%struct.mtd_info* %247)
  br label %249

249:                                              ; preds = %245, %239, %188, %187, %138, %137
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @nand_wait_ready(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
