; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_set_dr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_set_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i64, i32*)* }
%struct.x86_emulate_ctxt = type { i64, i32 }

@X86EMUL_MODE_PROT64 = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emulator_set_dr(%struct.x86_emulate_ctxt* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x86_emulate_ctxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %11 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @X86EMUL_MODE_PROT64, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64 -1, i64 4294967295
  store i64 %16, i64* %8, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i64, i32*)*, i32 (i32, i32, i64, i32*)** %18, align 8
  %20 = icmp ne i32 (i32, i32, i64, i32*)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i64, i32*)*, i32 (i32, i32, i64, i32*)** %25, align 8
  %27 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %28 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = and i64 %31, %32
  %34 = call i32 %26(i32 %29, i32 %30, i64 %33, i32* %9)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %37, %21
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
