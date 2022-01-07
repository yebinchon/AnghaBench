; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_kgdb.c_get_step_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_kgdb.c_get_step_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32*, i64 }

@SR_T_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (%struct.pt_regs*)* @get_step_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @get_step_address(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @__raw_readw(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @OPCODE_BT(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SR_T_BIT_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @OPCODE_BTF_DISP(i32 %24)
  %26 = add nsw i32 %23, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %4, align 8
  br label %34

28:                                               ; preds = %12
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %28, %19
  br label %242

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @OPCODE_BTS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SR_T_BIT_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @OPCODE_BTF_DISP(i32 %51)
  %53 = add nsw i32 %50, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %4, align 8
  br label %61

55:                                               ; preds = %39
  %56 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %55, %46
  br label %241

62:                                               ; preds = %35
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @OPCODE_BF(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SR_T_BIT_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @OPCODE_BTF_DISP(i32 %78)
  %80 = add nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %4, align 8
  br label %88

82:                                               ; preds = %66
  %83 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %82, %73
  br label %240

89:                                               ; preds = %62
  %90 = load i32, i32* %3, align 4
  %91 = call i64 @OPCODE_BFS(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SR_T_BIT_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %93
  %101 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @OPCODE_BTF_DISP(i32 %105)
  %107 = add nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %4, align 8
  br label %115

109:                                              ; preds = %93
  %110 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 4
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %109, %100
  br label %239

116:                                              ; preds = %89
  %117 = load i32, i32* %3, align 4
  %118 = call i64 @OPCODE_BRA(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 4
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @OPCODE_BRA_DISP(i32 %125)
  %127 = add nsw i32 %124, %126
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %4, align 8
  br label %238

129:                                              ; preds = %116
  %130 = load i32, i32* %3, align 4
  %131 = call i64 @OPCODE_BRAF(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %135 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 4
  %138 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %139 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = call i64 @OPCODE_BRAF_REG(i32 %141)
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %137, %144
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %4, align 8
  br label %237

147:                                              ; preds = %129
  %148 = load i32, i32* %3, align 4
  %149 = call i64 @OPCODE_BSR(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %153 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 4
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @OPCODE_BSR_DISP(i32 %156)
  %158 = add nsw i32 %155, %157
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %4, align 8
  br label %236

160:                                              ; preds = %147
  %161 = load i32, i32* %3, align 4
  %162 = call i64 @OPCODE_BSRF(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %166 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 4
  %169 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %170 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = call i64 @OPCODE_BSRF_REG(i32 %172)
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %168, %175
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %4, align 8
  br label %235

178:                                              ; preds = %160
  %179 = load i32, i32* %3, align 4
  %180 = call i64 @OPCODE_JMP(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %184 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %3, align 4
  %187 = call i64 @OPCODE_JMP_REG(i32 %186)
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %4, align 8
  br label %234

191:                                              ; preds = %178
  %192 = load i32, i32* %3, align 4
  %193 = call i64 @OPCODE_JSR(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %197 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %3, align 4
  %200 = call i64 @OPCODE_JSR_REG(i32 %199)
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %4, align 8
  br label %233

204:                                              ; preds = %191
  %205 = load i32, i32* %3, align 4
  %206 = call i64 @OPCODE_RTS(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %210 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %4, align 8
  br label %232

212:                                              ; preds = %204
  %213 = load i32, i32* %3, align 4
  %214 = call i64 @OPCODE_RTE(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %218 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 15
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %4, align 8
  br label %231

223:                                              ; preds = %212
  %224 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %225 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* %3, align 4
  %229 = call i64 @instruction_size(i32 %228)
  %230 = add nsw i64 %227, %229
  store i64 %230, i64* %4, align 8
  br label %231

231:                                              ; preds = %223, %216
  br label %232

232:                                              ; preds = %231, %208
  br label %233

233:                                              ; preds = %232, %195
  br label %234

234:                                              ; preds = %233, %182
  br label %235

235:                                              ; preds = %234, %164
  br label %236

236:                                              ; preds = %235, %151
  br label %237

237:                                              ; preds = %236, %133
  br label %238

238:                                              ; preds = %237, %120
  br label %239

239:                                              ; preds = %238, %115
  br label %240

240:                                              ; preds = %239, %88
  br label %241

241:                                              ; preds = %240, %61
  br label %242

242:                                              ; preds = %241, %34
  %243 = load i64, i64* %4, align 8
  %244 = load i64, i64* %4, align 8
  %245 = load i32, i32* %3, align 4
  %246 = call i64 @instruction_size(i32 %245)
  %247 = add nsw i64 %244, %246
  %248 = call i32 @flush_icache_range(i64 %243, i64 %247)
  %249 = load i64, i64* %4, align 8
  %250 = inttoptr i64 %249 to i16*
  ret i16* %250
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i64 @OPCODE_BT(i32) #1

declare dso_local i32 @OPCODE_BTF_DISP(i32) #1

declare dso_local i64 @OPCODE_BTS(i32) #1

declare dso_local i64 @OPCODE_BF(i32) #1

declare dso_local i64 @OPCODE_BFS(i32) #1

declare dso_local i64 @OPCODE_BRA(i32) #1

declare dso_local i32 @OPCODE_BRA_DISP(i32) #1

declare dso_local i64 @OPCODE_BRAF(i32) #1

declare dso_local i64 @OPCODE_BRAF_REG(i32) #1

declare dso_local i64 @OPCODE_BSR(i32) #1

declare dso_local i32 @OPCODE_BSR_DISP(i32) #1

declare dso_local i64 @OPCODE_BSRF(i32) #1

declare dso_local i64 @OPCODE_BSRF_REG(i32) #1

declare dso_local i64 @OPCODE_JMP(i32) #1

declare dso_local i64 @OPCODE_JMP_REG(i32) #1

declare dso_local i64 @OPCODE_JSR(i32) #1

declare dso_local i64 @OPCODE_JSR_REG(i32) #1

declare dso_local i64 @OPCODE_RTS(i32) #1

declare dso_local i64 @OPCODE_RTE(i32) #1

declare dso_local i64 @instruction_size(i32) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
