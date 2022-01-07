; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_syscall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32*)*, i32 (i32, %struct.kvm_segment*, i32)* }
%struct.kvm_segment = type { i32, i64, i8* }
%struct.x86_emulate_ctxt = type { i64, i32, i32, %struct.decode_cache }
%struct.decode_cache = type { i32*, i32 }
%struct.x86_emulate_ops = type { i32 }

@X86EMUL_MODE_REAL = common dso_local global i64 0, align 8
@X86EMUL_MODE_VM86 = common dso_local global i64 0, align 8
@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MSR_EFER = common dso_local global i32 0, align 4
@EFER_SCE = common dso_local global i32 0, align 4
@MSR_STAR = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i64 0, align 8
@EFLG_VM = common dso_local global i32 0, align 4
@EFLG_IF = common dso_local global i32 0, align 4
@EFLG_RF = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@MSR_CSTAR = common dso_local global i32 0, align 4
@MSR_LSTAR = common dso_local global i32 0, align 4
@MSR_SYSCALL_MASK = common dso_local global i32 0, align 4
@VCPU_REGS_R11 = common dso_local global i64 0, align 8
@X86EMUL_MODE_PROT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*)* @emulate_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_syscall(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca %struct.x86_emulate_ops*, align 8
  %6 = alloca %struct.decode_cache*, align 8
  %7 = alloca %struct.kvm_segment, align 8
  %8 = alloca %struct.kvm_segment, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %5, align 8
  %11 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %11, i32 0, i32 3
  store %struct.decode_cache* %12, %struct.decode_cache** %6, align 8
  %13 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %14 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @X86EMUL_MODE_REAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %20 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @X86EMUL_MODE_VM86, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %25, i32* %3, align 4
  br label %144

26:                                               ; preds = %18
  %27 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %28 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %5, align 8
  %29 = call i32 @em_syscall_is_enabled(%struct.x86_emulate_ctxt* %27, %struct.x86_emulate_ops* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %33 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UD_VECTOR, align 4
  %36 = call i32 @kvm_queue_exception(i32 %34, i32 %35)
  %37 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %37, i32* %3, align 4
  br label %144

38:                                               ; preds = %26
  %39 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %40 = call i32 @setup_syscalls_segments(%struct.x86_emulate_ctxt* %39, %struct.kvm_segment* %7, %struct.kvm_segment* %8)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %42, align 8
  %44 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %45 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MSR_EFER, align 4
  %48 = call i32 %43(i32 %46, i32 %47, i32* %10)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EFER_SCE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %38
  %54 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %55 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @UD_VECTOR, align 4
  %58 = call i32 @kvm_queue_exception(i32 %56, i32 %57)
  %59 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %59, i32* %3, align 4
  br label %144

60:                                               ; preds = %38
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %62, align 8
  %64 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %65 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MSR_STAR, align 4
  %68 = call i32 %63(i32 %66, i32 %67, i32* %9)
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 65532
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %82 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @is_long_mode(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %60
  %87 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %7, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %60
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32 (i32, %struct.kvm_segment*, i32)*, i32 (i32, %struct.kvm_segment*, i32)** %91, align 8
  %93 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %94 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VCPU_SREG_CS, align 4
  %97 = call i32 %92(i32 %95, %struct.kvm_segment* %7, i32 %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32 (i32, %struct.kvm_segment*, i32)*, i32 (i32, %struct.kvm_segment*, i32)** %99, align 8
  %101 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %102 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @VCPU_SREG_SS, align 4
  %105 = call i32 %100(i32 %103, %struct.kvm_segment* %8, i32 %104)
  %106 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %107 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %110 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @VCPU_REGS_RCX, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %115 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @is_long_mode(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %89
  br label %142

120:                                              ; preds = %89
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %122, align 8
  %124 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %125 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MSR_STAR, align 4
  %128 = call i32 %123(i32 %126, i32 %127, i32* %9)
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.decode_cache*, %struct.decode_cache** %6, align 8
  %131 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @EFLG_VM, align 4
  %133 = load i32, i32* @EFLG_IF, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @EFLG_RF, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %139 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %120, %119
  %143 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %53, %31, %24
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @em_syscall_is_enabled(%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*) #1

declare dso_local i32 @kvm_queue_exception(i32, i32) #1

declare dso_local i32 @setup_syscalls_segments(%struct.x86_emulate_ctxt*, %struct.kvm_segment*, %struct.kvm_segment*) #1

declare dso_local i64 @is_long_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
