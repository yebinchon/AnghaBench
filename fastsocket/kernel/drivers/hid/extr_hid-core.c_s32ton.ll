; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_s32ton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_s32ton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @s32ton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s32ton(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub i32 %8, 1
  %10 = lshr i32 %7, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = sub i32 %20, 1
  %22 = shl i32 1, %21
  br label %28

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %24, 1
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i32 [ %22, %19 ], [ %27, %23 ]
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %13, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %31, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
