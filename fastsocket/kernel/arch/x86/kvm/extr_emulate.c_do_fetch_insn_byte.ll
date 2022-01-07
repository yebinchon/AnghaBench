; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_do_fetch_insn_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_do_fetch_insn_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fetch_cache }
%struct.fetch_cache = type { i64, i64, i32* }
%struct.x86_emulate_ops = type { i32 (i64, i32*, i32, i32, i32*)* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i64, i32*)* @do_fetch_insn_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fetch_insn_byte(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x86_emulate_ctxt*, align 8
  %7 = alloca %struct.x86_emulate_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fetch_cache*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %6, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %14 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.fetch_cache* %15, %struct.fetch_cache** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.fetch_cache*, %struct.fetch_cache** %10, align 8
  %18 = getelementptr inbounds %struct.fetch_cache, %struct.fetch_cache* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.fetch_cache*, %struct.fetch_cache** %10, align 8
  %24 = getelementptr inbounds %struct.fetch_cache, %struct.fetch_cache* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %21, %4
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @offset_in_page(i64 %29)
  %31 = sub nsw i64 %28, %30
  %32 = call i32 @min(i64 15, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %7, align 8
  %34 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %33, i32 0, i32 0
  %35 = load i32 (i64, i32*, i32, i32, i32*)*, i32 (i64, i32*, i32, i32, i32*)** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.fetch_cache*, %struct.fetch_cache** %10, align 8
  %38 = getelementptr inbounds %struct.fetch_cache, %struct.fetch_cache* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %42 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %35(i64 %36, i32* %39, i32 %40, i32 %43, i32* null)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %73

50:                                               ; preds = %27
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.fetch_cache*, %struct.fetch_cache** %10, align 8
  %53 = getelementptr inbounds %struct.fetch_cache, %struct.fetch_cache* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load %struct.fetch_cache*, %struct.fetch_cache** %10, align 8
  %59 = getelementptr inbounds %struct.fetch_cache, %struct.fetch_cache* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %21
  %61 = load %struct.fetch_cache*, %struct.fetch_cache** %10, align 8
  %62 = getelementptr inbounds %struct.fetch_cache, %struct.fetch_cache* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.fetch_cache*, %struct.fetch_cache** %10, align 8
  %66 = getelementptr inbounds %struct.fetch_cache, %struct.fetch_cache* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %60, %48
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @offset_in_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
