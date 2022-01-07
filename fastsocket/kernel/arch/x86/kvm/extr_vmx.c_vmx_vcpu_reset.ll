; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_vcpu_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_vcpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_24__*, %struct.TYPE_19__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.vcpu_vmx = type { i32, i64, %struct.TYPE_25__, i64, %struct.TYPE_20__ }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@VCPU_REGS_RIP = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i64 0, align 8
@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_BSP = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@GUEST_CS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_CS_BASE = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@GUEST_TR_SELECTOR = common dso_local global i32 0, align 4
@GUEST_TR_BASE = common dso_local global i32 0, align 4
@GUEST_TR_LIMIT = common dso_local global i32 0, align 4
@GUEST_TR_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_LDTR_SELECTOR = common dso_local global i32 0, align 4
@GUEST_LDTR_BASE = common dso_local global i32 0, align 4
@GUEST_LDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_LDTR_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_SYSENTER_CS = common dso_local global i32 0, align 4
@GUEST_SYSENTER_ESP = common dso_local global i32 0, align 4
@GUEST_SYSENTER_EIP = common dso_local global i32 0, align 4
@GUEST_RFLAGS = common dso_local global i32 0, align 4
@GUEST_DR7 = common dso_local global i32 0, align 4
@GUEST_GDTR_BASE = common dso_local global i32 0, align 4
@GUEST_GDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_IDTR_BASE = common dso_local global i32 0, align 4
@GUEST_IDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_ACTIVITY_STATE = common dso_local global i32 0, align 4
@GUEST_ACTIVITY_ACTIVE = common dso_local global i32 0, align 4
@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_PENDING_DBG_EXCEPTIONS = common dso_local global i32 0, align 4
@GUEST_IA32_DEBUGCTL = common dso_local global i32 0, align 4
@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@VIRTUAL_APIC_PAGE_ADDR = common dso_local global i32 0, align 4
@TPR_THRESHOLD = common dso_local global i32 0, align 4
@APIC_ACCESS_ADDR = common dso_local global i32 0, align 4
@VIRTUAL_PROCESSOR_ID = common dso_local global i32 0, align 4
@X86_CR0_NW = common dso_local global i32 0, align 4
@X86_CR0_CD = common dso_local global i32 0, align 4
@X86_CR0_ET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vmx_vcpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_vcpu_reset(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %3, align 8
  %8 = load i32, i32* @VCPU_REGS_RIP, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @VCPU_REGS_RSP, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = call i32 (...) @get_rdx_init_val()
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @VCPU_REGS_RDX, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 2
  %32 = call i32 @kvm_set_cr8(%struct.TYPE_25__* %31, i32 0)
  %33 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %34 = or i32 -18874368, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %36 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %35, i32 0, i32 2
  %37 = call i64 @kvm_vcpu_is_bsp(%struct.TYPE_25__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @MSR_IA32_APICBASE_BSP, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %1
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 2
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @kvm_set_apic_base(%struct.TYPE_25__* %45, i32 %46)
  %48 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %49 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %48, i32 0, i32 2
  %50 = call i32 @fx_init(%struct.TYPE_25__* %49)
  %51 = load i32, i32* @VCPU_SREG_CS, align 4
  %52 = call i32 @seg_setup(i32 %51)
  %53 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %54 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %53, i32 0, i32 2
  %55 = call i64 @kvm_vcpu_is_bsp(%struct.TYPE_25__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load i32, i32* @GUEST_CS_SELECTOR, align 4
  %59 = call i32 @vmcs_write16(i32 %58, i32 61440)
  %60 = load i32, i32* @GUEST_CS_BASE, align 4
  %61 = call i32 @vmcs_writel(i32 %60, i32 983040)
  br label %79

62:                                               ; preds = %43
  %63 = load i32, i32* @GUEST_CS_SELECTOR, align 4
  %64 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %65 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 8
  %70 = call i32 @vmcs_write16(i32 %63, i32 %69)
  %71 = load i32, i32* @GUEST_CS_BASE, align 4
  %72 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %73 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %76, 12
  %78 = call i32 @vmcs_writel(i32 %71, i32 %77)
  br label %79

79:                                               ; preds = %62, %57
  %80 = load i32, i32* @VCPU_SREG_DS, align 4
  %81 = call i32 @seg_setup(i32 %80)
  %82 = load i32, i32* @VCPU_SREG_ES, align 4
  %83 = call i32 @seg_setup(i32 %82)
  %84 = load i32, i32* @VCPU_SREG_FS, align 4
  %85 = call i32 @seg_setup(i32 %84)
  %86 = load i32, i32* @VCPU_SREG_GS, align 4
  %87 = call i32 @seg_setup(i32 %86)
  %88 = load i32, i32* @VCPU_SREG_SS, align 4
  %89 = call i32 @seg_setup(i32 %88)
  %90 = load i32, i32* @GUEST_TR_SELECTOR, align 4
  %91 = call i32 @vmcs_write16(i32 %90, i32 0)
  %92 = load i32, i32* @GUEST_TR_BASE, align 4
  %93 = call i32 @vmcs_writel(i32 %92, i32 0)
  %94 = load i32, i32* @GUEST_TR_LIMIT, align 4
  %95 = call i32 @vmcs_write32(i32 %94, i32 65535)
  %96 = load i32, i32* @GUEST_TR_AR_BYTES, align 4
  %97 = call i32 @vmcs_write32(i32 %96, i32 139)
  %98 = load i32, i32* @GUEST_LDTR_SELECTOR, align 4
  %99 = call i32 @vmcs_write16(i32 %98, i32 0)
  %100 = load i32, i32* @GUEST_LDTR_BASE, align 4
  %101 = call i32 @vmcs_writel(i32 %100, i32 0)
  %102 = load i32, i32* @GUEST_LDTR_LIMIT, align 4
  %103 = call i32 @vmcs_write32(i32 %102, i32 65535)
  %104 = load i32, i32* @GUEST_LDTR_AR_BYTES, align 4
  %105 = call i32 @vmcs_write32(i32 %104, i32 130)
  %106 = load i32, i32* @GUEST_SYSENTER_CS, align 4
  %107 = call i32 @vmcs_write32(i32 %106, i32 0)
  %108 = load i32, i32* @GUEST_SYSENTER_ESP, align 4
  %109 = call i32 @vmcs_writel(i32 %108, i32 0)
  %110 = load i32, i32* @GUEST_SYSENTER_EIP, align 4
  %111 = call i32 @vmcs_writel(i32 %110, i32 0)
  %112 = load i32, i32* @GUEST_RFLAGS, align 4
  %113 = call i32 @vmcs_writel(i32 %112, i32 2)
  %114 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %115 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %114, i32 0, i32 2
  %116 = call i64 @kvm_vcpu_is_bsp(%struct.TYPE_25__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %79
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %120 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %119, i32 65520)
  br label %124

121:                                              ; preds = %79
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %123 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %122, i32 0)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %126 = load i32, i32* @VCPU_REGS_RSP, align 4
  %127 = call i32 @kvm_register_write(%struct.kvm_vcpu* %125, i32 %126, i32 0)
  %128 = load i32, i32* @GUEST_DR7, align 4
  %129 = call i32 @vmcs_writel(i32 %128, i32 1024)
  %130 = load i32, i32* @GUEST_GDTR_BASE, align 4
  %131 = call i32 @vmcs_writel(i32 %130, i32 0)
  %132 = load i32, i32* @GUEST_GDTR_LIMIT, align 4
  %133 = call i32 @vmcs_write32(i32 %132, i32 65535)
  %134 = load i32, i32* @GUEST_IDTR_BASE, align 4
  %135 = call i32 @vmcs_writel(i32 %134, i32 0)
  %136 = load i32, i32* @GUEST_IDTR_LIMIT, align 4
  %137 = call i32 @vmcs_write32(i32 %136, i32 65535)
  %138 = load i32, i32* @GUEST_ACTIVITY_STATE, align 4
  %139 = load i32, i32* @GUEST_ACTIVITY_ACTIVE, align 4
  %140 = call i32 @vmcs_write32(i32 %138, i32 %139)
  %141 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %142 = call i32 @vmcs_write32(i32 %141, i32 0)
  %143 = load i32, i32* @GUEST_PENDING_DBG_EXCEPTIONS, align 4
  %144 = call i32 @vmcs_write32(i32 %143, i32 0)
  %145 = load i32, i32* @GUEST_IA32_DEBUGCTL, align 4
  %146 = call i32 @vmcs_write64(i32 %145, i32 0)
  %147 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %148 = call i32 @setup_msrs(%struct.vcpu_vmx* %147)
  %149 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %150 = call i32 @vmcs_write32(i32 %149, i32 0)
  %151 = call i64 (...) @cpu_has_vmx_tpr_shadow()
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %124
  %154 = load i32, i32* @VIRTUAL_APIC_PAGE_ADDR, align 4
  %155 = call i32 @vmcs_write64(i32 %154, i32 0)
  %156 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %157 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = call i64 @vm_need_tpr_shadow(%struct.TYPE_18__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %153
  %163 = load i32, i32* @VIRTUAL_APIC_PAGE_ADDR, align 4
  %164 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %165 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @page_to_phys(i32 %170)
  %172 = call i32 @vmcs_write64(i32 %163, i32 %171)
  br label %173

173:                                              ; preds = %162, %153
  %174 = load i32, i32* @TPR_THRESHOLD, align 4
  %175 = call i32 @vmcs_write32(i32 %174, i32 0)
  br label %176

176:                                              ; preds = %173, %124
  %177 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %178 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = call i64 @vm_need_virtualize_apic_accesses(%struct.TYPE_18__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %176
  %184 = load i32, i32* @APIC_ACCESS_ADDR, align 4
  %185 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %186 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @page_to_phys(i32 %191)
  %193 = call i32 @vmcs_write64(i32 %184, i32 %192)
  br label %194

194:                                              ; preds = %183, %176
  %195 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %196 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* @VIRTUAL_PROCESSOR_ID, align 4
  %201 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %202 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @vmcs_write16(i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32, i32* @X86_CR0_NW, align 4
  %207 = load i32, i32* @X86_CR0_CD, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @X86_CR0_ET, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %212 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 1
  store i32 %210, i32* %214, align 4
  %215 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %216 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %215, i32 0, i32 1
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = call i32 @srcu_read_lock(i32* %218)
  %220 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %221 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %223 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %222, i32 0, i32 2
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %225 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %224)
  %226 = call i32 @vmx_set_cr0(%struct.TYPE_25__* %223, i32 %225)
  %227 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %228 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %227, i32 0, i32 1
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @srcu_read_unlock(i32* %230, i32 %233)
  %235 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %236 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %235, i32 0, i32 2
  %237 = call i32 @vmx_set_cr4(%struct.TYPE_25__* %236, i32 0)
  %238 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %239 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %238, i32 0, i32 2
  %240 = call i32 @vmx_set_efer(%struct.TYPE_25__* %239, i32 0)
  %241 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %242 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %241, i32 0, i32 2
  %243 = call i32 @vmx_fpu_activate(%struct.TYPE_25__* %242)
  %244 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %245 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %244, i32 0, i32 2
  %246 = call i32 @update_exception_bitmap(%struct.TYPE_25__* %245)
  %247 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %248 = call i32 @vpid_sync_vcpu_all(%struct.vcpu_vmx* %247)
  store i32 0, i32* %5, align 4
  %249 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %250 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %249, i32 0, i32 1
  store i64 0, i64* %250, align 8
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_rdx_init_val(...) #1

declare dso_local i32 @kvm_set_cr8(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @kvm_vcpu_is_bsp(%struct.TYPE_25__*) #1

declare dso_local i32 @kvm_set_apic_base(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @fx_init(%struct.TYPE_25__*) #1

declare dso_local i32 @seg_setup(i32) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i32 @setup_msrs(%struct.vcpu_vmx*) #1

declare dso_local i64 @cpu_has_vmx_tpr_shadow(...) #1

declare dso_local i64 @vm_need_tpr_shadow(%struct.TYPE_18__*) #1

declare dso_local i32 @page_to_phys(i32) #1

declare dso_local i64 @vm_need_virtualize_apic_accesses(%struct.TYPE_18__*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @vmx_set_cr0(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @vmx_set_cr4(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @vmx_set_efer(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @vmx_fpu_activate(%struct.TYPE_25__*) #1

declare dso_local i32 @update_exception_bitmap(%struct.TYPE_25__*) #1

declare dso_local i32 @vpid_sync_vcpu_all(%struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
