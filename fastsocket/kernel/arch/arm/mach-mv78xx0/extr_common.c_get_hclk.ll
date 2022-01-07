; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mv78xx0/extr_common.c_get_hclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mv78xx0/extr_common.c_get_hclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAMPLE_AT_RESET_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unknown HCLK PLL setting: %.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_hclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hclk() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SAMPLE_AT_RESET_LOW, align 4
  %3 = call i32 @readl(i32 %2)
  %4 = ashr i32 %3, 5
  %5 = and i32 %4, 7
  switch i32 %5, label %11 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
  ]

6:                                                ; preds = %0
  store i32 166666667, i32* %1, align 4
  br label %15

7:                                                ; preds = %0
  store i32 200000000, i32* %1, align 4
  br label %15

8:                                                ; preds = %0
  store i32 266666667, i32* %1, align 4
  br label %15

9:                                                ; preds = %0
  store i32 333333333, i32* %1, align 4
  br label %15

10:                                               ; preds = %0
  store i32 400000000, i32* %1, align 4
  br label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @SAMPLE_AT_RESET_LOW, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %10, %9, %8, %7, %6
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
