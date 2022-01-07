; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cerr-sb1.c_dc_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_cerr-sb1.c_dc_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mask_72_64 = common dso_local global i32* null, align 8
@parity = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dc_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_ecc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 7, i32* %6, align 4
  br label %7

7:                                                ; preds = %85, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %88

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32*, i32** @mask_72_64, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %13, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 32
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** @parity, align 8
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 24
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @parity, align 8
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %27, %34
  %36 = load i32*, i32** @parity, align 8
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %35, %42
  %44 = load i32*, i32** @parity, align 8
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 255
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %43, %49
  %51 = load i32, i32* %5, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %3, align 4
  store i32 %53, i32* %4, align 4
  %54 = load i32*, i32** @parity, align 8
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %55, 24
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @parity, align 8
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %59, %66
  %68 = load i32*, i32** @parity, align 8
  %69 = load i32, i32* %4, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %67, %74
  %76 = load i32*, i32** @parity, align 8
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 255
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %75, %81
  %83 = load i32, i32* %5, align 4
  %84 = xor i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %10
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %6, align 4
  br label %7

88:                                               ; preds = %7
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
