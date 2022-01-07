; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTX = common dso_local global i32 0, align 4
@UTX_TX_AVAIL = common dso_local global i32 0, align 4
@UTX_TXDATA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @rs_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_put_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @local_irq_save(i32 %5)
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* @UTX, align 4
  %9 = load i32, i32* @UTX_TX_AVAIL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1000
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i1 [ false, %7 ], [ %14, %12 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = call i32 @udelay(i32 5)
  br label %7

21:                                               ; preds = %15
  %22 = load i8, i8* %2, align 1
  store i8 %22, i8* @UTX_TXDATA, align 1
  %23 = call i32 @udelay(i32 5)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @local_irq_restore(i32 %24)
  ret i32 1
}

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
