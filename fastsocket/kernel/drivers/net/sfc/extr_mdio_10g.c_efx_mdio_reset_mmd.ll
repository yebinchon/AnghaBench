; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_reset_mmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_reset_mmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mdio_reset_mmd(%struct.efx_nic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = mul nsw i32 %10, %11
  %13 = icmp sge i32 %12, 5000
  %14 = zext i1 %13 to i32
  %15 = call i32 @EFX_BUG_ON_PARANOID(i32 %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MDIO_CTRL1, align 4
  %19 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %20 = call i32 @efx_mdio_write(%struct.efx_nic* %16, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %38, %4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @msleep(i32 %22)
  %24 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MDIO_CTRL1, align 4
  %27 = call i32 @efx_mdio_read(%struct.efx_nic* %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  br i1 %39, label %21, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  ret i32 %49
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @efx_mdio_write(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
