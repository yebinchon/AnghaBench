; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_IN_REL_TO_REG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_LM93_IN_REL_TO_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @LM93_IN_REL_TO_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LM93_IN_REL_TO_REG(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = mul nsw i32 %9, 1000
  %11 = load i32, i32* %5, align 4
  %12 = mul i32 %11, 10000
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @SENSORS_LIMIT(i64 %18, i32 12500, i32 200000)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sdiv i64 %20, 12500
  %22 = sub nsw i64 %21, 1
  %23 = shl i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @SENSORS_LIMIT(i64 %26, i32 -400000, i32 -25000)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sdiv i64 %28, -25000
  %30 = sub nsw i64 %29, 1
  %31 = shl i64 %30, 0
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
