; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_4xx.c_ibm440spe_decode_bas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_4xx.c_ibm440spe_decode_bas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Memory BAS value 0x%08x unsupported !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ibm440spe_decode_bas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibm440spe_decode_bas(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, -2097152
  %7 = shl i32 %6, 2
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 4
  %10 = and i32 %9, 4095
  switch i32 %10, label %62 [
    i32 0, label %11
    i32 4092, label %12
    i32 4088, label %17
    i32 4080, label %22
    i32 4064, label %27
    i32 4032, label %32
    i32 3968, label %37
    i32 3840, label %42
    i32 3584, label %47
    i32 3072, label %52
    i32 2048, label %57
  ]

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 8388608
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 16777216
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %65

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 33554432
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 67108864
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 134217728
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 268435456
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %65

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 536870912
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 1073741824
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 2147483648
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %1
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4294967296
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %65

62:                                               ; preds = %1
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
