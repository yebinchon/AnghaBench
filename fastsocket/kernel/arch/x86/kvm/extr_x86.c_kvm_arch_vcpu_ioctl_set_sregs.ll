; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_sregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_sregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)* }
%struct.kvm_vcpu = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32 }
%struct.descriptor_table = type { i32, i32 }
%struct.kvm_sregs = type { i32, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i64, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@X86_CR4_OSXSAVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Set back pending irq %d\0A\00", align 1
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_TR = common dso_local global i32 0, align 4
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@X86_CR0_PE = common dso_local global i32 0, align 4
@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_sregs(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.descriptor_table, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @vcpu_load(%struct.kvm_vcpu* %10)
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 @guest_cpuid_has_xsave(%struct.kvm_vcpu* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @X86_CR4_OSXSAVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %278

25:                                               ; preds = %15, %2
  %26 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %26, i32 0, i32 17
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %31, i32 0, i32 17
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)** %37, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i32 %38(%struct.kvm_vcpu* %39, %struct.descriptor_table* %9)
  %41 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %41, i32 0, i32 16
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %9, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %46, i32 0, i32 16
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)** %52, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 %53(%struct.kvm_vcpu* %54, %struct.descriptor_table* %9)
  %56 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %56, i32 0, i32 15
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %67 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kvm_set_cr8(%struct.kvm_vcpu* %79, i32 %82)
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)** %96, align 8
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 %97(%struct.kvm_vcpu* %98, i64 %101)
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %105 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @kvm_set_apic_base(%struct.kvm_vcpu* %103, i32 %106)
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = call i64 @kvm_read_cr0(%struct.kvm_vcpu* %108)
  %110 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %111 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)** %118, align 8
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %121 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %122 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 %119(%struct.kvm_vcpu* %120, i64 %123)
  %125 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %126 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i64 %127, i64* %130, align 8
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %131)
  %133 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %134 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %132, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %141, align 8
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %145 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %142(%struct.kvm_vcpu* %143, i32 %146)
  %148 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %149 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @X86_CR4_OSXSAVE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %25
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = call i32 @update_cpuid(%struct.kvm_vcpu* %155)
  br label %157

157:                                              ; preds = %154, %25
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %159 = call i32 @is_long_mode(%struct.kvm_vcpu* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %157
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %163 = call i64 @is_pae(%struct.kvm_vcpu* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @load_pdptrs(%struct.kvm_vcpu* %166, i64 %170)
  br label %172

172:                                              ; preds = %165, %161, %157
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %177 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %176)
  br label %178

178:                                              ; preds = %175, %172
  store i32 64, i32* %7, align 4
  %179 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %180 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %179, i32 0, i32 12
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i64*
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @find_first_bit(i64* %182, i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %205

188:                                              ; preds = %178
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @kvm_queue_interrupt(%struct.kvm_vcpu* %189, i32 %190, i32 0)
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %192)
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %195 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @irqchip_in_kernel(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %188
  %200 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %201 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @kvm_pic_clear_isr_ack(i32 %202)
  br label %204

204:                                              ; preds = %199, %188
  br label %205

205:                                              ; preds = %204, %178
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %207 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %208 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %207, i32 0, i32 4
  %209 = load i32, i32* @VCPU_SREG_CS, align 4
  %210 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %206, %struct.TYPE_10__* %208, i32 %209)
  %211 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %212 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %213 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %212, i32 0, i32 11
  %214 = load i32, i32* @VCPU_SREG_DS, align 4
  %215 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %211, %struct.TYPE_10__* %213, i32 %214)
  %216 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %217 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %218 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %217, i32 0, i32 10
  %219 = load i32, i32* @VCPU_SREG_ES, align 4
  %220 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %216, %struct.TYPE_10__* %218, i32 %219)
  %221 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %222 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %223 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %222, i32 0, i32 9
  %224 = load i32, i32* @VCPU_SREG_FS, align 4
  %225 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %221, %struct.TYPE_10__* %223, i32 %224)
  %226 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %227 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %228 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %227, i32 0, i32 8
  %229 = load i32, i32* @VCPU_SREG_GS, align 4
  %230 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %226, %struct.TYPE_10__* %228, i32 %229)
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %232 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %233 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %232, i32 0, i32 7
  %234 = load i32, i32* @VCPU_SREG_SS, align 4
  %235 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %231, %struct.TYPE_10__* %233, i32 %234)
  %236 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %237 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %238 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %237, i32 0, i32 6
  %239 = load i32, i32* @VCPU_SREG_TR, align 4
  %240 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %236, %struct.TYPE_10__* %238, i32 %239)
  %241 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %242 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %243 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %242, i32 0, i32 5
  %244 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %245 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %241, %struct.TYPE_10__* %243, i32 %244)
  %246 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %247 = call i32 @update_cr8_intercept(%struct.kvm_vcpu* %246)
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %249 = call i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %277

251:                                              ; preds = %205
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %253 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %252)
  %254 = icmp eq i32 %253, 65520
  br i1 %254, label %255, label %277

255:                                              ; preds = %251
  %256 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %257 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 61440
  br i1 %260, label %261, label %277

261:                                              ; preds = %255
  %262 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %263 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, -65536
  br i1 %266, label %267, label %277

267:                                              ; preds = %261
  %268 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %269 = load i32, i32* @X86_CR0_PE, align 4
  %270 = call i32 @kvm_read_cr0_bits(%struct.kvm_vcpu* %268, i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %267
  %273 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %274 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %275 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 3
  store i32 %273, i32* %276, align 8
  br label %277

277:                                              ; preds = %272, %267, %261, %255, %251, %205
  br label %278

278:                                              ; preds = %277, %22
  %279 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %280 = call i32 @vcpu_put(%struct.kvm_vcpu* %279)
  %281 = load i32, i32* %8, align 4
  ret i32 %281
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_has_xsave(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_set_cr8(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_set_apic_base(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_cpuid(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @irqchip_in_kernel(i32) #1

declare dso_local i32 @kvm_pic_clear_isr_ack(i32) #1

declare dso_local i32 @kvm_set_segment(%struct.kvm_vcpu*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @update_cr8_intercept(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_cr0_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
