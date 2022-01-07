; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_9__, i32, %struct.TYPE_7__*, %struct.b43_wl* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.b43_wldev*, i32)* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.b43_wl = type { %struct.b43_wldev* }

@.str = private unnamed_addr constant [20 x i8] c"Bus powerup failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"IEEE 802.11a devices are unsupported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@b43_chip_reset = common dso_local global i32 0, align 4
@B43_BCMA_IOST_2G_PHY = common dso_local global i32 0, align 4
@B43_BCMA_IOST_5G_PHY = common dso_local global i32 0, align 4
@B43_TMSHIGH_HAVE_2GHZ_PHY = common dso_local global i32 0, align 4
@B43_TMSHIGH_HAVE_5GHZ_PHY = common dso_local global i32 0, align 4
@BCMA_IOST = common dso_local global i32 0, align 4
@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@SSB_TMSHIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_wireless_core_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_wireless_core_attach(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_wl*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 3
  %12 = load %struct.b43_wl*, %struct.b43_wl** %11, align 8
  store %struct.b43_wl* %12, %struct.b43_wl** %4, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = call i32 @b43_bus_powerup(%struct.b43_wldev* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %19 = call i32 @b43err(%struct.b43_wl* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %153

20:                                               ; preds = %1
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %26 [
  ]

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @b43_wireless_core_reset(%struct.b43_wldev* %34, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = call i32 @b43_phy_versioning(%struct.b43_wldev* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %158

45:                                               ; preds = %26
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = icmp ne %struct.pci_dev* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 17170
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 17177
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 17188
  br i1 %62, label %63, label %73

63:                                               ; preds = %58, %45
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %70 [
    i32 133, label %68
    i32 129, label %69
    i32 132, label %69
    i32 128, label %69
    i32 131, label %69
    i32 130, label %69
  ]

68:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  br label %72

69:                                               ; preds = %63, %63, %63, %63, %63
  store i32 1, i32* %8, align 4
  br label %72

70:                                               ; preds = %63
  %71 = call i32 @B43_WARN_ON(i32 1)
  br label %72

72:                                               ; preds = %70, %69, %68
  br label %73

73:                                               ; preds = %72, %58, %53, %48
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 133
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %81 = call i32 @b43err(%struct.b43_wl* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %158

84:                                               ; preds = %73
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 128
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 129
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %90, %84
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = call i32 @b43_phy_allocate(%struct.b43_wldev* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %158

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %106 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %110 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @b43_wireless_core_reset(%struct.b43_wldev* %108, i32 %112)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %115 = call i32 @b43_validate_chipaccess(%struct.b43_wldev* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %155

119:                                              ; preds = %103
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @b43_setup_bands(%struct.b43_wldev* %120, i32 %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %155

127:                                              ; preds = %119
  %128 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %129 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %128, i32 0, i32 0
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %129, align 8
  %131 = icmp ne %struct.b43_wldev* %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %134 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %135 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %134, i32 0, i32 0
  store %struct.b43_wldev* %133, %struct.b43_wldev** %135, align 8
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %138 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %137, i32 0, i32 1
  %139 = load i32, i32* @b43_chip_reset, align 4
  %140 = call i32 @INIT_WORK(i32* %138, i32 %139)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %142 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %145, align 8
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %148 = call i32 %146(%struct.b43_wldev* %147, i32 0)
  %149 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %150 = call i32 @b43_device_disable(%struct.b43_wldev* %149, i32 0)
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %152 = call i32 @b43_bus_may_powerdown(%struct.b43_wldev* %151)
  br label %153

153:                                              ; preds = %136, %17
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %2, align 4
  br label %162

155:                                              ; preds = %126, %118
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %157 = call i32 @b43_phy_free(%struct.b43_wldev* %156)
  br label %158

158:                                              ; preds = %155, %102, %79, %44
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %160 = call i32 @b43_bus_may_powerdown(%struct.b43_wldev* %159)
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @b43_bus_powerup(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(%struct.b43_wl*, i8*) #1

declare dso_local i32 @b43_wireless_core_reset(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_versioning(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_allocate(%struct.b43_wldev*) #1

declare dso_local i32 @b43_validate_chipaccess(%struct.b43_wldev*) #1

declare dso_local i32 @b43_setup_bands(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @b43_device_disable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_bus_may_powerdown(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_free(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
