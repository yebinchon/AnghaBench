; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_sysenter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_sysenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32*)*, i32 (i32, %struct.kvm_segment*, i32)* }
%struct.kvm_segment = type { i32, i32, i64 }
%struct.x86_emulate_ctxt = type { i32, i32, i32, %struct.decode_cache }
%struct.decode_cache = type { i32, i32* }

@X86EMUL_MODE_REAL = common dso_local global i32 0, align 4
@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MSR_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@EFLG_VM = common dso_local global i32 0, align 4
@EFLG_IF = common dso_local global i32 0, align 4
@EFLG_RF = common dso_local global i32 0, align 4
@SELECTOR_RPL_MASK = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_ESP = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i64 0, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @emulate_sysenter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_sysenter(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca %struct.decode_cache*, align 8
  %5 = alloca %struct.kvm_segment, align 8
  %6 = alloca %struct.kvm_segment, align 8
  %7 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  %8 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %9 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %8, i32 0, i32 3
  store %struct.decode_cache* %9, %struct.decode_cache** %4, align 8
  %10 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %11 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @X86EMUL_MODE_REAL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kvm_inject_gp(i32 %18, i32 0)
  %20 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %20, i32* %2, align 4
  br label %146

21:                                               ; preds = %1
  %22 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %23 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %27, i32* %2, align 4
  br label %146

28:                                               ; preds = %21
  %29 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %30 = call i32 @setup_syscalls_segments(%struct.x86_emulate_ctxt* %29, %struct.kvm_segment* %5, %struct.kvm_segment* %6)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %32, align 8
  %34 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %35 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MSR_IA32_SYSENTER_CS, align 4
  %38 = call i32 %33(i32 %36, i32 %37, i32* %7)
  %39 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %40 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %63 [
    i32 129, label %42
    i32 128, label %53
  ]

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 65532
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %48 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @kvm_inject_gp(i32 %49, i32 0)
  %51 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %51, i32* %2, align 4
  br label %146

52:                                               ; preds = %42
  br label %63

53:                                               ; preds = %28
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %58 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @kvm_inject_gp(i32 %59, i32 0)
  %61 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %61, i32* %2, align 4
  br label %146

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %28, %62, %52
  %64 = load i32, i32* @EFLG_VM, align 4
  %65 = load i32, i32* @EFLG_IF, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @EFLG_RF, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %71 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %7, align 4
  %75 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* @SELECTOR_RPL_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 8
  %81 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 8
  %84 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %6, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @SELECTOR_RPL_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %86
  store i32 %89, i32* %87, align 8
  %90 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %91 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %100, label %94

94:                                               ; preds = %63
  %95 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %96 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @is_long_mode(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94, %63
  %101 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32 (i32, %struct.kvm_segment*, i32)*, i32 (i32, %struct.kvm_segment*, i32)** %105, align 8
  %107 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %108 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VCPU_SREG_CS, align 4
  %111 = call i32 %106(i32 %109, %struct.kvm_segment* %5, i32 %110)
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32 (i32, %struct.kvm_segment*, i32)*, i32 (i32, %struct.kvm_segment*, i32)** %113, align 8
  %115 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %116 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @VCPU_SREG_SS, align 4
  %119 = call i32 %114(i32 %117, %struct.kvm_segment* %6, i32 %118)
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %121, align 8
  %123 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %124 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MSR_IA32_SYSENTER_EIP, align 4
  %127 = call i32 %122(i32 %125, i32 %126, i32* %7)
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.decode_cache*, %struct.decode_cache** %4, align 8
  %130 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %132, align 8
  %134 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %135 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @MSR_IA32_SYSENTER_ESP, align 4
  %138 = call i32 %133(i32 %136, i32 %137, i32* %7)
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.decode_cache*, %struct.decode_cache** %4, align 8
  %141 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @VCPU_REGS_RSP, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %103, %56, %46, %26, %15
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @kvm_inject_gp(i32, i32) #1

declare dso_local i32 @setup_syscalls_segments(%struct.x86_emulate_ctxt*, %struct.kvm_segment*, %struct.kvm_segment*) #1

declare dso_local i64 @is_long_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
