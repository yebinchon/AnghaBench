; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_mfspr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_mfspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32 }

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
define dso_local i32 @kvmppc_booke_emulate_mfspr(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %9, label %322 [
    i32 128, label %10
    i32 146, label %22
    i32 145, label %34
    i32 149, label %46
    i32 148, label %58
    i32 147, label %70
    i32 144, label %82
    i32 143, label %97
    i32 136, label %112
    i32 135, label %127
    i32 134, label %142
    i32 133, label %157
    i32 132, label %172
    i32 131, label %187
    i32 130, label %202
    i32 129, label %217
    i32 142, label %232
    i32 141, label %247
    i32 140, label %262
    i32 139, label %277
    i32 138, label %292
    i32 137, label %307
  ]

10:                                               ; preds = %3
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %14, i32* %21, align 4
  br label %324

22:                                               ; preds = %3
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %26, i32* %33, align 4
  br label %324

34:                                               ; preds = %3
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %38, i32* %45, align 4
  br label %324

46:                                               ; preds = %3
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %50, i32* %57, align 4
  br label %324

58:                                               ; preds = %3
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %62, i32* %69, align 4
  br label %324

70:                                               ; preds = %3
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %74, i32* %81, align 4
  br label %324

82:                                               ; preds = %3
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @BOOKE_IRQPRIO_CRITICAL, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %89, i32* %96, align 4
  br label %324

97:                                               ; preds = %3
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @BOOKE_IRQPRIO_MACHINE_CHECK, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %104, i32* %111, align 4
  br label %324

112:                                              ; preds = %3
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @BOOKE_IRQPRIO_DATA_STORAGE, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %119, i32* %126, align 4
  br label %324

127:                                              ; preds = %3
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @BOOKE_IRQPRIO_INST_STORAGE, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %134, i32* %141, align 4
  br label %324

142:                                              ; preds = %3
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @BOOKE_IRQPRIO_EXTERNAL, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %151 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %149, i32* %156, align 4
  br label %324

157:                                              ; preds = %3
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %159 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @BOOKE_IRQPRIO_ALIGNMENT, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %166 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %164, i32* %171, align 4
  br label %324

172:                                              ; preds = %3
  %173 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %174 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @BOOKE_IRQPRIO_PROGRAM, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %179, i32* %186, align 4
  br label %324

187:                                              ; preds = %3
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %189 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @BOOKE_IRQPRIO_FP_UNAVAIL, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %196 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %194, i32* %201, align 4
  br label %324

202:                                              ; preds = %3
  %203 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %204 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @BOOKE_IRQPRIO_SYSCALL, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %211 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %209, i32* %216, align 4
  br label %324

217:                                              ; preds = %3
  %218 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %219 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @BOOKE_IRQPRIO_AP_UNAVAIL, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %226 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %224, i32* %231, align 4
  br label %324

232:                                              ; preds = %3
  %233 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %234 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @BOOKE_IRQPRIO_DECREMENTER, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %241 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %239, i32* %246, align 4
  br label %324

247:                                              ; preds = %3
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %249 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @BOOKE_IRQPRIO_FIT, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %256 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %254, i32* %261, align 4
  br label %324

262:                                              ; preds = %3
  %263 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %264 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i64, i64* @BOOKE_IRQPRIO_WATCHDOG, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %271 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %269, i32* %276, align 4
  br label %324

277:                                              ; preds = %3
  %278 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %279 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* @BOOKE_IRQPRIO_DTLB_MISS, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %286 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32 %284, i32* %291, align 4
  br label %324

292:                                              ; preds = %3
  %293 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %294 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* @BOOKE_IRQPRIO_ITLB_MISS, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %301 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %299, i32* %306, align 4
  br label %324

307:                                              ; preds = %3
  %308 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %309 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i64, i64* @BOOKE_IRQPRIO_DEBUG, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %316 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %6, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %314, i32* %321, align 4
  br label %324

322:                                              ; preds = %3
  %323 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %323, i32* %7, align 4
  br label %324

324:                                              ; preds = %322, %307, %292, %277, %262, %247, %232, %217, %202, %187, %172, %157, %142, %127, %112, %97, %82, %70, %58, %46, %34, %22, %10
  %325 = load i32, i32* %7, align 4
  ret i32 %325
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
