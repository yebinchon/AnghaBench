; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dio/extr_dio.c_dio_scodetophysaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dio/extr_dio.c_dio_scodetophysaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIOII_SCBASE = common dso_local global i32 0, align 4
@DIOII_BASE = common dso_local global i64 0, align 8
@DIOII_DEVSIZE = common dso_local global i32 0, align 4
@DIO_SCMAX = common dso_local global i32 0, align 4
@DIO_BASE = common dso_local global i64 0, align 8
@DIO_DEVSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dio_scodetophysaddr(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @DIOII_SCBASE, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* @DIOII_BASE, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, 132
  %11 = load i32, i32* @DIOII_DEVSIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = add i64 %8, %13
  store i64 %14, i64* %2, align 8
  br label %37

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DIO_SCMAX, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %15
  store i64 0, i64* %2, align 8
  br label %37

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @DIO_SCINHOLE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, i64* %2, align 8
  br label %37

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* @DIO_BASE, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @DIO_DEVSIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add i64 %31, %35
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %30, %27, %22, %7
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i64 @DIO_SCINHOLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
