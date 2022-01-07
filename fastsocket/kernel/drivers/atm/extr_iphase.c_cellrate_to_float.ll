; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_cellrate_to_float.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_cellrate_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_BITS = common dso_local global i32 0, align 4
@M_MASK = common dso_local global i32 0, align 4
@NZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cellrate_to_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cellrate_to_float(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 16777215
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %16, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 9
  %27 = or i32 16384, %26
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 511
  %30 = or i32 %27, %29
  store i32 %30, i32* %4, align 4
  br label %55

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 9
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 9
  %37 = or i32 16384, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 9, %39
  %41 = shl i32 %38, %40
  %42 = and i32 %41, 511
  %43 = or i32 %37, %42
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %45, 9
  %47 = or i32 16384, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 9
  %51 = ashr i32 %48, %50
  %52 = and i32 %51, 511
  %53 = or i32 %47, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %34
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
