; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_ddr3_cs_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_ddr3_cs_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ddr3_cs_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddr3_cs_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %2
  store i32 -1, i32* %6, align 4
  br label %39

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = icmp ule i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %5, align 4
  br label %38

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 7, i32* %5, align 4
  br label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = lshr i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  %35 = lshr i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %19
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = shl i32 1, %47
  %49 = mul nsw i32 128, %48
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
