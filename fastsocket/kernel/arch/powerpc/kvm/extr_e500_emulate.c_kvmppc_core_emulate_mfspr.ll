; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_mfspr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_mfspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.kvmppc_vcpu_e500 = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_SPE_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_DATA = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_ROUND = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_PERFORMANCE_MONITOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_emulate_mfspr(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %9)
  store %struct.kvmppc_vcpu_e500* %10, %struct.kvmppc_vcpu_e500** %7, align 8
  %11 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %310 [
    i32 132, label %13
    i32 131, label %26
    i32 130, label %39
    i32 141, label %52
    i32 140, label %63
    i32 139, label %74
    i32 138, label %85
    i32 137, label %96
    i32 136, label %107
    i32 135, label %118
    i32 129, label %129
    i32 128, label %164
    i32 142, label %199
    i32 148, label %210
    i32 147, label %221
    i32 133, label %232
    i32 134, label %240
    i32 146, label %250
    i32 145, label %265
    i32 144, label %280
    i32 143, label %295
  ]

13:                                               ; preds = %3
  %14 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %18, i32* %25, align 4
  br label %315

26:                                               ; preds = %3
  %27 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %28 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %31, i32* %38, align 4
  br label %315

39:                                               ; preds = %3
  %40 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %41 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %44, i32* %51, align 4
  br label %315

52:                                               ; preds = %3
  %53 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %54 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %55, i32* %62, align 4
  br label %315

63:                                               ; preds = %3
  %64 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %65 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %66, i32* %73, align 4
  br label %315

74:                                               ; preds = %3
  %75 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %76 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %77, i32* %84, align 4
  br label %315

85:                                               ; preds = %3
  %86 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %87 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %88, i32* %95, align 4
  br label %315

96:                                               ; preds = %3
  %97 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %98 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %101 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %99, i32* %106, align 4
  br label %315

107:                                              ; preds = %3
  %108 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %109 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %110, i32* %117, align 4
  br label %315

118:                                              ; preds = %3
  %119 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %120 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %121, i32* %128, align 4
  br label %315

129:                                              ; preds = %3
  %130 = call i8* @mfspr(i32 129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %131, i32* %138, align 4
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = and i64 %147, -4096
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %151 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %150, i32 0, i32 8
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %156 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %154
  store i32 %163, i32* %161, align 4
  br label %315

164:                                              ; preds = %3
  %165 = call i8* @mfspr(i32 128)
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %166, i32* %173, align 4
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %175 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = and i64 %182, -4096
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 4
  %185 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %186 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %185, i32 0, i32 8
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %191 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %189
  store i32 %198, i32* %196, align 4
  br label %315

199:                                              ; preds = %3
  %200 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %201 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %204 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %202, i32* %209, align 4
  br label %315

210:                                              ; preds = %3
  %211 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %212 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %215 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %213, i32* %220, align 4
  br label %315

221:                                              ; preds = %3
  %222 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %223 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %222, i32 0, i32 11
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %226 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %224, i32* %231, align 4
  br label %315

232:                                              ; preds = %3
  %233 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %234 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 0, i32* %239, align 4
  br label %315

240:                                              ; preds = %3
  %241 = call i8* @mfspr(i32 134)
  %242 = ptrtoint i8* %241 to i32
  %243 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %244 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %242, i32* %249, align 4
  br label %315

250:                                              ; preds = %3
  %251 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %252 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @BOOKE_IRQPRIO_SPE_UNAVAIL, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %259 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %257, i32* %264, align 4
  br label %315

265:                                              ; preds = %3
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %267 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* @BOOKE_IRQPRIO_SPE_FP_DATA, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %274 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %272, i32* %279, align 4
  br label %315

280:                                              ; preds = %3
  %281 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %282 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* @BOOKE_IRQPRIO_SPE_FP_ROUND, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %289 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %287, i32* %294, align 4
  br label %315

295:                                              ; preds = %3
  %296 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %297 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* @BOOKE_IRQPRIO_PERFORMANCE_MONITOR, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %304 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  store i32 %302, i32* %309, align 4
  br label %315

310:                                              ; preds = %3
  %311 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %312 = load i32, i32* %5, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call i32 @kvmppc_booke_emulate_mfspr(%struct.kvm_vcpu* %311, i32 %312, i32 %313)
  store i32 %314, i32* %8, align 4
  br label %315

315:                                              ; preds = %310, %295, %280, %265, %250, %240, %232, %221, %210, %199, %164, %129, %118, %107, %96, %85, %74, %63, %52, %39, %26, %13
  %316 = load i32, i32* %8, align 4
  ret i32 %316
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @kvmppc_booke_emulate_mfspr(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
