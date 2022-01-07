; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_Wr_Indx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_Wr_Indx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @Wr_Indx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wr_Indx(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ClkTx(i32 %11, i32 0, i32 0)
  %13 = call i32 @udelay(i32 2)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ActClk(i32 %14, i32 1)
  %16 = call i32 @udelay(i32 1)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 1
  %20 = or i32 %17, %19
  %21 = or i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @Wr_Byte(i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @Wr_Byte(i32 %25, i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %38, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ClkTx(i32 %32, i32 0, i32 0)
  %34 = call i32 @Tdelay(i32 2)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ActClk(i32 %35, i32 1)
  %37 = call i32 @Tdelay(i32 1)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ActClk(i32 %42, i32 0)
  ret void
}

declare dso_local i32 @ClkTx(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ActClk(i32, i32) #1

declare dso_local i32 @Wr_Byte(i32, i32) #1

declare dso_local i32 @Tdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
