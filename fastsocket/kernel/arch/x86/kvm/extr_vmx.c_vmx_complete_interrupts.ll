; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_complete_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_complete_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i32, i64, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8* }

@VM_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@VM_EXIT_REASON = common dso_local global i32 0, align 4
@EXIT_REASON_MCE_DURING_VMENTRY = common dso_local global i64 0, align 8
@EXIT_REASON_EXCEPTION_NMI = common dso_local global i64 0, align 8
@INTR_INFO_INTR_TYPE_MASK = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@INTR_INFO_UNBLOCK_NMI = common dso_local global i32 0, align 4
@INTR_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@DF_VECTOR = common dso_local global i32 0, align 4
@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_NMI = common dso_local global i32 0, align 4
@VECTORING_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@VM_EXIT_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@VECTORING_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@IDT_VECTORING_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @vmx_complete_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_complete_interrupts(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @VM_EXIT_INTR_INFO, align 4
  %14 = call i8* @vmcs_read32(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @VM_EXIT_REASON, align 4
  %17 = call i8* @vmcs_read32(i32 %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %22 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EXIT_REASON_MCE_DURING_VMENTRY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %1
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %28 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EXIT_REASON_EXCEPTION_NMI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @is_machine_check(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %1
  %37 = call i32 (...) @kvm_machine_check()
  br label %38

38:                                               ; preds = %36, %32, %26
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @INTR_INFO_INTR_TYPE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 130
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %50 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %49, i32 0, i32 2
  %51 = call i32 @kvm_before_handle_nmi(%struct.TYPE_10__* %50)
  call void asm sideeffect "int $$2", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %52 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %53 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %52, i32 0, i32 2
  %54 = call i32 @kvm_after_handle_nmi(%struct.TYPE_10__* %53)
  br label %55

55:                                               ; preds = %48, %43, %38
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = call i64 (...) @cpu_has_virtual_nmis()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @INTR_INFO_UNBLOCK_NMI, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @INTR_INFO_VECTOR_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %61
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @DF_VECTOR, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %86 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %87 = call i32 @vmcs_set_bits(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %81, %77, %74, %61
  br label %109

89:                                               ; preds = %55
  %90 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %91 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = call i32 (...) @ktime_get()
  %97 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %98 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ktime_sub(i32 %96, i32 %99)
  %101 = call i64 @ktime_to_ns(i32 %100)
  %102 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %103 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  br label %108

108:                                              ; preds = %95, %89
  br label %109

109:                                              ; preds = %108, %88
  %110 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %111 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %115 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %114, i32 0, i32 2
  %116 = call i32 @kvm_clear_exception_queue(%struct.TYPE_10__* %115)
  %117 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %118 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %117, i32 0, i32 2
  %119 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_10__* %118)
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %109
  br label %182

123:                                              ; preds = %109
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @VECTORING_INFO_VECTOR_MASK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @VECTORING_INFO_TYPE_MASK, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  switch i32 %130, label %181 [
    i32 130, label %131
    i32 129, label %139
    i32 131, label %146
    i32 128, label %166
    i32 132, label %173
  ]

131:                                              ; preds = %123
  %132 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %133 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %137 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %138 = call i32 @vmcs_clear_bits(i32 %136, i32 %137)
  br label %182

139:                                              ; preds = %123
  %140 = load i32, i32* @VM_EXIT_INSTRUCTION_LEN, align 4
  %141 = call i8* @vmcs_read32(i32 %140)
  %142 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %143 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  store i8* %141, i8** %145, align 8
  br label %146

146:                                              ; preds = %123, %139
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @VECTORING_INFO_DELIVER_CODE_MASK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i32, i32* @IDT_VECTORING_ERROR_CODE, align 4
  %153 = call i8* @vmcs_read32(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  store i32 %154, i32* %9, align 4
  %155 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %156 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %155, i32 0, i32 2
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @kvm_queue_exception_e(%struct.TYPE_10__* %156, i32 %157, i32 %158)
  br label %165

160:                                              ; preds = %146
  %161 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %162 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %161, i32 0, i32 2
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @kvm_queue_exception(%struct.TYPE_10__* %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %151
  br label %182

166:                                              ; preds = %123
  %167 = load i32, i32* @VM_EXIT_INSTRUCTION_LEN, align 4
  %168 = call i8* @vmcs_read32(i32 %167)
  %169 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %170 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i8* %168, i8** %172, align 8
  br label %173

173:                                              ; preds = %123, %166
  %174 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %175 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %174, i32 0, i32 2
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp eq i32 %177, 128
  %179 = zext i1 %178 to i32
  %180 = call i32 @kvm_queue_interrupt(%struct.TYPE_10__* %175, i32 %176, i32 %179)
  br label %182

181:                                              ; preds = %123
  br label %182

182:                                              ; preds = %122, %181, %173, %165, %131
  ret void
}

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i64 @is_machine_check(i32) #1

declare dso_local i32 @kvm_machine_check(...) #1

declare dso_local i32 @kvm_before_handle_nmi(%struct.TYPE_10__*) #1

declare dso_local i32 @kvm_after_handle_nmi(%struct.TYPE_10__*) #1

declare dso_local i64 @cpu_has_virtual_nmis(...) #1

declare dso_local i32 @vmcs_set_bits(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @vmcs_clear_bits(i32, i32) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2305}
