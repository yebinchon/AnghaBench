; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_wait_mdio_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_wait_mdio_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32 }

@MDIO_MAX_AC_TO = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_CTRL_BUSY = common dso_local global i32 0, align 4
@MDIO_CTRL_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_wait_mdio_idle(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MDIO_MAX_AC_TO, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %11 = load i32, i32* @REG_MDIO_CTRL, align 4
  %12 = call i32 @AT_READ_REG(%struct.atl1c_hw* %10, i32 %11, i32* %3)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MDIO_CTRL_BUSY, align 4
  %15 = load i32, i32* @MDIO_CTRL_START, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %25

20:                                               ; preds = %9
  %21 = call i32 @udelay(i32 10)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %5

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MDIO_MAX_AC_TO, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
