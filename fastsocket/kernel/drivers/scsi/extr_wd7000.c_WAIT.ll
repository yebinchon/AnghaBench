; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_WAIT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_WAIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@WAITnexttimeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i32, i32, i32)* @WAIT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @WAIT(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* @WAITnexttimeout, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %36, %4
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i64 @time_before_eq(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @inb(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i16 0, i16* %5, align 2
  br label %38

36:                                               ; preds = %30, %20
  br label %15

37:                                               ; preds = %15
  store i16 1, i16* %5, align 2
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i16, i16* %5, align 2
  ret i16 %39
}

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
