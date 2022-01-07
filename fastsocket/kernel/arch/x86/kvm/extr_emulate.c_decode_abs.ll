; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_decode_abs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_decode_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.decode_cache }
%struct.decode_cache = type { i32, i32, i8* }
%struct.x86_emulate_ops = type { i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@u64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*)* @decode_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_abs(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1) #0 {
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca %struct.x86_emulate_ops*, align 8
  %5 = alloca %struct.decode_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %4, align 8
  %7 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %7, i32 0, i32 0
  store %struct.decode_cache* %8, %struct.decode_cache** %5, align 8
  %9 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %11 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %37 [
    i32 2, label %13
    i32 4, label %21
    i32 8, label %29
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @u16, align 4
  %15 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %16 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @insn_fetch(i32 %14, i32 2, i32 %17)
  %19 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %20 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %37

21:                                               ; preds = %2
  %22 = load i32, i32* @u32, align 4
  %23 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %24 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @insn_fetch(i32 %22, i32 4, i32 %25)
  %27 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %28 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* @u64, align 4
  %31 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %32 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @insn_fetch(i32 %30, i32 8, i32 %33)
  %35 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %36 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %2, %29, %21, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i8* @insn_fetch(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
