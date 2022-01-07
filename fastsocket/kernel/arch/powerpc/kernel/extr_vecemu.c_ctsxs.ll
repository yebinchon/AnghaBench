; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vecemu.c_ctsxs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vecemu.c_ctsxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VSCR_SAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ctsxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctsxs(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 23
  %12 = and i32 %11, 255
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 8388607
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %67

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 127
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %67

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 31
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 23
  %36 = add i32 %33, %35
  %37 = icmp ne i32 %36, -822083584
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @VSCR_SAT, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, -2147483648
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 -2147483648, i32 2147483647
  store i32 %48, i32* %4, align 4
  br label %67

49:                                               ; preds = %29
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, 8388608
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, 7
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 30, %54
  %56 = ashr i32 %53, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, -2147483648
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 0, %61
  br label %65

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %62, %60 ], [ %64, %63 ]
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %43, %28, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
