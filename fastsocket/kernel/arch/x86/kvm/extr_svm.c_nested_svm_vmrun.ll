; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_vmrun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_vmrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.vmcb*, %struct.TYPE_19__, %struct.TYPE_16__, i32 }
%struct.vmcb = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.vmcb* }

@KM_USER0 = common dso_local global i32 0, align 4
@npt_enabled = common dso_local global i64 0, align 8
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@HF_HIF_MASK = common dso_local global i32 0, align 4
@VMCB_CR = common dso_local global i32 0, align 4
@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RIP = common dso_local global i32 0, align 4
@V_INTR_MASKING_MASK = common dso_local global i32 0, align 4
@V_IRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nSVM Injecting Interrupt: 0x%x\0A\00", align 1
@HF_VINTR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"nSVM exit_int_info: 0x%x | int_state: 0x%x\0A\00", align 1
@SVM_EVTINJ_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Injecting Event: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_vmrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_vmrun(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb*, align 8
  %5 = alloca %struct.vmcb*, align 8
  %6 = alloca %struct.vmcb*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 8
  %10 = load %struct.vmcb*, %struct.vmcb** %9, align 8
  store %struct.vmcb* %10, %struct.vmcb** %5, align 8
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 0
  %13 = load %struct.vmcb*, %struct.vmcb** %12, align 8
  store %struct.vmcb* %13, %struct.vmcb** %6, align 8
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 0
  %17 = load %struct.vmcb*, %struct.vmcb** %16, align 8
  %18 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @KM_USER0, align 4
  %22 = call %struct.vmcb* @nested_svm_map(%struct.vcpu_svm* %14, i32 %20, i32 %21)
  store %struct.vmcb* %22, %struct.vmcb** %4, align 8
  %23 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %24 = icmp ne %struct.vmcb* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %660

26:                                               ; preds = %1
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 0
  %29 = load %struct.vmcb*, %struct.vmcb** %28, align 8
  %30 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %34 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 7
  store i32 %32, i32* %35, align 4
  %36 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %37 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %36, i32 0, i32 1
  %38 = call i32 @kvm_clear_exception_queue(%struct.TYPE_19__* %37)
  %39 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %40 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %39, i32 0, i32 1
  %41 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_19__* %40)
  %42 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %43 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 17
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %47 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 17
  store i32 %45, i32* %48, align 4
  %49 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %50 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %54 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 16
  store i32 %52, i32* %55, align 8
  %56 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %57 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 15
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %61 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 15
  store i32 %59, i32* %62, align 4
  %63 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %64 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %68 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 14
  store i32 %66, i32* %69, align 8
  %70 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %71 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 13
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %75 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 13
  store i32 %73, i32* %76, align 4
  %77 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %78 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %82 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 12
  store i32 %80, i32* %83, align 8
  %84 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %85 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %90 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 11
  store i32 %88, i32* %91, align 4
  %92 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %93 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %92, i32 0, i32 1
  %94 = call i32 @kvm_read_cr0(%struct.TYPE_19__* %93)
  %95 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %96 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 10
  store i32 %94, i32* %97, align 8
  %98 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %99 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %104 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 9
  store i32 %102, i32* %105, align 4
  %106 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %107 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %111 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %114 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %117 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 8
  %119 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %120 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %124 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 5
  store i32 %122, i32* %125, align 4
  %126 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %127 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %131 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 6
  store i32 %129, i32* %132, align 8
  %133 = load i64, i64* @npt_enabled, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %26
  %136 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %137 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %141 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 8
  store i32 %139, i32* %142, align 8
  br label %152

143:                                              ; preds = %26
  %144 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %145 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %150 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 8
  store i32 %148, i32* %151, align 8
  br label %152

152:                                              ; preds = %143, %135
  %153 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %154 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %155 = call i32 @copy_vmcb_control_area(%struct.vmcb* %153, %struct.vmcb* %154)
  %156 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %157 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %156, i32 0, i32 0
  %158 = load %struct.vmcb*, %struct.vmcb** %157, align 8
  %159 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @X86_EFLAGS_IF, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %152
  %166 = load i32, i32* @HF_HIF_MASK, align 4
  %167 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %168 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %166
  store i32 %172, i32* %170, align 8
  br label %182

