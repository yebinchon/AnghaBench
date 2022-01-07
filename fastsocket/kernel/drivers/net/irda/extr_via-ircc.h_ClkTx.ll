; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_ClkTx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_ClkTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Clk_bit = common dso_local global i32 0, align 4
@Tx_bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ClkTx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClkTx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ReadReg(i32 %8, i32 52)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @Clk_bit, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @Clk_bit, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @WriteReg(i32 %26, i32 52, i32 %27)
  %29 = call i32 @Sdelay(i32 1)
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @Tx_bit, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @Tx_bit, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @WriteReg(i32 %46, i32 52, i32 %47)
  ret void
}

declare dso_local i32 @ReadReg(i32, i32) #1

declare dso_local i32 @WriteReg(i32, i32, i32) #1

declare dso_local i32 @Sdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
