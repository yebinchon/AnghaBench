; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_avmcard.h_b1_save_put_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_avmcard.h_b1_save_put_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@B1_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @b1_save_put_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b1_save_put_byte(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %7 = load i32, i32* @jiffies, align 4
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 2, %8
  %10 = add nsw i32 %7, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @b1_tx_empty(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @jiffies, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @time_before(i32 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i1 [ false, %12 ], [ %20, %16 ]
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %12

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @b1_tx_empty(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @B1_WRITE, align 4
  %32 = load i8, i8* %5, align 1
  %33 = call i32 @b1outp(i32 %30, i32 %31, i8 zeroext %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @b1_tx_empty(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @b1outp(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
