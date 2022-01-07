; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_encode_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_encode_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DZ_B50 = common dso_local global i32 0, align 4
@DZ_B75 = common dso_local global i32 0, align 4
@DZ_B110 = common dso_local global i32 0, align 4
@DZ_B134 = common dso_local global i32 0, align 4
@DZ_B150 = common dso_local global i32 0, align 4
@DZ_B300 = common dso_local global i32 0, align 4
@DZ_B600 = common dso_local global i32 0, align 4
@DZ_B1200 = common dso_local global i32 0, align 4
@DZ_B1800 = common dso_local global i32 0, align 4
@DZ_B2000 = common dso_local global i32 0, align 4
@DZ_B2400 = common dso_local global i32 0, align 4
@DZ_B3600 = common dso_local global i32 0, align 4
@DZ_B4800 = common dso_local global i32 0, align 4
@DZ_B7200 = common dso_local global i32 0, align 4
@DZ_B9600 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dz_encode_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dz_encode_baud_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %35 [
    i32 50, label %5
    i32 75, label %7
    i32 110, label %9
    i32 134, label %11
    i32 150, label %13
    i32 300, label %15
    i32 600, label %17
    i32 1200, label %19
    i32 1800, label %21
    i32 2000, label %23
    i32 2400, label %25
    i32 3600, label %27
    i32 4800, label %29
    i32 7200, label %31
    i32 9600, label %33
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @DZ_B50, align 4
  store i32 %6, i32* %2, align 4
  br label %36

7:                                                ; preds = %1
  %8 = load i32, i32* @DZ_B75, align 4
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @DZ_B110, align 4
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* @DZ_B134, align 4
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @DZ_B150, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* @DZ_B300, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load i32, i32* @DZ_B600, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @DZ_B1200, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i32, i32* @DZ_B1800, align 4
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* @DZ_B2000, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load i32, i32* @DZ_B2400, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @DZ_B3600, align 4
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load i32, i32* @DZ_B4800, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @DZ_B7200, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @DZ_B9600, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
