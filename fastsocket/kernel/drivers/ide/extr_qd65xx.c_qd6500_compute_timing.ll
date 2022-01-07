; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_qd65xx.c_qd6500_compute_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_qd65xx.c_qd6500_compute_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ide_vlb_clk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @qd6500_compute_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qd6500_compute_timing(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ide_vlb_clk, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ide_vlb_clk, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 50, %14 ]
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 33
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 1000
  %24 = add nsw i32 %23, 1
  %25 = call i32 @IDE_IN(i32 %24, i32 2, i32 9)
  %26 = sub nsw i32 9, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 1000
  %31 = add nsw i32 %30, 1
  %32 = call i32 @IDE_IN(i32 %31, i32 0, i32 15)
  %33 = sub nsw i32 15, %32
  store i32 %33, i32* %9, align 4
  br label %49

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sdiv i32 %37, 1000
  %39 = add nsw i32 %38, 1
  %40 = call i32 @IDE_IN(i32 %39, i32 1, i32 8)
  %41 = sub nsw i32 8, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 1000
  %46 = add nsw i32 %45, 1
  %47 = call i32 @IDE_IN(i32 %46, i32 3, i32 18)
  %48 = sub nsw i32 18, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %34, %19
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 4
  %52 = or i32 %51, 8
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %52, %53
  ret i32 %54
}

declare dso_local i32 @IDE_IN(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
