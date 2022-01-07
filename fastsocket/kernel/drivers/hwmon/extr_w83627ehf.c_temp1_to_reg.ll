; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_temp1_to_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_temp1_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @temp1_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp1_to_reg(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp sle i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %13, 1000
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %27, 500
  %29 = sdiv i64 %28, 1000
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 500
  %34 = sdiv i64 %33, 1000
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %26, %20, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
