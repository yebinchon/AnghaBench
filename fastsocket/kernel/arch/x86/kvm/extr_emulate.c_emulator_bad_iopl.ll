; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulator_bad_iopl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulator_bad_iopl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.x86_emulate_ctxt = type { i64, i32, i32 }

@X86EMUL_MODE_REAL = common dso_local global i64 0, align 8
@X86EMUL_MODE_VM86 = common dso_local global i64 0, align 8
@X86_EFLAGS_IOPL = common dso_local global i32 0, align 4
@IOPL_SHIFT = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @emulator_bad_iopl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_bad_iopl(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  %5 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %6 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @X86EMUL_MODE_REAL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %13 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @X86EMUL_MODE_VM86, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @X86_EFLAGS_IOPL, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @IOPL_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %30 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %28(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %18, %17, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
