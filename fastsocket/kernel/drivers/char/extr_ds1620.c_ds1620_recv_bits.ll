; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ds1620.c_ds1620_recv_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ds1620.c_ds1620_recv_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ds1620_recv_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1620_recv_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %6 = call i32 @netwinder_ds1620_set_data(i32 0)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = call i32 @netwinder_ds1620_set_clk(i32 0)
  %13 = call i32 @udelay(i32 1)
  %14 = call i64 (...) @netwinder_ds1620_get_data()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = call i32 @netwinder_ds1620_set_clk(i32 1)
  %24 = call i32 @udelay(i32 1)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @netwinder_ds1620_set_data(i32) #1

declare dso_local i32 @netwinder_ds1620_set_clk(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @netwinder_ds1620_get_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