173:                                              ; preds = %152
  %174 = load i32, i32* @HF_HIF_MASK, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %177 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %175
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %173, %165
  %183 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %184 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 17
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %188 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %187, i32 0, i32 0
  %189 = load %struct.vmcb*, %struct.vmcb** %188, align 8
  %190 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 17
  store i32 %186, i32* %191, align 4
  %192 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %193 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 16
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %197 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %196, i32 0, i32 0
  %198 = load %struct.vmcb*, %struct.vmcb** %197, align 8
  %199 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 16
  store i32 %195, i32* %200, align 8
  %201 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %202 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 15
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %206 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %205, i32 0, i32 0
  %207 = load %struct.vmcb*, %struct.vmcb** %206, align 8
  %208 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 15
  store i32 %204, i32* %209, align 4
  %210 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %211 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 14
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %215 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %214, i32 0, i32 0
  %216 = load %struct.vmcb*, %struct.vmcb** %215, align 8
  %217 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 14
  store i32 %213, i32* %218, align 8
  %219 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %220 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %224 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %223, i32 0, i32 0
  %225 = load %struct.vmcb*, %struct.vmcb** %224, align 8
  %226 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 13
  store i32 %222, i32* %227, align 4
  %228 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %229 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 12
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %233 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %232, i32 0, i32 0
  %234 = load %struct.vmcb*, %struct.vmcb** %233, align 8
  %235 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 12
  store i32 %231, i32* %236, align 8
  %237 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %238 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %242 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %241, i32 0, i32 0
  %243 = load %struct.vmcb*, %struct.vmcb** %242, align 8
  %244 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  store i32 %240, i32* %245, align 8
  %246 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %247 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %246, i32 0, i32 1
  %248 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %249 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @svm_set_efer(%struct.TYPE_19__* %247, i32 %251)
  %253 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %254 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %253, i32 0, i32 1
  %255 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %256 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 10
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @svm_set_cr0(%struct.TYPE_19__* %254, i32 %258)
  %260 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %261 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %260, i32 0, i32 1
  %262 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %263 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @svm_set_cr4(%struct.TYPE_19__* %261, i32 %265)
  %267 = load i64, i64* @npt_enabled, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %287

269:                                              ; preds = %182
  %270 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %271 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %275 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %274, i32 0, i32 0
  %276 = load %struct.vmcb*, %struct.vmcb** %275, align 8
  %277 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 8
  store i32 %273, i32* %278, align 8
  %279 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %280 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 8
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %284 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 2
  store i32 %282, i32* %286, align 8
  br label %298

287:                                              ; preds = %182
  %288 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %289 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %288, i32 0, i32 1
  %290 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %291 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @kvm_set_cr3(%struct.TYPE_19__* %289, i32 %293)
  %295 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %296 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %295, i32 0, i32 1
  %297 = call i32 @kvm_mmu_reset_context(%struct.TYPE_19__* %296)
  br label %298

