; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_ctrl_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_rs64.c_ctrl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"ctrl_write %d %x\0A\00", align 1
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@SPRN_MMCR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ctrl_write mmcr0 %lx mmcr1 %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ctrl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctrl_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %36 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %18
    i32 3, label %21
    i32 4, label %24
    i32 5, label %27
    i32 6, label %30
    i32 7, label %33
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @SPRN_MMCR0, align 4
  %14 = call i32 @mfspr(i32 %13)
  store i32 %14, i32* %5, align 4
  store i64 6, i64* %6, align 8
  store i64 127, i64* %7, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @SPRN_MMCR0, align 4
  %17 = call i32 @mfspr(i32 %16)
  store i32 %17, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 63, i64* %7, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* @SPRN_MMCR1, align 4
  %20 = call i32 @mfspr(i32 %19)
  store i32 %20, i32* %5, align 4
  store i64 27, i64* %6, align 8
  store i64 31, i64* %7, align 8
  br label %36

21:                                               ; preds = %2
  %22 = load i32, i32* @SPRN_MMCR1, align 4
  %23 = call i32 @mfspr(i32 %22)
  store i32 %23, i32* %5, align 4
  store i64 22, i64* %6, align 8
  store i64 31, i64* %7, align 8
  br label %36

24:                                               ; preds = %2
  %25 = load i32, i32* @SPRN_MMCR1, align 4
  %26 = call i32 @mfspr(i32 %25)
  store i32 %26, i32* %5, align 4
  store i64 17, i64* %6, align 8
  store i64 31, i64* %7, align 8
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @SPRN_MMCR1, align 4
  %29 = call i32 @mfspr(i32 %28)
  store i32 %29, i32* %5, align 4
  store i64 12, i64* %6, align 8
  store i64 31, i64* %7, align 8
  br label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @SPRN_MMCR1, align 4
  %32 = call i32 @mfspr(i32 %31)
  store i32 %32, i32* %5, align 4
  store i64 7, i64* %6, align 8
  store i64 31, i64* %7, align 8
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @SPRN_MMCR1, align 4
  %35 = call i32 @mfspr(i32 %34)
  store i32 %35, i32* %5, align 4
  store i64 3, i64* %6, align 8
  store i64 15, i64* %7, align 8
  br label %36

36:                                               ; preds = %2, %33, %30, %27, %24, %21, %18, %15, %12
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = shl i64 %39, %40
  %42 = xor i64 %41, -1
  %43 = and i64 %38, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %45, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  switch i32 %51, label %56 [
    i32 0, label %52
    i32 1, label %52
  ]

52:                                               ; preds = %36, %36
  %53 = load i32, i32* @SPRN_MMCR0, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mtspr(i32 %53, i32 %54)
  br label %60

56:                                               ; preds = %36
  %57 = load i32, i32* @SPRN_MMCR1, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @mtspr(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @SPRN_MMCR0, align 4
  %62 = call i32 @mfspr(i32 %61)
  %63 = load i32, i32* @SPRN_MMCR1, align 4
  %64 = call i32 @mfspr(i32 %63)
  %65 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  ret void
}

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
