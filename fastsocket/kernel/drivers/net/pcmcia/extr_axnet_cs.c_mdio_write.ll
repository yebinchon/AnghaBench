; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@MDIO_ENB_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 23
  %14 = or i32 1342177280, %13
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 18
  %17 = or i32 %14, %16
  %18 = or i32 %17, 131072
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mdio_sync(i32 %21)
  store i32 31, i32* %10, align 4
  br label %23

23:                                               ; preds = %46, %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @outb_p(i32 %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @outb_p(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  br label %23

49:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* @MDIO_ENB_IN, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @outb_p(i32 %54, i32 %55)
  %57 = load i32, i32* @MDIO_ENB_IN, align 4
  %58 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @outb_p(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  br label %50

65:                                               ; preds = %50
  ret void
}

declare dso_local i32 @mdio_sync(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
