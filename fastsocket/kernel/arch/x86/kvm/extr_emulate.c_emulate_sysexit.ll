; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_sysexit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_sysexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_8__*, %struct.kvm_segment*, i32)*, i32 (%struct.TYPE_8__*, i32, i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.kvm_segment = type { i32, i32, i32, i32 }
%struct.x86_emulate_ctxt = type { i64, %struct.TYPE_8__*, %struct.decode_cache }
%struct.decode_cache = type { i32, i32*, i32 }

@X86EMUL_MODE_REAL = common dso_local global i64 0, align 8
@X86EMUL_MODE_VM86 = common dso_local global i64 0, align 8
@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_9__* null, align 8
@MSR_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@SELECTOR_RPL_MASK = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i64 0, align 8
@VCPU_REGS_RCX = common dso_local global i64 0, align 8
@VCPU_REGS_RSP = common dso_local global i64 0, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @emulate_sysexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_sysexit(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca %struct.decode_cache*, align 8
  %5 = alloca %struct.kvm_segment, align 4
  %6 = alloca %struct.kvm_segment, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  %9 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %10 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %9, i32 0, i32 2
  store %struct.decode_cache* %10, %struct.decode_cache** %4, align 8
  %11 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @X86EMUL_MODE_REAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %18 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @X86EMUL_MODE_VM86, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16, %1
  %23 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 @kvm_inject_gp(%struct.TYPE_8__* %25, i32 0)
  %27 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %27, i32* %2, align 4
  br label %146

28:                                               ; preds = %16
  %29 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %30 = call i32 @setup_syscalls_segments(%struct.x86_emulate_ctxt* %29, %struct.kvm_segment* %5, %struct.kvm_segment* %6)
  %31 = load %struct.decode_cache*, %struct.decode_cache** %4, align 8
  %32 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 128, i32* %8, align 4
  br label %38

37:                                               ; preds = %28
  store i32 129, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 0
  store i32 3, i32* %39, align 4
  %40 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %6, i32 0, i32 0
  store i32 3, i32* %40, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)** %42, align 8
  %44 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %45 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* @MSR_IA32_SYSENTER_CS, align 4
  %48 = call i32 %43(%struct.TYPE_8__* %46, i32 %47, i32* %7)
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %95 [
    i32 129, label %50
    i32 128, label %73
  ]

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 16
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = ptrtoint i8* %54 to i32
  %56 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 65532
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %62 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @kvm_inject_gp(%struct.TYPE_8__* %63, i32 0)
  %65 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %65, i32* %2, align 4
  br label %146

66:                                               ; preds = %50
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 24
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %6, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  br label %95

73:                                               ; preds = %38
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = ptrtoint i8* %77 to i32
  %79 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %84 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = call i32 @kvm_inject_gp(%struct.TYPE_8__* %85, i32 0)
  %87 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %87, i32* %2, align 4
  br label %146

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 8
  %92 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %6, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 3
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 2
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %38, %88, %66
  %96 = load i32, i32* @SELECTOR_RPL_MASK, align 4
  %97 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @SELECTOR_RPL_MASK, align 4
  %101 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %6, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_8__*, %struct.kvm_segment*, i32)*, i32 (%struct.TYPE_8__*, %struct.kvm_segment*, i32)** %105, align 8
  %107 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %108 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* @VCPU_SREG_CS, align 4
  %111 = call i32 %106(%struct.TYPE_8__* %109, %struct.kvm_segment* %5, i32 %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kvm_x86_ops, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_8__*, %struct.kvm_segment*, i32)*, i32 (%struct.TYPE_8__*, %struct.kvm_segment*, i32)** %113, align 8
  %115 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %116 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* @VCPU_SREG_SS, align 4
  %119 = call i32 %114(%struct.TYPE_8__* %117, %struct.kvm_segment* %6, i32 %118)
  %120 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %121 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @VCPU_REGS_RDX, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.decode_cache*, %struct.decode_cache** %4, align 8
  %130 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %132 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @VCPU_REGS_RCX, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.decode_cache*, %struct.decode_cache** %4, align 8
  %141 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @VCPU_REGS_RSP, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %95, %82, %60, %22
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @kvm_inject_gp(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @setup_syscalls_segments(%struct.x86_emulate_ctxt*, %struct.kvm_segment*, %struct.kvm_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
