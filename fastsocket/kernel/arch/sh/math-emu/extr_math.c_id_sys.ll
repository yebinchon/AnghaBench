; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_id_sys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_id_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i32 }
%struct.pt_regs = type { i32 }

@FPUL = common dso_local global i64 0, align 8
@FPSCR = common dso_local global i64 0, align 8
@Rn = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_fpu_soft_struct*, %struct.pt_regs*, i32)* @id_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id_sys(%struct.sh_fpu_soft_struct* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_fpu_soft_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.sh_fpu_soft_struct* %0, %struct.sh_fpu_soft_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 15
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 16
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i64* @FPUL, i64* @FPSCR
  store i64* %17, i64** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 61695
  switch i32 %19, label %42 [
    i32 90, label %20
    i32 106, label %20
    i32 16474, label %24
    i32 16490, label %24
    i32 16466, label %28
    i32 16482, label %28
    i32 16470, label %35
    i32 16486, label %35
  ]

20:                                               ; preds = %3, %3
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @Rn, align 4
  br label %45

24:                                               ; preds = %3, %3
  %25 = load i32, i32* @Rn, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  br label %45

28:                                               ; preds = %3, %3
  %29 = load i32, i32* @Rn, align 4
  %30 = sub nsw i32 %29, 4
  store i32 %30, i32* @Rn, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @Rn, align 4
  %34 = call i32 @WRITE(i64 %32, i32 %33)
  br label %45

35:                                               ; preds = %3, %3
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @Rn, align 4
  %39 = call i32 @READ(i64 %37, i32 %38)
  %40 = load i32, i32* @Rn, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* @Rn, align 4
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %35, %28, %24, %20
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @WRITE(i64, i32) #1

declare dso_local i32 @READ(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
