; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp9.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, i32, %struct.decode_cache }
%struct.decode_cache = type { i64* }
%struct.x86_emulate_ops = type { i32 (i64, i32*, i32, i32)*, i32 (i64, i32*, i32*, i32, i32)* }

@VCPU_REGS_RAX = common dso_local global i64 0, align 8
@VCPU_REGS_RDX = common dso_local global i64 0, align 8
@EFLG_ZF = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i64 0, align 8
@VCPU_REGS_RBX = common dso_local global i64 0, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i64)* @emulate_grp9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_grp9(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x86_emulate_ctxt*, align 8
  %6 = alloca %struct.x86_emulate_ops*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.decode_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %5, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %13 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %12, i32 0, i32 2
  store %struct.decode_cache* %13, %struct.decode_cache** %8, align 8
  %14 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %6, align 8
  %15 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %14, i32 0, i32 0
  %16 = load i32 (i64, i32*, i32, i32)*, i32 (i64, i32*, i32, i32)** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %19 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %16(i64 %17, i32* %9, i32 8, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %109

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 0
  %29 = sext i32 %28 to i64
  %30 = load %struct.decode_cache*, %struct.decode_cache** %8, align 8
  %31 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @VCPU_REGS_RAX, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %29, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 32
  %40 = sext i32 %39 to i64
  %41 = load %struct.decode_cache*, %struct.decode_cache** %8, align 8
  %42 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @VCPU_REGS_RDX, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %40, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %37, %26
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 0
  %51 = sext i32 %50 to i64
  %52 = load %struct.decode_cache*, %struct.decode_cache** %8, align 8
  %53 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @VCPU_REGS_RAX, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %51, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 32
  %59 = sext i32 %58 to i64
  %60 = load %struct.decode_cache*, %struct.decode_cache** %8, align 8
  %61 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @VCPU_REGS_RDX, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %59, i64* %64, align 8
  %65 = load i32, i32* @EFLG_ZF, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %68 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %107

71:                                               ; preds = %37
  %72 = load %struct.decode_cache*, %struct.decode_cache** %8, align 8
  %73 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @VCPU_REGS_RCX, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %78, 32
  %80 = sext i32 %79 to i64
  %81 = load %struct.decode_cache*, %struct.decode_cache** %8, align 8
  %82 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @VCPU_REGS_RBX, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = or i64 %80, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %6, align 8
  %90 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %89, i32 0, i32 1
  %91 = load i32 (i64, i32*, i32*, i32, i32)*, i32 (i64, i32*, i32*, i32, i32)** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %94 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 %91(i64 %92, i32* %9, i32* %10, i32 8, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %71
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %109

101:                                              ; preds = %71
  %102 = load i32, i32* @EFLG_ZF, align 4
  %103 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %104 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %48
  %108 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %99, %24
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
