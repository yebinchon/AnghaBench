; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i32, i32, i32, i64 }
%struct.atl1c_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@BMCR_RESET = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error get phy ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Wrong Media type %d\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_phy_init(%struct.atl1c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  %8 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %9 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.atl1c_adapter*
  store %struct.atl1c_adapter* %11, %struct.atl1c_adapter** %4, align 8
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @BMCR_RESET, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %17 = load i32, i32* @MII_PHYSID1, align 4
  %18 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %19 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %18, i32 0, i32 3
  %20 = call i64 @atl1c_read_phy_reg(%struct.atl1c_hw* %16, i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %24 = load i32, i32* @MII_PHYSID2, align 4
  %25 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %26 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %25, i32 0, i32 2
  %27 = call i64 @atl1c_read_phy_reg(%struct.atl1c_hw* %23, i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %97

33:                                               ; preds = %22
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %35 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %73 [
    i32 128, label %37
    i32 132, label %58
    i32 131, label %64
    i32 130, label %68
    i32 129, label %72
  ]

37:                                               ; preds = %33
  %38 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %39 = call i32 @atl1c_phy_setup_adv(%struct.atl1c_hw* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %44 = call i32 @netif_msg_link(%struct.atl1c_adapter* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %97

52:                                               ; preds = %37
  %53 = load i32, i32* @BMCR_ANENABLE, align 4
  %54 = load i32, i32* @BMCR_ANRESTART, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %85

58:                                               ; preds = %33
  %59 = load i32, i32* @BMCR_SPEED100, align 4
  %60 = load i32, i32* @BMCR_FULLDPLX, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %85

64:                                               ; preds = %33
  %65 = load i32, i32* @BMCR_SPEED100, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %85

68:                                               ; preds = %33
  %69 = load i32, i32* @BMCR_FULLDPLX, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %85

72:                                               ; preds = %33
  br label %85

73:                                               ; preds = %33
  %74 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %75 = call i32 @netif_msg_link(%struct.atl1c_adapter* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %81 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %77, %73
  store i32 -1, i32* %2, align 4
  br label %97

85:                                               ; preds = %72, %68, %64, %58, %52
  %86 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %87 = load i32, i32* @MII_BMCR, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @atl1c_write_phy_reg(%struct.atl1c_hw* %86, i32 %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %96 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %92, %84, %50, %29
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @atl1c_phy_setup_adv(%struct.atl1c_hw*) #1

declare dso_local i32 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_write_phy_reg(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
