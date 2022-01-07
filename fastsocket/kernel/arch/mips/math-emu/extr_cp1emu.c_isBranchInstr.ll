; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_cp1emu.c_isBranchInstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_cp1emu.c_isBranchInstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bc_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @isBranchInstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isBranchInstr(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @MIPSInst_OPCODE(i32 %5)
  switch i32 %6, label %28 [
    i32 128, label %7
    i32 154, label %13
    i32 133, label %19
    i32 132, label %19
    i32 130, label %19
    i32 153, label %19
    i32 139, label %19
    i32 145, label %19
    i32 147, label %19
    i32 152, label %19
    i32 138, label %19
    i32 144, label %19
    i32 146, label %19
    i32 137, label %20
    i32 136, label %20
    i32 134, label %20
    i32 135, label %20
  ]

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MIPSInst_FUNC(i32 %9)
  switch i32 %10, label %12 [
    i32 131, label %11
    i32 129, label %11
  ]

11:                                               ; preds = %7, %7
  store i32 1, i32* %2, align 4
  br label %29

12:                                               ; preds = %7
  br label %28

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MIPSInst_RT(i32 %15)
  switch i32 %16, label %18 [
    i32 143, label %17
    i32 151, label %17
    i32 140, label %17
    i32 148, label %17
    i32 142, label %17
    i32 150, label %17
    i32 141, label %17
    i32 149, label %17
  ]

17:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  store i32 1, i32* %2, align 4
  br label %29

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %29

20:                                               ; preds = %1, %1, %1, %1
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MIPSInst_RS(i32 %22)
  %24 = load i32, i32* @bc_op, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %29

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %1, %27, %18, %12
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26, %19, %17, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @MIPSInst_OPCODE(i32) #1

declare dso_local i32 @MIPSInst_FUNC(i32) #1

declare dso_local i32 @MIPSInst_RT(i32) #1

declare dso_local i32 @MIPSInst_RS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
