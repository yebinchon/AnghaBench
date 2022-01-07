; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_via686a.c_IN_TO_REG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_via686a.c_IN_TO_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @IN_TO_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IN_TO_REG(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = mul nsw i64 %9, 21024
  %11 = sub nsw i64 %10, 1205000
  %12 = sdiv i64 %11, 250000
  %13 = call i32 @SENSORS_LIMIT(i64 %12, i32 0, i32 255)
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = mul nsw i64 %18, 15737
  %20 = sub nsw i64 %19, 1205000
  %21 = sdiv i64 %20, 250000
  %22 = call i32 @SENSORS_LIMIT(i64 %21, i32 0, i32 255)
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = mul nsw i64 %27, 10108
  %29 = sub nsw i64 %28, 1205000
  %30 = sdiv i64 %29, 250000
  %31 = call i32 @SENSORS_LIMIT(i64 %30, i32 0, i32 255)
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = mul nsw i64 %33, 41714
  %35 = sub nsw i64 %34, 12050000
  %36 = sdiv i64 %35, 2500000
  %37 = call i32 @SENSORS_LIMIT(i64 %36, i32 0, i32 255)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %26, %17, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @SENSORS_LIMIT(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