298:                                              ; preds = %287, %269
  %299 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %300 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %299, i32 0, i32 0
  %301 = load %struct.vmcb*, %struct.vmcb** %300, align 8
  %302 = load i32, i32* @VMCB_CR, align 4
  %303 = call i32 @mark_dirty(%struct.vmcb* %301, i32 %302)
  %304 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %305 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %309 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 1
  store i32 %307, i32* %311, align 4
  %312 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %313 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %312, i32 0, i32 0
  %314 = load %struct.vmcb*, %struct.vmcb** %313, align 8
  %315 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 7
  store i32 %307, i32* %316, align 4
  %317 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %318 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %317, i32 0, i32 1
  %319 = load i32, i32* @VCPU_REGS_RAX, align 4
  %320 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %321 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @kvm_register_write(%struct.TYPE_19__* %318, i32 %319, i32 %323)
  %325 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %326 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %325, i32 0, i32 1
  %327 = load i32, i32* @VCPU_REGS_RSP, align 4
  %328 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %329 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @kvm_register_write(%struct.TYPE_19__* %326, i32 %327, i32 %331)
  %333 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %334 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %333, i32 0, i32 1
  %335 = load i32, i32* @VCPU_REGS_RIP, align 4
  %336 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %337 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @kvm_register_write(%struct.TYPE_19__* %334, i32 %335, i32 %339)
  %341 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %342 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %346 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %345, i32 0, i32 0
  %347 = load %struct.vmcb*, %struct.vmcb** %346, align 8
  %348 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 6
  store i32 %344, i32* %349, align 8
  %350 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %351 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %355 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %354, i32 0, i32 0
  %356 = load %struct.vmcb*, %struct.vmcb** %355, align 8
  %357 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 5
  store i32 %353, i32* %358, align 4
  %359 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %360 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %364 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %363, i32 0, i32 0
  %365 = load %struct.vmcb*, %struct.vmcb** %364, align 8
  %366 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 4
  store i32 %362, i32* %367, align 8
  %368 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %369 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %373 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %372, i32 0, i32 0
  %374 = load %struct.vmcb*, %struct.vmcb** %373, align 8
  %375 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 3
  store i32 %371, i32* %376, align 4
  %377 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %378 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %382 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %381, i32 0, i32 0
  %383 = load %struct.vmcb*, %struct.vmcb** %382, align 8
  %384 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 2
  store i32 %380, i32* %385, align 8
  %386 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %387 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %391 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %390, i32 0, i32 0
  %392 = load %struct.vmcb*, %struct.vmcb** %391, align 8
  %393 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 1
  store i32 %389, i32* %394, align 4
  %395 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %396 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 13
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %400 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %399, i32 0, i32 0
  %401 = load %struct.vmcb*, %struct.vmcb** %400, align 8
  %402 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 13
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %404, %398
  store i32 %405, i32* %403, align 4
  %406 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %407 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 12
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %411 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %410, i32 0, i32 0
  %412 = load %struct.vmcb*, %struct.vmcb** %411, align 8
  %413 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 12
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %409
  store i32 %416, i32* %414, align 8
  %417 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %418 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 11
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %422 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %421, i32 0, i32 0
  %423 = load %struct.vmcb*, %struct.vmcb** %422, align 8
  %424 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 11
  %426 = load i32, i32* %425, align 4
  %427 = or i32 %426, %420
  store i32 %427, i32* %425, align 4
  %428 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %429 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %429, i32 0, i32 10
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %433 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %432, i32 0, i32 0
  %434 = load %struct.vmcb*, %struct.vmcb** %433, align 8
  %435 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %435, i32 0, i32 10
  %437 = load i32, i32* %436, align 8
  %438 = or i32 %437, %431
  store i32 %438, i32* %436, align 8
  %439 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %440 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %440, i32 0, i32 9
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %444 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %443, i32 0, i32 0
  %445 = load %struct.vmcb*, %struct.vmcb** %444, align 8
  %446 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 9
  %448 = load i32, i32* %447, align 4
  %449 = or i32 %448, %442
  store i32 %449, i32* %447, align 4
  %450 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %451 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %451, i32 0, i32 8
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %455 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %454, i32 0, i32 0
  %456 = load %struct.vmcb*, %struct.vmcb** %455, align 8
  %457 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 8
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %453
  store i32 %460, i32* %458, align 8
  %461 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %462 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 14
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %466 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 6
  store i32 %464, i32* %467, align 8
  %468 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %469 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %469, i32 0, i32 13
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %473 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %473, i32 0, i32 5
  store i32 %471, i32* %474, align 4
  %475 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %476 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 12
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %480 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 4
  store i32 %478, i32* %481, align 8
  %482 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %483 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 11
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %487 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %487, i32 0, i32 3
  store i32 %485, i32* %488, align 4
  %489 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %490 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %490, i32 0, i32 10
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %494 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %493, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %494, i32 0, i32 2
  store i32 %492, i32* %495, align 8
  %496 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %497 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 9
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %501 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 1
  store i32 %499, i32* %502, align 4
  %503 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %504 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %504, i32 0, i32 8
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %508 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %508, i32 0, i32 0
  store i32 %506, i32* %509, align 8
  %510 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %511 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %510, i32 0, i32 1
  %512 = call i32 @svm_flush_tlb(%struct.TYPE_19__* %511)
  %513 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %514 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %514, i32 0, i32 6
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %518 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %517, i32 0, i32 0
  %519 = load %struct.vmcb*, %struct.vmcb** %518, align 8
  %520 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %520, i32 0, i32 6
  store i32 %516, i32* %521, align 8
  %522 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %523 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 7
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %527 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %526, i32 0, i32 0
  %528 = load %struct.vmcb*, %struct.vmcb** %527, align 8
  %529 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %529, i32 0, i32 7
  store i32 %525, i32* %530, align 4
  %531 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %532 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* @V_INTR_MASKING_MASK, align 4
  %536 = or i32 %534, %535
  %537 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %538 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %537, i32 0, i32 0
  %539 = load %struct.vmcb*, %struct.vmcb** %538, align 8
  %540 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %540, i32 0, i32 0
  store i32 %536, i32* %541, align 8
  %542 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %543 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = load i32, i32* @V_IRQ_MASK, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %555

