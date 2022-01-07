; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_guest_time_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_guest_time_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_9__*, i32, %struct.kvm_vcpu_arch }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.kvm_vcpu_arch = type { i64, i64, i64, i64, i32, %struct.TYPE_10__, i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i64, i32, i32 }
%struct.pvclock_vcpu_time_info = type { i32 }

@MSR_IA32_TSC = common dso_local global i32 0, align 4
@KVM_REQ_CLOCK_UPDATE = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PVCLOCK_GUEST_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_guest_time_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_guest_time_update(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu_arch*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pvclock_vcpu_time_info, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 2
  store %struct.kvm_vcpu_arch* %16, %struct.kvm_vcpu_arch** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load i32, i32* @MSR_IA32_TSC, align 4
  %21 = call i32 @kvm_get_msr(%struct.kvm_vcpu* %19, i32 %20, i64* %9)
  %22 = call i64 (...) @get_kernel_ns()
  store i64 %22, i64* %7, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i64 @vcpu_tsc_khz(%struct.kvm_vcpu* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  %33 = load i32, i32* @KVM_REQ_CLOCK_UPDATE, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 1
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  store i32 1, i32* %2, align 4
  br label %236

37:                                               ; preds = %1
  %38 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @compute_guest_tsc(%struct.kvm_vcpu* %43, i64 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 @adjust_tsc_offset_guest(%struct.kvm_vcpu* %50, i64 %53)
  %55 = load i64, i64* %14, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @local_irq_restore(i64 %58)
  %60 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %236

65:                                               ; preds = %57
  store i64 0, i64* %8, align 8
  %66 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %79, %83
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @pvclock_scale_delta(i64 %85, i32 %89, i32 %93)
  store i64 %94, i64* %8, align 8
  %95 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %76, %71, %65
  %101 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %100
  %110 = load i32, i32* @NSEC_PER_SEC, align 4
  %111 = sdiv i32 %110, 1000
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  %116 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  %119 = call i32 @kvm_get_time_scale(i32 %111, i64 %112, i32* %115, i32* %118)
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %109, %100
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* %8, align 8
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %134, %140
  %142 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  store i64 %141, i64* %144, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %147 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %152 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %153, align 8
  %156 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %157 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = and i64 %158, -2
  store i64 %159, i64* %13, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = load i64, i64* %13, align 8
  %162 = call i32 @offset_in_page(i64 %161)
  %163 = sub nsw i32 %160, %162
  %164 = sext i32 %163 to i64
  %165 = icmp ule i64 4, %164
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i64 @likely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %129
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %172 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %171, i32 0, i32 0
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %175 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %174, i32 0, i32 6
  %176 = call i32 @kvm_read_guest_cached(%struct.TYPE_9__* %173, i32* %175, %struct.pvclock_vcpu_time_info* %10, i32 4)
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load i32, i32* @EFAULT, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %236

182:                                              ; preds = %170
  br label %195

183:                                              ; preds = %129
  %184 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %185 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @kvm_read_guest(%struct.TYPE_9__* %186, i64 %187, %struct.pvclock_vcpu_time_info* %10, i32 4)
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  %192 = load i32, i32* @EFAULT, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %236

194:                                              ; preds = %183
  br label %195

195:                                              ; preds = %194, %182
  %196 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %10, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @PVCLOCK_GUEST_STOPPED, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %11, align 4
  %200 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %201 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %195
  %205 = load i32, i32* @PVCLOCK_GUEST_STOPPED, align 4
  %206 = load i32, i32* %11, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %209 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %208, i32 0, i32 4
  store i32 0, i32* %209, align 8
  br label %210

210:                                              ; preds = %204, %195
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %213 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i64 @likely(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %210
  %219 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %220 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %219, i32 0, i32 0
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %223 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %222, i32 0, i32 6
  %224 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %225 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %224, i32 0, i32 5
  %226 = call i32 @kvm_write_guest_cached(%struct.TYPE_9__* %221, i32* %223, %struct.TYPE_10__* %225, i32 32)
  br label %235

227:                                              ; preds = %210
  %228 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %229 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %228, i32 0, i32 0
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = load i64, i64* %13, align 8
  %232 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %5, align 8
  %233 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %232, i32 0, i32 5
  %234 = call i32 @kvm_write_guest(%struct.TYPE_9__* %230, i64 %231, %struct.TYPE_10__* %233, i32 4)
  br label %235

235:                                              ; preds = %227, %218
  store i32 0, i32* %2, align 4
  br label %236

236:                                              ; preds = %235, %191, %179, %64, %30
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @kvm_get_msr(%struct.kvm_vcpu*, i32, i64*) #1

declare dso_local i64 @get_kernel_ns(...) #1

declare dso_local i64 @vcpu_tsc_khz(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @compute_guest_tsc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @adjust_tsc_offset_guest(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @pvclock_scale_delta(i64, i32, i32) #1

declare dso_local i32 @kvm_get_time_scale(i32, i64, i32*, i32*) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kvm_read_guest_cached(%struct.TYPE_9__*, i32*, %struct.pvclock_vcpu_time_info*, i32) #1

declare dso_local i32 @kvm_read_guest(%struct.TYPE_9__*, i64, %struct.pvclock_vcpu_time_info*, i32) #1

declare dso_local i32 @kvm_write_guest_cached(%struct.TYPE_9__*, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @kvm_write_guest(%struct.TYPE_9__*, i64, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
