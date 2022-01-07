; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_do_insn_fetch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_do_insn_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.x86_emulate_ops = type { i32 }

@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i64, i8*, i32)* @do_insn_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_insn_fetch(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.x86_emulate_ctxt*, align 8
  %8 = alloca %struct.x86_emulate_ops*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %7, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* %11, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %18 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = zext i32 %20 to i64
  %22 = sub i64 %16, %21
  %23 = icmp ugt i64 %22, 15
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %25, i32* %6, align 4
  br label %54

26:                                               ; preds = %5
  %27 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %28 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %51, %26
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %38 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = trunc i64 %39 to i32
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  %44 = ptrtoint i8* %42 to i32
  %45 = call i32 @do_fetch_insn_byte(%struct.x86_emulate_ctxt* %37, %struct.x86_emulate_ops* %38, i32 %41, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %36
  br label %32

52:                                               ; preds = %32
  %53 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %49, %24
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @do_fetch_insn_byte(%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
