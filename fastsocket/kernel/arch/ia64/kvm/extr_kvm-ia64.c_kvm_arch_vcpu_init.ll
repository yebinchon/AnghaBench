; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_11__, %struct.kvm* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_10__, i32, i32, i32, %struct.vpd*, %struct.TYPE_14__, i32, i32, i32, %struct.TYPE_12__*, i32, i64, %union.context }
%struct.TYPE_8__ = type { %struct.thash_data* }
%struct.thash_data = type { i32 }
%struct.TYPE_10__ = type { %struct.thash_data* }
%struct.vpd = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.kvm_vcpu* }
%union.context = type { i64* }
%struct.kvm = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.kvm_pt_regs = type { i32 }

@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4
@PALE_RESET_ENTRY = common dso_local global i32 0, align 4
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@KVM_MP_STATE_UNINITIALIZED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KVM_STK_OFFSET = common dso_local global i32 0, align 4
@FPSR_DEFAULT = common dso_local global i32 0, align 4
@kvm_vmm_info = common dso_local global %struct.TYPE_13__* null, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@hlt_timer_fn = common dso_local global i32 0, align 4
@kvm_vsa_base = common dso_local global i32 0, align 4
@kvm_vmm_gp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca %struct.kvm_pt_regs*, align 8
  %10 = alloca %union.context*, align 8
  %11 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 2
  %14 = load %struct.kvm*, %struct.kvm** %13, align 8
  store %struct.kvm* %14, %struct.kvm** %8, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu* %15)
  store %struct.kvm_pt_regs* %16, %struct.kvm_pt_regs** %9, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 15
  store %union.context* %19, %union.context** %10, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 2
  %22 = load %struct.kvm*, %struct.kvm** %21, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call %struct.kvm_vcpu* @to_guest(%struct.kvm* %22, %struct.kvm_vcpu* %23)
  store %struct.kvm_vcpu* %24, %struct.kvm_vcpu** %11, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %26 = call i64 @IS_ERR(%struct.kvm_vcpu* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.kvm_vcpu* %29)
  store i32 %30, i32* %2, align 4
  br label %279

31:                                               ; preds = %1
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = call i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 13
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @PALE_RESET_ENTRY, align 4
  %41 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %9, align 8
  %42 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i64 @kvm_get_itc(%struct.kvm_vcpu* %43)
  %45 = sub i64 0, %44
  store i64 %45, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %65, %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @KVM_MAX_VCPUS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = bitcast %struct.kvm_vcpu* %51 to i8*
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = bitcast i8* %56 to %struct.kvm_vcpu*
  store %struct.kvm_vcpu* %57, %struct.kvm_vcpu** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 14
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %46

68:                                               ; preds = %46
  br label %74

69:                                               ; preds = %31
  %70 = load i32, i32* @KVM_MP_STATE_UNINITIALIZED, align 4
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 13
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.TYPE_12__* @kzalloc(i32 4, i32 %77)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 12
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %81, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 12
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = icmp ne %struct.TYPE_12__* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %74
  br label %277

