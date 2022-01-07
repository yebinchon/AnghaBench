; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_11__, %struct.kvm_run* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.kvm_run = type { %struct.TYPE_16__, i32, %struct.TYPE_15__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.vcpu_vmx = type { i32, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i64 }

@VM_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@KVM_INTERNAL_ERROR_SIMUL_EX = common dso_local global i32 0, align 4
@INTR_INFO_INTR_TYPE_MASK = common dso_local global i32 0, align 4
@INTR_TYPE_NMI_INTR = common dso_local global i32 0, align 4
@EMULTYPE_TRAP_UD = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@INTR_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@VM_EXIT_INTR_ERROR_CODE = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@INTR_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@DR6_FIXED_1 = common dso_local global i64 0, align 8
@GUEST_DR7 = common dso_local global i32 0, align 4
@VM_EXIT_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@GUEST_CS_BASE = common dso_local global i32 0, align 4
@KVM_EXIT_EXCEPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exception(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %14)
  store %struct.vcpu_vmx* %15, %struct.vcpu_vmx** %4, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 2
  %18 = load %struct.kvm_run*, %struct.kvm_run** %17, align 8
  store %struct.kvm_run* %18, %struct.kvm_run** %5, align 8
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @VM_EXIT_INTR_INFO, align 4
  %23 = call i8* @vmcs_read32(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @is_machine_check(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call i32 @handle_machine_check(%struct.kvm_vcpu* %29)
  store i32 %30, i32* %2, align 4
  br label %243

31:                                               ; preds = %1
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @is_page_fault(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 2
  %44 = load %struct.kvm_run*, %struct.kvm_run** %43, align 8
  %45 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @KVM_INTERNAL_ERROR_SIMUL_EX, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 2
  %49 = load %struct.kvm_run*, %struct.kvm_run** %48, align 8
  %50 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 2
  %54 = load %struct.kvm_run*, %struct.kvm_run** %53, align 8
  %55 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 2
  %60 = load %struct.kvm_run*, %struct.kvm_run** %59, align 8
  %61 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %57, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 2
  %68 = load %struct.kvm_run*, %struct.kvm_run** %67, align 8
  %69 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %65, i32* %72, align 4
  store i32 0, i32* %2, align 4
  br label %243

73:                                               ; preds = %36, %31
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @INTR_INFO_INTR_TYPE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @INTR_TYPE_NMI_INTR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %243

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @is_no_device(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = call i32 @vmx_fpu_activate(%struct.kvm_vcpu* %85)
  store i32 1, i32* %2, align 4
  br label %243

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @is_invalid_opcode(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = load i32, i32* @EMULTYPE_TRAP_UD, align 4
  %94 = call i32 @emulate_instruction(%struct.kvm_vcpu* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @EMULATE_DONE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = load i32, i32* @UD_VECTOR, align 4
  %101 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %91
  store i32 1, i32* %2, align 4
  br label %243

103:                                              ; preds = %87
  store i32 0, i32* %8, align 4
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %104)
  store i64 %105, i64* %10, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @INTR_INFO_DELIVER_CODE_MASK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @VM_EXIT_INTR_ERROR_CODE, align 4
  %112 = call i8* @vmcs_read32(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @is_page_fault(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %114
  %119 = load i64, i64* @enable_ept, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (...) @BUG()
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %125 = call i64 @vmcs_readl(i32 %124)
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @trace_kvm_page_fault(i64 %126, i32 %127)
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %130 = call i64 @kvm_event_needs_reinjection(%struct.kvm_vcpu* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %123
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @kvm_mmu_unprotect_page_virt(%struct.kvm_vcpu* %133, i64 %134)
  br label %136

136:                                              ; preds = %132, %123
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @kvm_mmu_page_fault(%struct.kvm_vcpu* %137, i64 %138, i32 %139, i32* null, i32 0)
  store i32 %140, i32* %2, align 4
  br label %243

141:                                              ; preds = %114
  %142 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %143 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %141
  %148 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @INTR_INFO_VECTOR_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @handle_rmode_exception(%struct.kvm_vcpu* %148, i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %147
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %157 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %163 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %166 = call i32 @kvm_emulate_halt(%struct.kvm_vcpu* %165)
  store i32 %166, i32* %2, align 4
  br label %243

167:                                              ; preds = %155
  store i32 1, i32* %2, align 4
  br label %243

168:                                              ; preds = %147, %141
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @INTR_INFO_VECTOR_MASK, align 4
  %171 = and i32 %169, %170
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  switch i32 %172, label %230 [
    i32 128, label %173
    i32 129, label %207
  ]

173:                                              ; preds = %168
  %174 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %175 = call i64 @vmcs_readl(i32 %174)
  store i64 %175, i64* %11, align 8
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %180 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %173
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* @DR6_FIXED_1, align 8
  %187 = or i64 %185, %186
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %189 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store i64 %187, i64* %190, align 8
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %192 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %191, i32 128)
  store i32 1, i32* %2, align 4
  br label %243

193:                                              ; preds = %173
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* @DR6_FIXED_1, align 8
  %196 = or i64 %194, %195
  %197 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %198 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i64 %196, i64* %200, align 8
  %201 = load i32, i32* @GUEST_DR7, align 4
  %202 = call i64 @vmcs_readl(i32 %201)
  %203 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %204 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  store i64 %202, i64* %206, align 8
  br label %207

207:                                              ; preds = %168, %193
  %208 = load i32, i32* @VM_EXIT_INSTRUCTION_LEN, align 4
  %209 = call i8* @vmcs_read32(i32 %208)
  %210 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %211 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  store i8* %209, i8** %213, align 8
  %214 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %215 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %216 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* @GUEST_CS_BASE, align 4
  %218 = call i64 @vmcs_readl(i32 %217)
  %219 = load i64, i64* %10, align 8
  %220 = add i64 %218, %219
  %221 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %222 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 2
  store i64 %220, i64* %224, align 8
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %227 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 3
  store i32 %225, i32* %229, align 8
  br label %242

230:                                              ; preds = %168
  %231 = load i32, i32* @KVM_EXIT_EXCEPTION, align 4
  %232 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %233 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %7, align 4
  %235 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %236 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %240 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  store i32 %238, i32* %241, align 4
  br label %242

242:                                              ; preds = %230, %207
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %184, %167, %161, %136, %102, %84, %79, %40, %28
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i64 @is_machine_check(i32) #1

declare dso_local i32 @handle_machine_check(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_page_fault(i32) #1

declare dso_local i64 @is_no_device(i32) #1

declare dso_local i32 @vmx_fpu_activate(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_invalid_opcode(i32) #1

declare dso_local i32 @emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i32 @trace_kvm_page_fault(i64, i32) #1

declare dso_local i64 @kvm_event_needs_reinjection(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_unprotect_page_virt(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mmu_page_fault(%struct.kvm_vcpu*, i64, i32, i32*, i32) #1

declare dso_local i64 @handle_rmode_exception(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_emulate_halt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