549:                                              ; preds = %298
  %550 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %551 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = call i32 (i8*, i32, ...) @nsvm_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %553)
  br label %555

555:                                              ; preds = %549, %298
  %556 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %557 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @V_INTR_MASKING_MASK, align 4
  %561 = and i32 %559, %560
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %571

563:                                              ; preds = %555
  %564 = load i32, i32* @HF_VINTR_MASK, align 4
  %565 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %566 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = or i32 %569, %564
  store i32 %570, i32* %568, align 8
  br label %580

571:                                              ; preds = %555
  %572 = load i32, i32* @HF_VINTR_MASK, align 4
  %573 = xor i32 %572, -1
  %574 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %575 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = and i32 %578, %573
  store i32 %579, i32* %577, align 8
  br label %580

580:                                              ; preds = %571, %563
  %581 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %582 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 8
  %585 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %586 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %586, i32 0, i32 4
  %588 = load i32, i32* %587, align 8
  %589 = call i32 (i8*, i32, ...) @nsvm_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %584, i32 %588)
  %590 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %591 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %591, i32 0, i32 5
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %595 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %594, i32 0, i32 0
  %596 = load %struct.vmcb*, %struct.vmcb** %595, align 8
  %597 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %597, i32 0, i32 5
  store i32 %593, i32* %598, align 4
  %599 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %600 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %600, i32 0, i32 4
  %602 = load i32, i32* %601, align 8
  %603 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %604 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %603, i32 0, i32 0
  %605 = load %struct.vmcb*, %struct.vmcb** %604, align 8
  %606 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %606, i32 0, i32 4
  store i32 %602, i32* %607, align 8
  %608 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %609 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %609, i32 0, i32 3
  %611 = load i64, i64* %610, align 8
  %612 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %613 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %612, i32 0, i32 0
  %614 = load %struct.vmcb*, %struct.vmcb** %613, align 8
  %615 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %615, i32 0, i32 3
  %617 = load i64, i64* %616, align 8
  %618 = add nsw i64 %617, %611
  store i64 %618, i64* %616, align 8
  %619 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %620 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @SVM_EVTINJ_VALID, align 4
  %624 = and i32 %622, %623
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %632

626:                                              ; preds = %580
  %627 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %628 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = call i32 (i8*, i32, ...) @nsvm_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %630)
  br label %632

632:                                              ; preds = %626, %580
  %633 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %634 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %638 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %637, i32 0, i32 0
  %639 = load %struct.vmcb*, %struct.vmcb** %638, align 8
  %640 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %640, i32 0, i32 1
  store i32 %636, i32* %641, align 4
  %642 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %643 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %643, i32 0, i32 2
  %645 = load i32, i32* %644, align 8
  %646 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %647 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %646, i32 0, i32 0
  %648 = load %struct.vmcb*, %struct.vmcb** %647, align 8
  %649 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %649, i32 0, i32 2
  store i32 %645, i32* %650, align 8
  %651 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %652 = load i32, i32* @KM_USER0, align 4
  %653 = call i32 @nested_svm_unmap(%struct.vmcb* %651, i32 %652)
  %654 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %655 = call i32 @enable_gif(%struct.vcpu_svm* %654)
  %656 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %657 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %656, i32 0, i32 0
  %658 = load %struct.vmcb*, %struct.vmcb** %657, align 8
  %659 = call i32 @mark_all_dirty(%struct.vmcb* %658)
  store i32 1, i32* %2, align 4
  br label %660

660:                                              ; preds = %632, %25
  %661 = load i32, i32* %2, align 4
  ret i32 %661
}

declare dso_local %struct.vmcb* @nested_svm_map(%struct.vcpu_svm*, i32, i32) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_read_cr0(%struct.TYPE_19__*) #1

declare dso_local i32 @copy_vmcb_control_area(%struct.vmcb*, %struct.vmcb*) #1

declare dso_local i32 @svm_set_efer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @svm_set_cr0(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @svm_set_cr4(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @kvm_set_cr3(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.TYPE_19__*) #1

declare dso_local i32 @mark_dirty(%struct.vmcb*, i32) #1

declare dso_local i32 @kvm_register_write(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @svm_flush_tlb(%struct.TYPE_19__*) #1

declare dso_local i32 @nsvm_printk(i8*, i32, ...) #1

declare dso_local i32 @nested_svm_unmap(%struct.vmcb*, i32) #1

declare dso_local i32 @enable_gif(%struct.vcpu_svm*) #1

declare dso_local i32 @mark_all_dirty(%struct.vmcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
