; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_fpu_emulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_fpu_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i32 }
%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sh_fpu_soft_struct*, %struct.pt_regs*)* @fpu_emulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpu_emulate(i32 %0, %struct.sh_fpu_soft_struct* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sh_fpu_soft_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sh_fpu_soft_struct* %1, %struct.sh_fpu_soft_struct** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 61440
  %10 = icmp eq i32 %9, 61440
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %6, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @id_fnmx(%struct.sh_fpu_soft_struct* %12, %struct.pt_regs* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %6, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @id_sys(%struct.sh_fpu_soft_struct* %17, %struct.pt_regs* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @id_fnmx(%struct.sh_fpu_soft_struct*, %struct.pt_regs*, i32) #1

declare dso_local i32 @id_sys(%struct.sh_fpu_soft_struct*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