88:                                               ; preds = %74
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 12
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store %struct.kvm_vcpu* %89, %struct.kvm_vcpu** %94, align 8
  %95 = load %union.context*, %union.context** %10, align 8
  %96 = bitcast %union.context* %95 to i64**
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %100 = bitcast %struct.kvm_vcpu* %99 to i8*
  %101 = load i32, i32* @KVM_STK_OFFSET, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = ptrtoint i8* %103 to i64
  %105 = load %union.context*, %union.context** %10, align 8
  %106 = bitcast %union.context* %105 to i64**
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 12
  store i64 %104, i64* %108, align 8
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %110 = ptrtoint %struct.kvm_vcpu* %109 to i64
  %111 = load %union.context*, %union.context** %10, align 8
  %112 = bitcast %union.context* %111 to i64**
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 13
  store i64 %110, i64* %114, align 8
  %115 = load %union.context*, %union.context** %10, align 8
  %116 = bitcast %union.context* %115 to i32*
  store i32 139599872, i32* %116, align 8
  %117 = load i32, i32* @FPSR_DEFAULT, align 4
  %118 = load %union.context*, %union.context** %10, align 8
  %119 = bitcast %union.context* %118 to i32**
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 40
  store i32 %117, i32* %121, align 4
  %122 = load %union.context*, %union.context** %10, align 8
  %123 = bitcast %union.context* %122 to i64*
  store i64 0, i64* %123, align 8
  %124 = load %union.context*, %union.context** %10, align 8
  %125 = bitcast %union.context* %124 to i32*
  store i32 0, i32* %125, align 8
  %126 = load %union.context*, %union.context** %10, align 8
  %127 = bitcast %union.context* %126 to i32**
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 36
  store i32 0, i32* %129, align 4
  %130 = load %union.context*, %union.context** %10, align 8
  %131 = bitcast %union.context* %130 to i32**
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 19
  store i32 0, i32* %133, align 4
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %135 = ptrtoint %struct.kvm_vcpu* %134 to i64
  %136 = add i64 %135, 128
  %137 = trunc i64 %136 to i32
  %138 = load %union.context*, %union.context** %10, align 8
  %139 = bitcast %union.context* %138 to i32**
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 18
  store i32 %137, i32* %141, align 4
  %142 = load %union.context*, %union.context** %10, align 8
  %143 = bitcast %union.context* %142 to i32**
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 64
  store i32 0, i32* %145, align 4
  %146 = load %union.context*, %union.context** %10, align 8
  %147 = bitcast %union.context* %146 to i32**
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 32260, i32* %149, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_vmm_info, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %union.context*, %union.context** %10, align 8
  %155 = bitcast %union.context* %154 to i32**
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  store i32 %153, i32* %157, align 4
  %158 = load %union.context*, %union.context** %10, align 8
  %159 = bitcast %union.context* %158 to i32**
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 8
  store i32 60, i32* %161, align 4
  %162 = load %union.context*, %union.context** %10, align 8
  %163 = bitcast %union.context* %162 to i32**
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 48, i32* %165, align 4
  %166 = load %union.context*, %union.context** %10, align 8
  %167 = bitcast %union.context* %166 to i32**
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 48, i32* %169, align 4
  %170 = load %union.context*, %union.context** %10, align 8
  %171 = bitcast %union.context* %170 to i32**
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32 48, i32* %173, align 4
  %174 = load %union.context*, %union.context** %10, align 8
  %175 = bitcast %union.context* %174 to i32**
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  store i32 48, i32* %177, align 4
  %178 = load %union.context*, %union.context** %10, align 8
  %179 = bitcast %union.context* %178 to i32**
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 4
  store i32 48, i32* %181, align 4
  %182 = load %union.context*, %union.context** %10, align 8
  %183 = bitcast %union.context* %182 to i32**
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 5
  store i32 48, i32* %185, align 4
  %186 = load %union.context*, %union.context** %10, align 8
  %187 = bitcast %union.context* %186 to i32**
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 7
  store i32 48, i32* %189, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_vmm_info, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i64*
  %194 = load i64, i64* %193, align 8
  %195 = load %union.context*, %union.context** %10, align 8
  %196 = bitcast %union.context* %195 to i64**
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  store i64 %194, i64* %198, align 8
  %199 = load %struct.kvm*, %struct.kvm** %8, align 8
  %200 = getelementptr inbounds %struct.kvm, %struct.kvm* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %204 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 11
  store i32 %202, i32* %205, align 4
  %206 = load %struct.kvm*, %struct.kvm** %8, align 8
  %207 = getelementptr inbounds %struct.kvm, %struct.kvm* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %211 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 10
  store i32 %209, i32* %212, align 8
  %213 = load %struct.kvm*, %struct.kvm** %8, align 8
  %214 = getelementptr inbounds %struct.kvm, %struct.kvm* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %218 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 9
  store i32 %216, i32* %219, align 4
  %220 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %221 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 8
  %223 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %224 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %225 = call i32 @hrtimer_init(%struct.TYPE_14__* %222, i32 %223, i32 %224)
  %226 = load i32, i32* @hlt_timer_fn, align 4
  %227 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %228 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  store i32 %226, i32* %230, align 8
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  store i32 -1, i32* %233, align 8
  %234 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %235 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @VPD_BASE(i32 %236)
  %238 = inttoptr i64 %237 to %struct.vpd*
  %239 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %240 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 7
  store %struct.vpd* %238, %struct.vpd** %241, align 8
  %242 = load i32, i32* @kvm_vsa_base, align 4
  %243 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %244 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 6
  store i32 %242, i32* %245, align 8
  %246 = load i32, i32* @kvm_vmm_gp, align 4
  %247 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %248 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  store i32 %246, i32* %249, align 4
  %250 = load %struct.kvm*, %struct.kvm** %8, align 8
  %251 = getelementptr inbounds %struct.kvm, %struct.kvm* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = call i32 @__pa(i32* %252)
  %254 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %255 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 4
  store i32 %253, i32* %256, align 8
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %258 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @VHPT_BASE(i32 %259)
  %261 = inttoptr i64 %260 to %struct.thash_data*
  %262 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %263 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  store %struct.thash_data* %261, %struct.thash_data** %265, align 8
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %267 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @VTLB_BASE(i32 %268)
  %270 = inttoptr i64 %269 to %struct.thash_data*
  %271 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %272 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  store %struct.thash_data* %270, %struct.thash_data** %274, align 8
  %275 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %276 = call i32 @init_ptce_info(%struct.kvm_vcpu* %275)
  store i32 0, i32* %5, align 4
  br label %277

277:                                              ; preds = %88, %87
  %278 = load i32, i32* %5, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %277, %28
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @to_guest(%struct.kvm*, %struct.kvm_vcpu*) #1

declare dso_local i64 @IS_ERR(%struct.kvm_vcpu*) #1

declare dso_local i32 @PTR_ERR(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_get_itc(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_12__* @kzalloc(i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @VPD_BASE(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i64 @VHPT_BASE(i32) #1

declare dso_local i64 @VTLB_BASE(i32) #1

declare dso_local i32 @init_ptce_info(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
