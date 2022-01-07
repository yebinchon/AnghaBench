; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_burst_convert_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_burst_convert_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @burst_convert_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @burst_convert_arg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ugt i32 %6, 64000
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 64000, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %12 [
    i32 129, label %11
    i32 130, label %16
    i32 128, label %19
  ]

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %9, %11
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, 500
  %15 = udiv i32 %14, 1000
  store i32 %15, i32* %5, align 4
  br label %24

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = udiv i32 %17, 1000
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %20, 1
  %22 = udiv i32 %21, 1000
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %16, %12
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 %25, 1000
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
