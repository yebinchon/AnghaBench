; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_mtspr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_mtspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_CRITICAL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_MACHINE_CHECK = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DATA_STORAGE = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_INST_STORAGE = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_EXTERNAL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_ALIGNMENT = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_PROGRAM = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_FP_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SYSCALL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_AP_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DECREMENTER = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_FIT = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_WATCHDOG = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DTLB_MISS = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_ITLB_MISS = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DEBUG = common dso_local global i64 0, align 8
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_booke_emulate_mtspr(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %402 [
    i32 152, label %10
    i32 151, label %22
    i32 155, label %34
    i32 154, label %46
    i32 153, label %58
    i32 128, label %73
    i32 129, label %88
    i32 133, label %102
    i32 132, label %114
    i32 131, label %126
    i32 130, label %138
    i32 134, label %150
    i32 150, label %162
    i32 149, label %177
    i32 142, label %192
    i32 141, label %207
    i32 140, label %222
    i32 139, label %237
    i32 138, label %252
    i32 137, label %267
    i32 136, label %282
    i32 135, label %297
    i32 148, label %312
    i32 147, label %327
    i32 146, label %342
    i32 145, label %357
    i32 144, label %372
    i32 143, label %387
  ]

10:                                               ; preds = %3
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 13
  store i32 %18, i32* %21, align 4
  br label %404

22:                                               ; preds = %3
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 12
  store i32 %30, i32* %33, align 8
  br label %404

34:                                               ; preds = %3
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 11
  store i32 %42, i32* %45, align 4
  br label %404

46:                                               ; preds = %3
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 10
  store i32 %54, i32* %57, align 8
  br label %404

58:                                               ; preds = %3
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %404

73:                                               ; preds = %3
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %82
  store i32 %87, i32* %85, align 8
  br label %404

88:                                               ; preds = %3
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 7
  store i32 %96, i32* %99, align 4
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %101 = call i32 @kvmppc_emulate_dec(%struct.kvm_vcpu* %100)
  br label %404

102:                                              ; preds = %3
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 6
  store i32 %110, i32* %113, align 8
  br label %404

114:                                              ; preds = %3
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 5
  store i32 %122, i32* %125, align 4
  br label %404

126:                                              ; preds = %3
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  store i32 %134, i32* %137, align 8
  br label %404

138:                                              ; preds = %3
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 4
  br label %404

150:                                              ; preds = %3
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %152 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  br label %404

162:                                              ; preds = %3
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %164 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %172 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @BOOKE_IRQPRIO_CRITICAL, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %170, i32* %176, align 4
  br label %404

177:                                              ; preds = %3
  %178 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %179 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @BOOKE_IRQPRIO_MACHINE_CHECK, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %185, i32* %191, align 4
  br label %404

192:                                              ; preds = %3
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %194 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %202 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @BOOKE_IRQPRIO_DATA_STORAGE, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 %200, i32* %206, align 4
  br label %404

207:                                              ; preds = %3
  %208 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %209 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %217 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* @BOOKE_IRQPRIO_INST_STORAGE, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32 %215, i32* %221, align 4
  br label %404

222:                                              ; preds = %3
  %223 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %224 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @BOOKE_IRQPRIO_EXTERNAL, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 %230, i32* %236, align 4
  br label %404

237:                                              ; preds = %3
  %238 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %239 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %247 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* @BOOKE_IRQPRIO_ALIGNMENT, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32 %245, i32* %251, align 4
  br label %404

252:                                              ; preds = %3
  %253 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %254 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %262 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = load i64, i64* @BOOKE_IRQPRIO_PROGRAM, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32 %260, i32* %266, align 4
  br label %404

267:                                              ; preds = %3
  %268 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %269 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %277 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* @BOOKE_IRQPRIO_FP_UNAVAIL, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32 %275, i32* %281, align 4
  br label %404

282:                                              ; preds = %3
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %284 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %292 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @BOOKE_IRQPRIO_SYSCALL, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  store i32 %290, i32* %296, align 4
  br label %404

297:                                              ; preds = %3
  %298 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %299 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %307 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load i64, i64* @BOOKE_IRQPRIO_AP_UNAVAIL, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  store i32 %305, i32* %311, align 4
  br label %404

312:                                              ; preds = %3
  %313 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %314 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %322 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = load i64, i64* @BOOKE_IRQPRIO_DECREMENTER, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32 %320, i32* %326, align 4
  br label %404

327:                                              ; preds = %3
  %328 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %329 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %337 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = load i64, i64* @BOOKE_IRQPRIO_FIT, align 8
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  store i32 %335, i32* %341, align 4
  br label %404

342:                                              ; preds = %3
  %343 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %344 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %352 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i64, i64* @BOOKE_IRQPRIO_WATCHDOG, align 8
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  store i32 %350, i32* %356, align 4
  br label %404

357:                                              ; preds = %3
  %358 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %359 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %367 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = load i64, i64* @BOOKE_IRQPRIO_DTLB_MISS, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32 %365, i32* %371, align 4
  br label %404

372:                                              ; preds = %3
  %373 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %374 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %382 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = load i64, i64* @BOOKE_IRQPRIO_ITLB_MISS, align 8
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  store i32 %380, i32* %386, align 4
  br label %404

387:                                              ; preds = %3
  %388 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %389 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %6, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %397 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 1
  %399 = load i32*, i32** %398, align 8
  %400 = load i64, i64* @BOOKE_IRQPRIO_DEBUG, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  store i32 %395, i32* %401, align 4
  br label %404

402:                                              ; preds = %3
  %403 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %403, i32* %7, align 4
  br label %404

404:                                              ; preds = %402, %387, %372, %357, %342, %327, %312, %297, %282, %267, %252, %237, %222, %207, %192, %177, %162, %150, %138, %126, %114, %102, %88, %73, %58, %46, %34, %22, %10
  %405 = load i32, i32* %7, align 4
  ret i32 %405
}

declare dso_local i32 @kvmppc_emulate_dec(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
