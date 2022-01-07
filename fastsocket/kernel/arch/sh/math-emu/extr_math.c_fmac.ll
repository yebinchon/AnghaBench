; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_fmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_fmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i32 }
%struct.pt_regs = type { i32 }

@FP_DECL_EX = common dso_local global i32 0, align 4
@Fr = common dso_local global i32 0, align 4
@Ft = common dso_local global i32 0, align 4
@F0 = common dso_local global i32 0, align 4
@Fm = common dso_local global i32 0, align 4
@Fn = common dso_local global i32 0, align 4
@FR0 = common dso_local global i32 0, align 4
@FRm = common dso_local global i32 0, align 4
@FRn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_fpu_soft_struct*, %struct.pt_regs*, i32, i32)* @fmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmac(%struct.sh_fpu_soft_struct* %0, %struct.pt_regs* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh_fpu_soft_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_fpu_soft_struct* %0, %struct.sh_fpu_soft_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @FP_DECL_EX, align 4
  %10 = load i32, i32* @Fr, align 4
  %11 = call i32 @FP_DECL_S(i32 %10)
  %12 = load i32, i32* @Ft, align 4
  %13 = call i32 @FP_DECL_S(i32 %12)
  %14 = load i32, i32* @F0, align 4
  %15 = call i32 @FP_DECL_S(i32 %14)
  %16 = load i32, i32* @Fm, align 4
  %17 = call i32 @FP_DECL_S(i32 %16)
  %18 = load i32, i32* @Fn, align 4
  %19 = call i32 @FP_DECL_S(i32 %18)
  %20 = load i32, i32* @F0, align 4
  %21 = load i32, i32* @FR0, align 4
  %22 = call i32 @UNPACK_S(i32 %20, i32 %21)
  %23 = load i32, i32* @Fm, align 4
  %24 = load i32, i32* @FRm, align 4
  %25 = call i32 @UNPACK_S(i32 %23, i32 %24)
  %26 = load i32, i32* @Fn, align 4
  %27 = load i32, i32* @FRn, align 4
  %28 = call i32 @UNPACK_S(i32 %26, i32 %27)
  %29 = load i32, i32* @Ft, align 4
  %30 = load i32, i32* @Fm, align 4
  %31 = load i32, i32* @F0, align 4
  %32 = call i32 @FP_MUL_S(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @Fr, align 4
  %34 = load i32, i32* @Fn, align 4
  %35 = load i32, i32* @Ft, align 4
  %36 = call i32 @FP_ADD_S(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @FRn, align 4
  %38 = load i32, i32* @Fr, align 4
  %39 = call i32 @PACK_S(i32 %37, i32 %38)
  ret i32 0
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @UNPACK_S(i32, i32) #1

declare dso_local i32 @FP_MUL_S(i32, i32, i32) #1

declare dso_local i32 @FP_ADD_S(i32, i32, i32) #1

declare dso_local i32 @PACK_S(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
