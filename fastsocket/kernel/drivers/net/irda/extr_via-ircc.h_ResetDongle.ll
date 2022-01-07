; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_ResetDongle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_ResetDongle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ResetDongle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResetDongle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @ClkTx(i32 %4, i32 0, i32 0)
  %6 = call i32 @Tdelay(i32 1)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 30
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @ActClk(i32 %11, i32 1)
  %13 = call i32 @Tdelay(i32 1)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ActClk(i32 %14, i32 0)
  %16 = call i32 @Tdelay(i32 1)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @ActClk(i32 %21, i32 0)
  ret void
}

declare dso_local i32 @ClkTx(i32, i32, i32) #1

declare dso_local i32 @Tdelay(i32) #1

declare dso_local i32 @ActClk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
