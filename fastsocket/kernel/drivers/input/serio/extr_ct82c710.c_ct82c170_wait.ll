; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_ct82c710.c_ct82c170_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_ct82c710.c_ct82c170_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CT82C710_STATUS = common dso_local global i32 0, align 4
@CT82C710_RX_FULL = common dso_local global i32 0, align 4
@CT82C710_TX_IDLE = common dso_local global i32 0, align 4
@CT82C710_DEV_IDLE = common dso_local global i32 0, align 4
@CT82C710_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ct82c170_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct82c170_wait() #0 {
  %1 = alloca i32, align 4
  store i32 60000, i32* %1, align 4
  br label %2

2:                                                ; preds = %29, %0
  %3 = load i32, i32* @CT82C710_STATUS, align 4
  %4 = call i32 @inb(i32 %3)
  %5 = load i32, i32* @CT82C710_RX_FULL, align 4
  %6 = load i32, i32* @CT82C710_TX_IDLE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CT82C710_DEV_IDLE, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %4, %9
  %11 = load i32, i32* @CT82C710_DEV_IDLE, align 4
  %12 = load i32, i32* @CT82C710_TX_IDLE, align 4
  %13 = or i32 %11, %12
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i1 [ false, %2 ], [ %17, %15 ]
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = load i32, i32* @CT82C710_STATUS, align 4
  %22 = call i32 @inb_p(i32 %21)
  %23 = load i32, i32* @CT82C710_RX_FULL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @CT82C710_DATA, align 4
  %28 = call i32 @inb_p(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = call i32 @udelay(i32 1)
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %1, align 4
  br label %2

33:                                               ; preds = %18
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
