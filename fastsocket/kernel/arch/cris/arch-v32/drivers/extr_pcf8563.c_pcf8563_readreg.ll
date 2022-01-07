; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_pcf8563.c_pcf8563_readreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_pcf8563.c_pcf8563_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @pcf8563_readreg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call zeroext i8 @rtc_read(i32 %4)
  store i8 %5, i8* %3, align 1
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %42 [
    i32 130, label %7
    i32 132, label %7
    i32 133, label %12
    i32 134, label %12
    i32 128, label %17
    i32 131, label %22
    i32 136, label %27
    i32 135, label %32
    i32 137, label %37
    i32 129, label %37
  ]

7:                                                ; preds = %1, %1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 127
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %3, align 1
  br label %42

12:                                               ; preds = %1, %1
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 63
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1
  br label %42

17:                                               ; preds = %1
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 7
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %3, align 1
  br label %42

22:                                               ; preds = %1
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 31
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %3, align 1
  br label %42

27:                                               ; preds = %1
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 168
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1
  br label %42

32:                                               ; preds = %1
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 31
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  br label %42

37:                                               ; preds = %1, %1
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 131
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %3, align 1
  br label %42

42:                                               ; preds = %1, %37, %32, %27, %22, %17, %12, %7
  %43 = load i8, i8* %3, align 1
  ret i8 %43
}

declare dso_local zeroext i8 @rtc_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
