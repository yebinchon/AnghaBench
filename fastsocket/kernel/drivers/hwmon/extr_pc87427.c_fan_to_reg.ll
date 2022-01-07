; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87427.c_fan_to_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87427.c_fan_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @fan_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_to_reg(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %4, 83
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 65535, i32* %2, align 4
  br label %19

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp uge i64 %8, 1350000
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 4, i32* %2, align 4
  br label %19

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = udiv i64 %12, 2
  %14 = add i64 1350000, %13
  %15 = load i64, i64* %3, align 8
  %16 = udiv i64 %14, %15
  %17 = shl i64 %16, 2
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %10, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
