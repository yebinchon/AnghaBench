; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_get_cur_bus_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_get_cur_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller* }
%struct.controller = type { i32 }

@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@SEC_BUS_CONFIG = common dso_local global i32 0, align 4
@PROG_INTERFACE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCI_SPEED_33MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_ECC = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_ECC = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_ECC = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_266 = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX_533 = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX_533 = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX_533 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Current bus speed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*, i32*)* @hpc_get_cur_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpc_get_cur_bus_speed(%struct.slot* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slot*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.controller*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.slot*, %struct.slot** %4, align 8
  %13 = getelementptr inbounds %struct.slot, %struct.slot* %12, i32 0, i32 0
  %14 = load %struct.controller*, %struct.controller** %13, align 8
  store %struct.controller* %14, %struct.controller** %7, align 8
  %15 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.controller*, %struct.controller** %7, align 8
  %17 = load i32, i32* @SEC_BUS_CONFIG, align 4
  %18 = call i32 @shpc_readw(%struct.controller* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.controller*, %struct.controller** %7, align 8
  %20 = load i32, i32* @PROG_INTERFACE, align 4
  %21 = call i32 @shpc_readb(%struct.controller* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 15
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 7
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %96

42:                                               ; preds = %34, %30
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %86 [
    i32 0, label %44
    i32 1, label %47
    i32 2, label %50
    i32 3, label %53
    i32 4, label %56
    i32 5, label %59
    i32 6, label %62
    i32 7, label %65
    i32 8, label %68
    i32 9, label %71
    i32 10, label %74
    i32 11, label %77
    i32 12, label %80
    i32 13, label %83
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @PCI_SPEED_33MHz, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %91

47:                                               ; preds = %42
  %48 = load i32, i32* @PCI_SPEED_66MHz, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %91

50:                                               ; preds = %42
  %51 = load i32, i32* @PCI_SPEED_66MHz_PCIX, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %91

53:                                               ; preds = %42
  %54 = load i32, i32* @PCI_SPEED_100MHz_PCIX, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %91

56:                                               ; preds = %42
  %57 = load i32, i32* @PCI_SPEED_133MHz_PCIX, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %91

59:                                               ; preds = %42
  %60 = load i32, i32* @PCI_SPEED_66MHz_PCIX_ECC, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %91

62:                                               ; preds = %42
  %63 = load i32, i32* @PCI_SPEED_100MHz_PCIX_ECC, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  br label %91

65:                                               ; preds = %42
  %66 = load i32, i32* @PCI_SPEED_133MHz_PCIX_ECC, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  br label %91

68:                                               ; preds = %42
  %69 = load i32, i32* @PCI_SPEED_66MHz_PCIX_266, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %91

71:                                               ; preds = %42
  %72 = load i32, i32* @PCI_SPEED_100MHz_PCIX_266, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %91

74:                                               ; preds = %42
  %75 = load i32, i32* @PCI_SPEED_133MHz_PCIX_266, align 4
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  br label %91

77:                                               ; preds = %42
  %78 = load i32, i32* @PCI_SPEED_66MHz_PCIX_533, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  br label %91

80:                                               ; preds = %42
  %81 = load i32, i32* @PCI_SPEED_100MHz_PCIX_533, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  br label %91

83:                                               ; preds = %42
  %84 = load i32, i32* @PCI_SPEED_133MHz_PCIX_533, align 4
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  br label %91

86:                                               ; preds = %42
  %87 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44
  %92 = load %struct.controller*, %struct.controller** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ctrl_dbg(%struct.controller* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %37
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @shpc_readw(%struct.controller*, i32) #1

declare dso_local i32 @shpc_readb(%struct.controller*, i32) #1

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
