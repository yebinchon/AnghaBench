; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_sfx7101_sp_sw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_sfx7101_sp_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_7101_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_sfx7101_sp_sw_reset(%struct.bnx2x* %0, %struct.bnx2x_phy* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %4, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %9 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %10 = load i32, i32* @MDIO_PMA_REG_7101_RESET, align 4
  %11 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %7, %struct.bnx2x_phy* %8, i32 %9, i32 %10, i32* %5)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = call i32 @msleep(i32 50)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %19 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %20 = load i32, i32* @MDIO_PMA_REG_7101_RESET, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 32768
  %23 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %17, %struct.bnx2x_phy* %18, i32 %19, i32 %20, i32 %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %26 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %27 = load i32, i32* @MDIO_PMA_REG_7101_RESET, align 4
  %28 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %24, %struct.bnx2x_phy* %25, i32 %26, i32 %27, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %37

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %12

37:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
