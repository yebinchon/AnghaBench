; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_vcpu_enter_guest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_vcpu_enter_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_15__*, i32, %struct.TYPE_11__, i64, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@KVM_REQ_MMU_RELOAD = common dso_local global i32 0, align 4
@KVM_REQ_MIGRATE_TIMER = common dso_local global i32 0, align 4
@KVM_REQ_GLOBAL_CLOCK_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_CLOCK_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_MMU_SYNC = common dso_local global i32 0, align 4
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_14__* null, align 8
@KVM_REQ_REPORT_TPR_ACCESS = common dso_local global i32 0, align 4
@KVM_EXIT_TPR_ACCESS = common dso_local global i32 0, align 4
@KVM_REQ_TRIPLE_FAULT = common dso_local global i32 0, align 4
@KVM_EXIT_SHUTDOWN = common dso_local global i32 0, align 4
@KVM_REQ_DEACTIVATE_FPU = common dso_local global i32 0, align 4
@KVM_REQ_PMU = common dso_local global i32 0, align 4
@KVM_REQ_PMI = common dso_local global i32 0, align 4
@KVM_REQ_STEAL_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_KICK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_13__* null, align 8
@TIF_DEBUG = common dso_local global i32 0, align 4
@MSR_IA32_TSC = common dso_local global i32 0, align 4
@prof_on = common dso_local global i64 0, align 8
@KVM_PROFILING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vcpu_enter_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_enter_guest(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = call i32 @irqchip_in_kernel(%struct.TYPE_15__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 7
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i1 [ false, %1 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i32, i32* @KVM_REQ_MMU_RELOAD, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 4
  %30 = call i64 @test_and_clear_bit(i32 %27, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = call i32 @kvm_mmu_unload(%struct.kvm_vcpu* %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = call i32 @kvm_mmu_reload(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %397

43:                                               ; preds = %36
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %167

48:                                               ; preds = %43
  %49 = load i32, i32* @KVM_REQ_MIGRATE_TIMER, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 4
  %52 = call i64 @test_and_clear_bit(i32 %49, i64* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %56 = call i32 @__kvm_migrate_timers(%struct.kvm_vcpu* %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* @KVM_REQ_GLOBAL_CLOCK_UPDATE, align 4
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 4
  %61 = call i64 @test_and_clear_bit(i32 %58, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %65 = call i32 @kvm_gen_kvmclock_update(%struct.kvm_vcpu* %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32, i32* @KVM_REQ_CLOCK_UPDATE, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 4
  %70 = call i64 @test_and_clear_bit(i32 %67, i64* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = call i32 @kvm_guest_time_update(%struct.kvm_vcpu* %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %397

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* @KVM_REQ_MMU_SYNC, align 4
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 4
  %84 = call i64 @test_and_clear_bit(i32 %81, i64* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %88 = call i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu* %87)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 4
  %93 = call i64 @test_and_clear_bit(i32 %90, i64* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 6
  %98 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %97, align 8
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %100 = call i32 %98(%struct.kvm_vcpu* %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32, i32* @KVM_REQ_REPORT_TPR_ACCESS, align 4
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 4
  %105 = call i64 @test_and_clear_bit(i32 %102, i64* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* @KVM_EXIT_TPR_ACCESS, align 4
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 7
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  store i32 0, i32* %3, align 4
  br label %397

113:                                              ; preds = %101
  %114 = load i32, i32* @KVM_REQ_TRIPLE_FAULT, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 4
  %117 = call i64 @test_and_clear_bit(i32 %114, i64* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* @KVM_EXIT_SHUTDOWN, align 4
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 7
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  store i32 0, i32* %3, align 4
  br label %397

125:                                              ; preds = %113
  %126 = load i32, i32* @KVM_REQ_DEACTIVATE_FPU, align 4
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 4
  %129 = call i64 @test_and_clear_bit(i32 %126, i64* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 6
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 5
  %136 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %135, align 8
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %138 = call i32 %136(%struct.kvm_vcpu* %137)
  br label %139

139:                                              ; preds = %131, %125
  %140 = load i32, i32* @KVM_REQ_PMU, align 4
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 4
  %143 = call i64 @test_and_clear_bit(i32 %140, i64* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %147 = call i32 @kvm_handle_pmu_event(%struct.kvm_vcpu* %146)
  br label %148

148:                                              ; preds = %145, %139
  %149 = load i32, i32* @KVM_REQ_PMI, align 4
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %151 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %150, i32 0, i32 4
  %152 = call i64 @test_and_clear_bit(i32 %149, i64* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %156 = call i32 @kvm_deliver_pmi(%struct.kvm_vcpu* %155)
  br label %157

157:                                              ; preds = %154, %148
  %158 = load i32, i32* @KVM_REQ_STEAL_UPDATE, align 4
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %159, i32 0, i32 4
  %161 = call i64 @test_and_clear_bit(i32 %158, i64* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %165 = call i32 @record_steal_time(%struct.kvm_vcpu* %164)
  br label %166

166:                                              ; preds = %163, %157
  br label %167

167:                                              ; preds = %166, %43
  %168 = call i32 (...) @preempt_disable()
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  %171 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %170, align 8
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %173 = call i32 %171(%struct.kvm_vcpu* %172)
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %175 = call i32 @kvm_load_guest_fpu(%struct.kvm_vcpu* %174)
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %177 = call i32 @kvm_load_guest_xcr0(%struct.kvm_vcpu* %176)
  %178 = call i32 (...) @local_irq_disable()
  %179 = load i32, i32* @KVM_REQ_KICK, align 4
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 4
  %182 = call i32 @clear_bit(i32 %179, i64* %181)
  %183 = call i32 (...) @smp_mb__after_clear_bit()
  %184 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %185 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %167
  %189 = call i64 (...) @need_resched()
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %193 = call i64 @signal_pending(%struct.TYPE_13__* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %191, %188, %167
  %196 = load i32, i32* @KVM_REQ_KICK, align 4
  %197 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %198 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %197, i32 0, i32 4
  %199 = call i32 @set_bit(i32 %196, i64* %198)
  %200 = call i32 (...) @local_irq_enable()
  %201 = call i32 (...) @preempt_enable()
  store i32 1, i32* %3, align 4
  br label %397

202:                                              ; preds = %191
  %203 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %204 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %4, align 4
  %207 = call i32 (...) @smp_mb()
  %208 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %209 = call i32 @inject_pending_event(%struct.kvm_vcpu* %208)
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %202
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 3
  %215 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %214, align 8
  %216 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %217 = call i32 %215(%struct.kvm_vcpu* %216)
  br label %232

218:                                              ; preds = %202
  %219 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %220 = call i64 @kvm_cpu_has_interrupt(%struct.kvm_vcpu* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %222, %218
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 2
  %228 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %227, align 8
  %229 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %230 = call i32 %228(%struct.kvm_vcpu* %229)
  br label %231

231:                                              ; preds = %225, %222
  br label %232

232:                                              ; preds = %231, %212
  %233 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %234 = call i64 @kvm_lapic_enabled(%struct.kvm_vcpu* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %238 = call i32 @update_cr8_intercept(%struct.kvm_vcpu* %237)
  %239 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %240 = call i32 @kvm_lapic_sync_to_vapic(%struct.kvm_vcpu* %239)
  br label %241

241:                                              ; preds = %236, %232
  %242 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %243 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %242, i32 0, i32 1
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %247 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @srcu_read_unlock(i32* %245, i32 %248)
  %250 = call i32 (...) @kvm_guest_enter()
  %251 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %252 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @unlikely(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %287

257:                                              ; preds = %241
  %258 = call i32 @set_debugreg(i32 0, i32 7)
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %260 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @set_debugreg(i32 %264, i32 0)
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %267 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @set_debugreg(i32 %271, i32 1)
  %273 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %274 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @set_debugreg(i32 %278, i32 2)
  %280 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %281 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 4
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @set_debugreg(i32 %285, i32 3)
  br label %287

287:                                              ; preds = %257, %241
  %288 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %289 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @trace_kvm_entry(i32 %290)
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %293, align 8
  %295 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %296 = call i32 %294(%struct.kvm_vcpu* %295)
  %297 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %298 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %287
  %303 = load i32, i32* @TIF_DEBUG, align 4
  %304 = call i64 @test_thread_flag(i32 %303)
  %305 = icmp ne i64 %304, 0
  br label %306

306:                                              ; preds = %302, %287
  %307 = phi i1 [ true, %287 ], [ %305, %302 ]
  %308 = zext i1 %307 to i32
  %309 = call i64 @unlikely(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %342

311:                                              ; preds = %306
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @set_debugreg(i32 %315, i32 0)
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @set_debugreg(i32 %320, i32 1)
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @set_debugreg(i32 %325, i32 2)
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @set_debugreg(i32 %330, i32 3)
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @set_debugreg(i32 %335, i32 6)
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @set_debugreg(i32 %340, i32 7)
  br label %342

342:                                              ; preds = %311, %306
  %343 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %344 = load i32, i32* @MSR_IA32_TSC, align 4
  %345 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %346 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 3
  %348 = call i32 @kvm_get_msr(%struct.kvm_vcpu* %343, i32 %344, i32* %347)
  %349 = load i32, i32* @KVM_REQ_KICK, align 4
  %350 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %351 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %350, i32 0, i32 4
  %352 = call i32 @set_bit(i32 %349, i64* %351)
  %353 = call i32 (...) @local_irq_enable()
  %354 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %355 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %356, align 4
  %359 = call i32 (...) @barrier()
  %360 = call i32 (...) @kvm_guest_exit()
  %361 = call i32 (...) @preempt_enable()
  %362 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %363 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %362, i32 0, i32 1
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 0
  %366 = call i32 @srcu_read_lock(i32* %365)
  %367 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %368 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %367, i32 0, i32 2
  store i32 %366, i32* %368, align 8
  %369 = load i64, i64* @prof_on, align 8
  %370 = load i64, i64* @KVM_PROFILING, align 8
  %371 = icmp eq i64 %369, %370
  %372 = zext i1 %371 to i32
  %373 = call i64 @unlikely(i32 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %342
  %376 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %377 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %376)
  store i64 %377, i64* %6, align 8
  %378 = load i64, i64* @KVM_PROFILING, align 8
  %379 = load i64, i64* %6, align 8
  %380 = inttoptr i64 %379 to i8*
  %381 = call i32 @profile_hit(i64 %378, i8* %380)
  br label %382

382:                                              ; preds = %375, %342
  %383 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %384 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %382
  %389 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %390 = call i32 @kvm_lapic_sync_from_vapic(%struct.kvm_vcpu* %389)
  br label %391

391:                                              ; preds = %388, %382
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 0
  %394 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %393, align 8
  %395 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %396 = call i32 %394(%struct.kvm_vcpu* %395)
  store i32 %396, i32* %3, align 4
  br label %397

397:                                              ; preds = %391, %195, %119, %107, %78, %42
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local i32 @irqchip_in_kernel(%struct.TYPE_15__*) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @kvm_mmu_unload(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_reload(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__kvm_migrate_timers(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_gen_kvmclock_update(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_guest_time_update(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_handle_pmu_event(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_deliver_pmi(%struct.kvm_vcpu*) #1

declare dso_local i32 @record_steal_time(%struct.kvm_vcpu*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @kvm_load_guest_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_load_guest_xcr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @signal_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @inject_pending_event(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_cpu_has_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_lapic_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_cr8_intercept(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_sync_to_vapic(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @kvm_guest_enter(...) #1

declare dso_local i32 @set_debugreg(i32, i32) #1

declare dso_local i32 @trace_kvm_entry(i32) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @kvm_get_msr(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @kvm_guest_exit(...) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @profile_hit(i64, i8*) #1

declare dso_local i32 @kvm_lapic_sync_from_vapic(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
