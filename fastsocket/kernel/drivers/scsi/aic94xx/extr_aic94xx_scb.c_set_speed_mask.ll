; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_set_speed_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_set_speed_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_phy_desc = type { i32, i32, i32, i32 }

@SAS_SPEED_60_DIS = common dso_local global i32 0, align 4
@SAS_SPEED_30_DIS = common dso_local global i32 0, align 4
@SAS_SPEED_15_DIS = common dso_local global i32 0, align 4
@SATA_SPEED_30_DIS = common dso_local global i32 0, align 4
@SATA_SPEED_15_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.asd_phy_desc*)* @set_speed_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_speed_mask(i32* %0, %struct.asd_phy_desc* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.asd_phy_desc*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.asd_phy_desc* %1, %struct.asd_phy_desc** %4, align 8
  %5 = load i32, i32* @SAS_SPEED_60_DIS, align 4
  %6 = load i32, i32* @SAS_SPEED_30_DIS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SAS_SPEED_15_DIS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SATA_SPEED_30_DIS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SATA_SPEED_15_DIS, align 4
  %13 = or i32 %11, %12
  %14 = load i32*, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %4, align 8
  %16 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 128, label %18
    i32 129, label %25
    i32 130, label %31
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @SAS_SPEED_60_DIS, align 4
  %20 = xor i32 %19, -1
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %2, %18
  br label %25

25:                                               ; preds = %2, %24
  %26 = load i32, i32* @SAS_SPEED_30_DIS, align 4
  %27 = xor i32 %26, -1
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %2, %25
  %32 = load i32, i32* @SAS_SPEED_15_DIS, align 4
  %33 = xor i32 %32, -1
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %4, align 8
  %39 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %51 [
    i32 128, label %41
    i32 129, label %46
    i32 130, label %52
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @SAS_SPEED_30_DIS, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %37, %41
  %47 = load i32, i32* @SAS_SPEED_15_DIS, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %37, %46
  br label %52

52:                                               ; preds = %37, %51
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %4, align 8
  %55 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %63 [
    i32 129, label %57
    i32 130, label %64
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @SATA_SPEED_30_DIS, align 4
  %59 = xor i32 %58, -1
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %53, %57
  br label %64

64:                                               ; preds = %53, %63
  %65 = load i32, i32* @SATA_SPEED_15_DIS, align 4
  %66 = xor i32 %65, -1
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64
  %71 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %4, align 8
  %72 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %79 [
    i32 129, label %74
    i32 130, label %80
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* @SATA_SPEED_15_DIS, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %74
  br label %80

80:                                               ; preds = %70, %79
  br label %81

81:                                               ; preds = %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
