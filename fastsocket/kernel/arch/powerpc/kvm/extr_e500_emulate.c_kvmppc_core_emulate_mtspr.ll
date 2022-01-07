; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_mtspr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_mtspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32 }
%struct.kvmppc_vcpu_e500 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@EMULATE_DONE = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_SPE_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_DATA = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_ROUND = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_PERFORMANCE_MONITOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_emulate_mtspr(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %12, label %239 [
    i32 130, label %13
    i32 129, label %32
    i32 128, label %45
    i32 138, label %58
    i32 137, label %69
    i32 136, label %80
    i32 135, label %91
    i32 134, label %102
    i32 133, label %113
    i32 132, label %124
    i32 139, label %135
    i32 145, label %146
    i32 144, label %157
    i32 131, label %168
    i32 143, label %179
    i32 142, label %194
    i32 141, label %209
    i32 140, label %224
  ]

13:                                               ; preds = %3
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %21, i32* %27, align 4
  %28 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %29 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %28, i32 0, i32 10
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %21, i32* %31, align 4
  br label %244

32:                                               ; preds = %3
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %41, i32 0, i32 10
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  br label %244

45:                                               ; preds = %3
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %55 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %54, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %53, i32* %57, align 4
  br label %244

58:                                               ; preds = %3
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %68 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  br label %244

69:                                               ; preds = %3
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %79 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  br label %244

80:                                               ; preds = %3
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %90 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  br label %244

91:                                               ; preds = %3
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %101 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  br label %244

102:                                              ; preds = %3
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %112 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %244

113:                                              ; preds = %3
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %123 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  br label %244

124:                                              ; preds = %3
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %126 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %134 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %244

135:                                              ; preds = %3
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %137 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %145 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %244

146:                                              ; preds = %3
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %156 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %244

157:                                              ; preds = %3
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %159 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %167 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %244

168:                                              ; preds = %3
  %169 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %170 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %171 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @kvmppc_e500_emul_mt_mmucsr0(%struct.kvmppc_vcpu_e500* %169, i32 %177)
  store i32 %178, i32* %8, align 4
  br label %244

179:                                              ; preds = %3
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %189 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @BOOKE_IRQPRIO_SPE_UNAVAIL, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32 %187, i32* %193, align 4
  br label %244

194:                                              ; preds = %3
  %195 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %196 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %204 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @BOOKE_IRQPRIO_SPE_FP_DATA, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 %202, i32* %208, align 4
  br label %244

209:                                              ; preds = %3
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %211 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %219 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @BOOKE_IRQPRIO_SPE_FP_ROUND, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32 %217, i32* %223, align 4
  br label %244

224:                                              ; preds = %3
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %226 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %234 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @BOOKE_IRQPRIO_PERFORMANCE_MONITOR, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32 %232, i32* %238, align 4
  br label %244

239:                                              ; preds = %3
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @kvmppc_booke_emulate_mtspr(%struct.kvm_vcpu* %240, i32 %241, i32 %242)
  store i32 %243, i32* %8, align 4
  br label %244

244:                                              ; preds = %239, %224, %209, %194, %179, %168, %157, %146, %135, %124, %113, %102, %91, %80, %69, %58, %45, %32, %13
  %245 = load i32, i32* %8, align 4
  ret i32 %245
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_e500_emul_mt_mmucsr0(%struct.kvmppc_vcpu_e500*, i32) #1

declare dso_local i32 @kvmppc_booke_emulate_mtspr(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
