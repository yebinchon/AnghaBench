; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_unaligned_32.c_compute_effective_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_unaligned_32.c_compute_effective_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*, i32)* @compute_effective_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_effective_address(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = lshr i32 %9, 14
  %11 = and i32 %10, 31
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 31
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = lshr i32 %14, 25
  %16 = and i32 %15, 31
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 8192
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @maybe_flush_windows(i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = call i64 @fetch_reg(i32 %24, %struct.pt_regs* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @sign_extend_imm13(i32 %27)
  %29 = add i64 %26, %28
  store i64 %29, i64* %3, align 8
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @maybe_flush_windows(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %37 = call i64 @fetch_reg(i32 %35, %struct.pt_regs* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %40 = call i64 @fetch_reg(i32 %38, %struct.pt_regs* %39)
  %41 = add i64 %37, %40
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %30, %20
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @maybe_flush_windows(i32, i32, i32) #1

declare dso_local i64 @fetch_reg(i32, %struct.pt_regs*) #1

declare dso_local i64 @sign_extend_imm13(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
