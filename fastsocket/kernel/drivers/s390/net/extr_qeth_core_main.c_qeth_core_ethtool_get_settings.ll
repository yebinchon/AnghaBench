; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_ethtool_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_ethtool_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.ethtool_cmd = type { i32, i32, i8*, i32, i32, i32, i32 }

@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i8* null, align 8
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i8* null, align 8
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_core_ethtool_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  store %struct.qeth_card* %9, %struct.qeth_card** %5, align 8
  %10 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  store i32 132, i32* %6, align 4
  br label %28

23:                                               ; preds = %16
  %24 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i32, i32* @XCVR_INTERNAL, align 4
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @DUPLEX_FULL, align 4
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @AUTONEG_ENABLE, align 4
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %164 [
    i32 131, label %45
    i32 129, label %45
    i32 130, label %78
    i32 128, label %78
    i32 132, label %119
  ]

45:                                               ; preds = %28, %28
  %46 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %47 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SUPPORTED_TP, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %60 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ADVERTISED_TP, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @SPEED_100, align 4
  %73 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @PORT_TP, align 8
  %76 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %77 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %189

78:                                               ; preds = %28, %28
  %79 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %80 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %93 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %97 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @SPEED_1000, align 4
  %114 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %115 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load i8*, i8** @PORT_FIBRE, align 8
  %117 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %118 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  br label %189

119:                                              ; preds = %28
  %120 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %121 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %136 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %140 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %155 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* @SPEED_10000, align 4
  %159 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %160 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load i8*, i8** @PORT_FIBRE, align 8
  %162 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %163 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  br label %189

164:                                              ; preds = %28
  %165 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %166 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @SUPPORTED_TP, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %171 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %175 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @ADVERTISED_TP, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %180 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @SPEED_10, align 4
  %184 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %185 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load i8*, i8** @PORT_TP, align 8
  %187 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %188 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %164, %119, %78, %45
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
