; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_GBIT_ETH = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_OSN = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_10GBIT_ETH = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMSR_ERCAP = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@BMSR_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@LPA_10HALF = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@LPA_100BASE4 = common dso_local global i32 0, align 4
@LPA_LPACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  store %struct.qeth_card* %11, %struct.qeth_card** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %117 [
    i32 144, label %13
    i32 143, label %40
    i32 134, label %56
    i32 133, label %79
    i32 145, label %87
    i32 138, label %89
    i32 141, label %101
    i32 142, label %102
    i32 140, label %103
    i32 136, label %104
    i32 132, label %105
    i32 129, label %110
    i32 131, label %111
    i32 139, label %112
    i32 135, label %113
    i32 130, label %114
    i32 128, label %115
    i32 137, label %116
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @BMCR_FULLDPLX, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QETH_LINK_TYPE_GBIT_ETH, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %13
  %22 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QETH_LINK_TYPE_OSN, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QETH_LINK_TYPE_10GBIT_ETH, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @BMCR_SPEED100, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %28, %21, %13
  br label %118

40:                                               ; preds = %3
  %41 = load i32, i32* @BMSR_ERCAP, align 4
  %42 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BMSR_LSTATUS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BMSR_10HALF, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BMSR_10FULL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BMSR_100HALF, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BMSR_100FULL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @BMSR_100BASE4, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %118

56:                                               ; preds = %3
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %62, %68
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 5
  %78 = and i32 %77, 65535
  store i32 %78, i32* %8, align 4
  br label %118

79:                                               ; preds = %3
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 10
  %86 = and i32 %85, 65535
  store i32 %86, i32* %8, align 4
  br label %118

87:                                               ; preds = %3
  %88 = load i32, i32* @ADVERTISE_ALL, align 4
  store i32 %88, i32* %8, align 4
  br label %118

89:                                               ; preds = %3
  %90 = load i32, i32* @LPA_10HALF, align 4
  %91 = load i32, i32* @LPA_10FULL, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @LPA_100HALF, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @LPA_100FULL, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @LPA_100BASE4, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @LPA_LPACK, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %8, align 4
  br label %118

101:                                              ; preds = %3
  br label %118

102:                                              ; preds = %3
  br label %118

103:                                              ; preds = %3
  br label %118

104:                                              ; preds = %3
  br label %118

105:                                              ; preds = %3
  %106 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %107 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %8, align 4
  br label %118

110:                                              ; preds = %3
  br label %118

111:                                              ; preds = %3
  br label %118

112:                                              ; preds = %3
  br label %118

113:                                              ; preds = %3
  br label %118

114:                                              ; preds = %3
  br label %118

115:                                              ; preds = %3
  br label %118

116:                                              ; preds = %3
  br label %118

117:                                              ; preds = %3
  br label %118

118:                                              ; preds = %117, %116, %115, %114, %113, %112, %111, %110, %105, %104, %103, %102, %101, %89, %87, %79, %56, %40, %39
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
