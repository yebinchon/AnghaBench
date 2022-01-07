; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_vcpu_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_vcpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.vcpu_vmx = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.descriptor_table = type { i64 }

@IO_BITMAP_A = common dso_local global i32 0, align 4
@vmx_io_bitmap_a = common dso_local global i32 0, align 4
@IO_BITMAP_B = common dso_local global i32 0, align 4
@vmx_io_bitmap_b = common dso_local global i32 0, align 4
@MSR_BITMAP = common dso_local global i32 0, align 4
@vmx_msr_bitmap_legacy = common dso_local global i32 0, align 4
@VMCS_LINK_POINTER = common dso_local global i32 0, align 4
@PIN_BASED_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@vmcs_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@CPU_BASED_TPR_SHADOW = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i32 0, align 4
@CPU_BASED_CR3_STORE_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR3_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_INVLPG_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_VPID = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_EPT = common dso_local global i32 0, align 4
@enable_unrestricted_guest = common dso_local global i64 0, align 8
@SECONDARY_EXEC_ENABLE_INVPCID = common dso_local global i32 0, align 4
@SECONDARY_EXEC_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4
@ple_gap = common dso_local global i32 0, align 4
@SECONDARY_EXEC_PAUSE_LOOP_EXITING = common dso_local global i32 0, align 4
@SECONDARY_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@PLE_GAP = common dso_local global i32 0, align 4
@PLE_WINDOW = common dso_local global i32 0, align 4
@ple_window = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MASK = common dso_local global i32 0, align 4
@bypass_guest_pf = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MATCH = common dso_local global i32 0, align 4
@CR3_TARGET_COUNT = common dso_local global i32 0, align 4
@HOST_CR0 = common dso_local global i32 0, align 4
@HOST_CR4 = common dso_local global i32 0, align 4
@HOST_CR3 = common dso_local global i32 0, align 4
@HOST_CS_SELECTOR = common dso_local global i32 0, align 4
@__KERNEL_CS = common dso_local global i32 0, align 4
@HOST_DS_SELECTOR = common dso_local global i32 0, align 4
@__KERNEL_DS = common dso_local global i32 0, align 4
@HOST_ES_SELECTOR = common dso_local global i32 0, align 4
@HOST_FS_SELECTOR = common dso_local global i32 0, align 4
@HOST_GS_SELECTOR = common dso_local global i32 0, align 4
@HOST_SS_SELECTOR = common dso_local global i32 0, align 4
@HOST_FS_BASE = common dso_local global i32 0, align 4
@HOST_GS_BASE = common dso_local global i32 0, align 4
@HOST_TR_SELECTOR = common dso_local global i32 0, align 4
@GDT_ENTRY_TSS = common dso_local global i32 0, align 4
@HOST_IDTR_BASE = common dso_local global i32 0, align 4
@HOST_RIP = common dso_local global i32 0, align 4
@VM_EXIT_MSR_STORE_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_ADDR = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_ADDR = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_ESP = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_ESP = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@HOST_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@MSR_IA32_CR_PAT = common dso_local global i32 0, align 4
@HOST_IA32_PAT = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@GUEST_IA32_PAT = common dso_local global i32 0, align 4
@NR_VMX_MSR = common dso_local global i32 0, align 4
@vmx_msr_index = common dso_local global i32* null, align 8
@VM_EXIT_CONTROLS = common dso_local global i32 0, align 4
@VM_ENTRY_CONTROLS = common dso_local global i32 0, align 4
@CR0_GUEST_HOST_MASK = common dso_local global i32 0, align 4
@CR4_GUEST_HOST_MASK = common dso_local global i32 0, align 4
@KVM_GUEST_CR4_MASK = common dso_local global i64 0, align 8
@CPU_BASED_CR8_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR8_STORE_EXITING = common dso_local global i32 0, align 4
@MSR_FS_BASE = common dso_local global i32 0, align 4
@MSR_GS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*)* @vmx_vcpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_vcpu_setup(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.descriptor_table, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %18 = load i32, i32* @IO_BITMAP_A, align 4
  %19 = load i32, i32* @vmx_io_bitmap_a, align 4
  %20 = call i32 @__pa(i32 %19)
  %21 = call i32 @vmcs_write64(i32 %18, i32 %20)
  %22 = load i32, i32* @IO_BITMAP_B, align 4
  %23 = load i32, i32* @vmx_io_bitmap_b, align 4
  %24 = call i32 @__pa(i32 %23)
  %25 = call i32 @vmcs_write64(i32 %22, i32 %24)
  %26 = call i64 (...) @cpu_has_vmx_msr_bitmap()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @MSR_BITMAP, align 4
  %30 = load i32, i32* @vmx_msr_bitmap_legacy, align 4
  %31 = call i32 @__pa(i32 %30)
  %32 = call i32 @vmcs_write64(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load i32, i32* @VMCS_LINK_POINTER, align 4
  %35 = call i32 @vmcs_write64(i32 %34, i32 -1)
  %36 = load i32, i32* @PIN_BASED_VM_EXEC_CONTROL, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmcs_config, i32 0, i32 0), align 4
  %38 = call i32 @vmcs_write32(i32 %36, i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmcs_config, i32 0, i32 1), align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vm_need_tpr_shadow(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @CPU_BASED_TPR_SHADOW, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %46, %33
  %52 = load i32, i32* @enable_ept, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @CPU_BASED_CR3_STORE_EXITING, align 4
  %56 = load i32, i32* @CPU_BASED_CR3_LOAD_EXITING, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CPU_BASED_INVLPG_EXITING, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @vmcs_write32(i32 %63, i32 %64)
  %66 = call i64 (...) @cpu_has_secondary_exec_ctrls()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %62
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmcs_config, i32 0, i32 2), align 4
  store i32 %69, i32* %12, align 4
  %70 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %71 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @vm_need_virtualize_apic_accesses(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %76, %68
  %82 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %83 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @SECONDARY_EXEC_ENABLE_VPID, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* @enable_ept, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @SECONDARY_EXEC_ENABLE_EPT, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %12, align 4
  store i64 0, i64* @enable_unrestricted_guest, align 8
  %99 = load i32, i32* @SECONDARY_EXEC_ENABLE_INVPCID, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %94, %91
  %104 = load i64, i64* @enable_unrestricted_guest, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @SECONDARY_EXEC_UNRESTRICTED_GUEST, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* @ple_gap, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @SECONDARY_EXEC_PAUSE_LOOP_EXITING, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* @SECONDARY_VM_EXEC_CONTROL, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @vmcs_write32(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %62
  %124 = load i32, i32* @ple_gap, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* @PLE_GAP, align 4
  %128 = load i32, i32* @ple_gap, align 4
  %129 = call i32 @vmcs_write32(i32 %127, i32 %128)
  %130 = load i32, i32* @PLE_WINDOW, align 4
  %131 = load i32, i32* @ple_window, align 4
  %132 = call i32 @vmcs_write32(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %123
  %134 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MASK, align 4
  %135 = load i32, i32* @bypass_guest_pf, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @vmcs_write32(i32 %134, i32 %139)
  %141 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MATCH, align 4
  %142 = load i32, i32* @bypass_guest_pf, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @vmcs_write32(i32 %141, i32 %146)
  %148 = load i32, i32* @CR3_TARGET_COUNT, align 4
  %149 = call i32 @vmcs_write32(i32 %148, i32 0)
  %150 = load i32, i32* @HOST_CR0, align 4
  %151 = call i64 (...) @read_cr0()
  %152 = call i32 @vmcs_writel(i32 %150, i64 %151)
  %153 = load i32, i32* @HOST_CR4, align 4
  %154 = call i64 (...) @read_cr4()
  %155 = call i32 @vmcs_writel(i32 %153, i64 %154)
  %156 = load i32, i32* @HOST_CR3, align 4
  %157 = call i64 (...) @read_cr3()
  %158 = call i32 @vmcs_writel(i32 %156, i64 %157)
  %159 = load i32, i32* @HOST_CS_SELECTOR, align 4
  %160 = load i32, i32* @__KERNEL_CS, align 4
  %161 = call i32 @vmcs_write16(i32 %159, i32 %160)
  %162 = load i32, i32* @HOST_DS_SELECTOR, align 4
  %163 = load i32, i32* @__KERNEL_DS, align 4
  %164 = call i32 @vmcs_write16(i32 %162, i32 %163)
  %165 = load i32, i32* @HOST_ES_SELECTOR, align 4
  %166 = load i32, i32* @__KERNEL_DS, align 4
  %167 = call i32 @vmcs_write16(i32 %165, i32 %166)
  %168 = load i32, i32* @HOST_FS_SELECTOR, align 4
  %169 = call i32 @vmcs_write16(i32 %168, i32 0)
  %170 = load i32, i32* @HOST_GS_SELECTOR, align 4
  %171 = call i32 @vmcs_write16(i32 %170, i32 0)
  %172 = load i32, i32* @HOST_SS_SELECTOR, align 4
  %173 = load i32, i32* @__KERNEL_DS, align 4
  %174 = call i32 @vmcs_write16(i32 %172, i32 %173)
  %175 = load i32, i32* @HOST_FS_BASE, align 4
  %176 = call i32 @vmcs_writel(i32 %175, i64 0)
  %177 = load i32, i32* @HOST_GS_BASE, align 4
  %178 = call i32 @vmcs_writel(i32 %177, i64 0)
  %179 = load i32, i32* @HOST_TR_SELECTOR, align 4
  %180 = load i32, i32* @GDT_ENTRY_TSS, align 4
  %181 = mul nsw i32 %180, 8
  %182 = call i32 @vmcs_write16(i32 %179, i32 %181)
  %183 = call i32 @kvm_get_idt(%struct.descriptor_table* %9)
  %184 = load i32, i32* @HOST_IDTR_BASE, align 4
  %185 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %9, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @vmcs_writel(i32 %184, i64 %186)
  %188 = call i64 asm "mov $$.Lkvm_vmx_return, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %188, i64* %11, align 8
  %189 = load i32, i32* @HOST_RIP, align 4
  %190 = load i64, i64* %11, align 8
  %191 = call i32 @vmcs_writel(i32 %189, i64 %190)
  %192 = load i32, i32* @VM_EXIT_MSR_STORE_COUNT, align 4
  %193 = call i32 @vmcs_write32(i32 %192, i32 0)
  %194 = load i32, i32* @VM_EXIT_MSR_LOAD_COUNT, align 4
  %195 = call i32 @vmcs_write32(i32 %194, i32 0)
  %196 = load i32, i32* @VM_EXIT_MSR_LOAD_ADDR, align 4
  %197 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %198 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @__pa(i32 %200)
  %202 = call i32 @vmcs_write64(i32 %196, i32 %201)
  %203 = load i32, i32* @VM_ENTRY_MSR_LOAD_COUNT, align 4
  %204 = call i32 @vmcs_write32(i32 %203, i32 0)
  %205 = load i32, i32* @VM_ENTRY_MSR_LOAD_ADDR, align 4
  %206 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %207 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @__pa(i32 %209)
  %211 = call i32 @vmcs_write64(i32 %205, i32 %210)
  %212 = load i32, i32* @MSR_IA32_SYSENTER_CS, align 4
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @rdmsr(i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* @HOST_IA32_SYSENTER_CS, align 4
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @vmcs_write32(i32 %216, i32 %217)
  %219 = load i32, i32* @MSR_IA32_SYSENTER_ESP, align 4
  %220 = load i64, i64* %8, align 8
  %221 = call i32 @rdmsrl(i32 %219, i64 %220)
  %222 = load i32, i32* @HOST_IA32_SYSENTER_ESP, align 4
  %223 = load i64, i64* %8, align 8
  %224 = call i32 @vmcs_writel(i32 %222, i64 %223)
  %225 = load i32, i32* @MSR_IA32_SYSENTER_EIP, align 4
  %226 = load i64, i64* %8, align 8
  %227 = call i32 @rdmsrl(i32 %225, i64 %226)
  %228 = load i32, i32* @HOST_IA32_SYSENTER_EIP, align 4
  %229 = load i64, i64* %8, align 8
  %230 = call i32 @vmcs_writel(i32 %228, i64 %229)
  %231 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmcs_config, i32 0, i32 3), align 4
  %232 = load i32, i32* @VM_EXIT_LOAD_IA32_PAT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %133
  %236 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @rdmsr(i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %4, align 4
  %241 = load i32, i32* %5, align 4
  %242 = shl i32 %241, 32
  %243 = or i32 %240, %242
  store i32 %243, i32* %7, align 4
  %244 = load i32, i32* @HOST_IA32_PAT, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @vmcs_write64(i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %235, %133
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmcs_config, i32 0, i32 4), align 4
  %249 = load i32, i32* @VM_ENTRY_LOAD_IA32_PAT, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %247
  %253 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %254 = load i32, i32* %4, align 4
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @rdmsr(i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* %5, align 4
  %259 = shl i32 %258, 32
  %260 = or i32 %257, %259
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* @GUEST_IA32_PAT, align 4
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @vmcs_write64(i32 %261, i32 %262)
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %266 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  store i32 %264, i32* %268, align 8
  br label %269

269:                                              ; preds = %252, %247
  store i32 0, i32* %10, align 4
  br label %270

270:                                              ; preds = %325, %269
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* @NR_VMX_MSR, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %328

274:                                              ; preds = %270
  %275 = load i32*, i32** @vmx_msr_index, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %13, align 4
  %280 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %281 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* %13, align 4
  %284 = call i64 @rdmsr_safe(i32 %283, i32* %14, i32* %15)
  %285 = icmp slt i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %274
  br label %325

287:                                              ; preds = %274
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i64 @wrmsr_safe(i32 %288, i32 %289, i32 %290)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  br label %325

294:                                              ; preds = %287
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %15, align 4
  %297 = shl i32 %296, 32
  %298 = or i32 %295, %297
  store i32 %298, i32* %16, align 4
  %299 = load i32, i32* %10, align 4
  %300 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %301 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %300, i32 0, i32 3
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %301, align 8
  %303 = load i32, i32* %17, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  store i32 %299, i32* %306, align 8
  %307 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %308 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %307, i32 0, i32 3
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %308, align 8
  %310 = load i32, i32* %17, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 2
  store i64 0, i64* %313, align 8
  %314 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %315 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %314, i32 0, i32 3
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %315, align 8
  %317 = load i32, i32* %17, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 1
  store i64 -1, i64* %320, align 8
  %321 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %322 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %294, %293, %286
  %326 = load i32, i32* %10, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %10, align 4
  br label %270

328:                                              ; preds = %270
  %329 = load i32, i32* @VM_EXIT_CONTROLS, align 4
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmcs_config, i32 0, i32 3), align 4
  %331 = call i32 @vmcs_write32(i32 %329, i32 %330)
  %332 = load i32, i32* @VM_ENTRY_CONTROLS, align 4
  %333 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmcs_config, i32 0, i32 4), align 4
  %334 = call i32 @vmcs_write32(i32 %332, i32 %333)
  %335 = load i32, i32* @CR0_GUEST_HOST_MASK, align 4
  %336 = call i32 @vmcs_writel(i32 %335, i64 -1)
  %337 = load i32, i32* @CR4_GUEST_HOST_MASK, align 4
  %338 = load i64, i64* @KVM_GUEST_CR4_MASK, align 8
  %339 = call i32 @vmcs_writel(i32 %337, i64 %338)
  %340 = load i64, i64* @KVM_GUEST_CR4_MASK, align 8
  %341 = xor i64 %340, -1
  %342 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %343 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 1
  store i64 %341, i64* %345, align 8
  ret i32 0
}

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i64 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vm_need_tpr_shadow(i32) #1

declare dso_local i64 @cpu_has_secondary_exec_ctrls(...) #1

declare dso_local i32 @vm_need_virtualize_apic_accesses(i32) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

declare dso_local i64 @read_cr0(...) #1

declare dso_local i64 @read_cr4(...) #1

declare dso_local i64 @read_cr3(...) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @kvm_get_idt(%struct.descriptor_table*) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i64 @rdmsr_safe(i32, i32*, i32*) #1

declare dso_local i64 @wrmsr_safe(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 5795}
