; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_op_prepare_structs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_op_prepare_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_9__* }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, %struct.TYPE_8__*, %struct.ssb_sprom* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ssb_sprom = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@B43_SPUR_AVOID_AUTO = common dso_local global i32 0, align 4
@B43_SPUR_AVOID_DISABLE = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@B43_BFL2_TXPWRCTRL_EN = common dso_local global i32 0, align 4
@B43_BFL2_5G_PWRGAIN = common dso_local global i32 0, align 4
@B43_BUS_SSB = common dso_local global i64 0, align 8
@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_op_prepare_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_op_prepare_structs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %3, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 1
  %10 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  store %struct.b43_phy_n* %10, %struct.b43_phy_n** %4, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load %struct.ssb_sprom*, %struct.ssb_sprom** %14, align 8
  store %struct.ssb_sprom* %15, %struct.ssb_sprom** %5, align 8
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %17 = call i32 @memset(%struct.b43_phy_n* %16, i32 0, i32 56)
  %18 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %24 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 4
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ true, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %31 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %33 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @B43_SPUR_AVOID_AUTO, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @B43_SPUR_AVOID_DISABLE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %43 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 8
  %44 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %45 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %47 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %49 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %48, i32 0, i32 3
  store i32 2, i32* %49, align 4
  %50 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %51 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %50, i32 0, i32 4
  store i32 3, i32* %51, align 8
  %52 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %53 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %52, i32 0, i32 5
  store i32 2, i32* %53, align 4
  %54 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %55 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 128, i32* %57, align 4
  %58 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %59 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 128, i32* %61, align 4
  %62 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %63 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %62, i32 0, i32 7
  store i32 0, i32* %63, align 8
  %64 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %65 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %64, i32 0, i32 8
  store i32 0, i32* %65, align 4
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 3
  br i1 %70, label %93, label %71

71:                                               ; preds = %40
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %71
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 12
  br i1 %92, label %93, label %98

93:                                               ; preds = %86, %79, %40
  %94 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %95 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %94, i32 0, i32 7
  store i32 1, i32* %95, align 8
  %96 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %97 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %96, i32 0, i32 8
  store i32 1, i32* %97, align 4
  br label %132

98:                                               ; preds = %86, %71
  %99 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %100 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %101, 4
  br i1 %102, label %103, label %131

103:                                              ; preds = %98
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 2
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %111 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @B43_BFL2_TXPWRCTRL_EN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %118 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %117, i32 0, i32 7
  store i32 1, i32* %118, align 8
  br label %130

119:                                              ; preds = %109, %103
  %120 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %121 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @B43_BFL2_5G_PWRGAIN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %128 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %127, i32 0, i32 8
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %119
  br label %130

130:                                              ; preds = %129, %116
  br label %131

131:                                              ; preds = %130, %98
  br label %132

132:                                              ; preds = %131, %93
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %136, 3
  br i1 %137, label %138, label %157

138:                                              ; preds = %132
  %139 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %140 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i32
  %146 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %147 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %146, i32 0, i32 9
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %149 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i32
  %155 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %156 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %138, %132
  %158 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %159 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  ret void
}

declare dso_local i32 @memset(%struct.b43_phy_n*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
