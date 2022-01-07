; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_check_mmds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_check_mmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MDIO_DEVS_PHYXS = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_DEVS1 = common dso_local global i32 0, align 4
@MDIO_DEVS2 = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to read devices present\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"required MMDs not present: got %x, wanted %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Devices present: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mdio_check_mmds(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MDIO_DEVS_PHYXS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @__ffs(i32 %18)
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  store i32 %21, i32* %7, align 4
  %22 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MDIO_DEVS1, align 4
  %25 = call i32 @efx_mdio_read(%struct.efx_nic* %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MDIO_DEVS2, align 4
  %29 = call i32 @efx_mdio_read(%struct.efx_nic* %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32, %20
  %36 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %37 = load i32, i32* @hw, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %94

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %45, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %56 = load i32, i32* @hw, align 4
  %57 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %94

65:                                               ; preds = %44
  %66 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %67 = load i32, i32* @hw, align 4
  %68 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @netif_vdbg(%struct.efx_nic* %66, i32 %67, i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %88, %65
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @efx_mdio_check_mmd(%struct.efx_nic* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %80, %76
  %89 = load i32, i32* %5, align 4
  %90 = lshr i32 %89, 1
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %73

93:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %85, %54, %35
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @efx_mdio_read(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i64 @efx_mdio_check_mmd(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
