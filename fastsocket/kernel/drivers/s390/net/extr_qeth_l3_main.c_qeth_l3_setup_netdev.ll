; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_14__*, i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, %struct.qeth_card*, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64* }

@QETH_CARD_TYPE_OSD = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@QETH_LINK_TYPE_LANE_TR = common dso_local global i64 0, align 8
@QETH_LINK_TYPE_HSTR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@qeth_l3_netdev_ops = common dso_local global i32 0, align 4
@qeth_l3_osa_netdev_ops = common dso_local global i32 0, align 4
@UNIQUE_ID_NOT_BY_CARD = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"hsi%d\00", align 1
@ether_setup = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@QETH_TX_TIMEOUT = common dso_local global i32 0, align 4
@qeth_l3_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@qeth_l3_poll = common dso_local global i32 0, align 4
@QETH_NAPI_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_setup_netdev(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QETH_CARD_TYPE_OSD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %95

17:                                               ; preds = %10, %1
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QETH_LINK_TYPE_LANE_TR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QETH_LINK_TYPE_HSTR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24, %17
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %219

39:                                               ; preds = %31
  %40 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 8
  store i32* @qeth_l3_netdev_ops, i32** %43, align 8
  br label %94

44:                                               ; preds = %24
  %45 = call %struct.TYPE_14__* @alloc_etherdev(i32 0)
  %46 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %47, align 8
  %48 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %219

55:                                               ; preds = %44
  %56 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 8
  store i32* @qeth_l3_osa_netdev_ops, i32** %59, align 8
  %60 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %61 = call i32 @qeth_l3_get_unique_id(%struct.qeth_card* %60)
  %62 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @UNIQUE_ID_NOT_BY_CARD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %55
  %70 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %71 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 65535
  %75 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  br label %79

79:                                               ; preds = %69, %55
  %80 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %81 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @NETIF_F_GRO, align 4
  %87 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %88 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %85, %79
  br label %94

94:                                               ; preds = %93, %39
  br label %151

95:                                               ; preds = %10
  %96 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %97 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %147

102:                                              ; preds = %95
  %103 = load i32, i32* @ether_setup, align 4
  %104 = call %struct.TYPE_14__* @alloc_netdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %106 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %105, i32 0, i32 0
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %106, align 8
  %107 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %108 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %219

114:                                              ; preds = %102
  %115 = load i32, i32* @IFF_NOARP, align 4
  %116 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %117 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %115
  store i32 %121, i32* %119, align 8
  %122 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %123 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %122, i32 0, i32 0
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 8
  store i32* @qeth_l3_netdev_ops, i32** %125, align 8
  %126 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %127 = call i32 @qeth_l3_iqd_read_initial_mac(%struct.qeth_card* %126)
  %128 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %129 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %114
  %136 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %137 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %136, i32 0, i32 0
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %142 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = call i32 @memcpy(i32 %140, i64* %144, i32 9)
  br label %146

146:                                              ; preds = %135, %114
  br label %150

147:                                              ; preds = %95
  %148 = load i32, i32* @ENODEV, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %219

150:                                              ; preds = %146
  br label %151

151:                                              ; preds = %150, %94
  %152 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %153 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %154 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 6
  store %struct.qeth_card* %152, %struct.qeth_card** %156, align 8
  %157 = load i32, i32* @QETH_TX_TIMEOUT, align 4
  %158 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %159 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  store i32 %157, i32* %161, align 4
  %162 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %163 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %167 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %166, i32 0, i32 0
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 4
  store i32 %165, i32* %169, align 8
  %170 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %171 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %170, i32 0, i32 0
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = call i32 @SET_ETHTOOL_OPS(%struct.TYPE_14__* %172, i32* @qeth_l3_ethtool_ops)
  %174 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %175 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %180 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %179, i32 0, i32 0
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %178
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %188 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %187, i32 0, i32 0
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, %186
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @PAGE_SIZE, align 4
  %194 = mul nsw i32 15, %193
  %195 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %196 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  store i32 %194, i32* %198, align 8
  %199 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %200 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %199, i32 0, i32 0
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %203 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %202, i32 0, i32 2
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = call i32 @SET_NETDEV_DEV(%struct.TYPE_14__* %201, i32* %205)
  %207 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %208 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %207, i32 0, i32 0
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %211 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %210, i32 0, i32 1
  %212 = load i32, i32* @qeth_l3_poll, align 4
  %213 = load i32, i32* @QETH_NAPI_WEIGHT, align 4
  %214 = call i32 @netif_napi_add(%struct.TYPE_14__* %209, i32* %211, i32 %212, i32 %213)
  %215 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %216 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %215, i32 0, i32 0
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = call i32 @register_netdev(%struct.TYPE_14__* %217)
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %151, %147, %111, %52, %36
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_14__* @alloc_etherdev(i32) #1

declare dso_local i32 @qeth_l3_get_unique_id(%struct.qeth_card*) #1

declare dso_local %struct.TYPE_14__* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @qeth_l3_iqd_read_initial_mac(%struct.qeth_card*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @netif_napi_add(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
