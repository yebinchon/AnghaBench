; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_diag_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@__IXGBE_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"offline diagnostic is not supported when VFs are present\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"register testing starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"eeprom testing starting\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"interrupt testing starting\0A\00", align 1
@IXGBE_FLAG_VMDQ_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Skip MAC loopback diagnostic in VT mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"loopback testing starting\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @ixgbe_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %7, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 4
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @__IXGBE_TESTING, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 2
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %203

26:                                               ; preds = %3
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %71, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %40
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netdev_warn(%struct.net_device* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 1, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 1, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %62 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @__IXGBE_TESTING, align 4
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 2
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  br label %269

70:                                               ; preds = %40
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %34

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74, %26
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %77 = call i32 @e_info(%struct.ixgbe_hw* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @dev_close(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %87, align 8
  %89 = icmp ne i32 (%struct.ixgbe_hw.1*)* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %94, align 8
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %97 = bitcast %struct.ixgbe_hw* %96 to %struct.ixgbe_hw.1*
  %98 = call i32 %95(%struct.ixgbe_hw.1* %97)
  br label %99

99:                                               ; preds = %90, %83
  %100 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = call i64 @ixgbe_link_test(%struct.ixgbe_adapter* %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %107 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %113 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %112)
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %115 = call i32 @e_info(%struct.ixgbe_hw* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = call i64 @ixgbe_reg_test(%struct.ixgbe_adapter* %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %123 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %124 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %111
  %128 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %129 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %128)
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %131 = call i32 @e_info(%struct.ixgbe_hw* %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = call i64 @ixgbe_eeprom_test(%struct.ixgbe_adapter* %132, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %127
  %138 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %139 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %127
  %144 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %145 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %144)
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %147 = call i32 @e_info(%struct.ixgbe_hw* %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %148 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = call i64 @ixgbe_intr_test(%struct.ixgbe_adapter* %148, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %143
  %154 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %155 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %156 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %143
  %160 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %161 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %164 = load i32, i32* @IXGBE_FLAG_VMDQ_ENABLED, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %159
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %170 = call i32 @e_info(%struct.ixgbe_hw* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  store i32 0, i32* %172, align 4
  br label %190

173:                                              ; preds = %159
  %174 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %175 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %174)
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %177 = call i32 @e_info(%struct.ixgbe_hw* %176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %178 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = call i64 @ixgbe_loopback_test(%struct.ixgbe_adapter* %178, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %173
  %184 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %185 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %186 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %183, %173
  br label %190

190:                                              ; preds = %189, %168
  %191 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %192 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %191)
  %193 = load i32, i32* @__IXGBE_TESTING, align 4
  %194 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %195 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %194, i32 0, i32 2
  %196 = call i32 @clear_bit(i32 %193, i32* %195)
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load %struct.net_device*, %struct.net_device** %4, align 8
  %201 = call i32 @dev_open(%struct.net_device* %200)
  br label %202

202:                                              ; preds = %199, %190
  br label %249

203:                                              ; preds = %3
  %204 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %205 = call i32 @e_info(%struct.ixgbe_hw* %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %203
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %212, align 8
  %214 = icmp ne i32 (%struct.ixgbe_hw.1*)* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %217 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %219, align 8
  %221 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %222 = bitcast %struct.ixgbe_hw* %221 to %struct.ixgbe_hw.1*
  %223 = call i32 %220(%struct.ixgbe_hw.1* %222)
  br label %224

224:                                              ; preds = %215, %208, %203
  %225 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = call i64 @ixgbe_link_test(%struct.ixgbe_adapter* %225, i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %232 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %233 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %230, %224
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  store i32 0, i32* %238, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  store i32 0, i32* %240, align 4
  %241 = load i32*, i32** %6, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  store i32 0, i32* %242, align 4
  %243 = load i32*, i32** %6, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  store i32 0, i32* %244, align 4
  %245 = load i32, i32* @__IXGBE_TESTING, align 4
  %246 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %247 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %246, i32 0, i32 2
  %248 = call i32 @clear_bit(i32 %245, i32* %247)
  br label %249

249:                                              ; preds = %236, %202
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %268, label %252

252:                                              ; preds = %249
  %253 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %254 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %256, align 8
  %258 = icmp ne i32 (%struct.ixgbe_hw.0*)* %257, null
  br i1 %258, label %259, label %268

259:                                              ; preds = %252
  %260 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %261 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %263, align 8
  %265 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %266 = bitcast %struct.ixgbe_hw* %265 to %struct.ixgbe_hw.0*
  %267 = call i32 %264(%struct.ixgbe_hw.0* %266)
  br label %268

268:                                              ; preds = %259, %252, %249
  br label %269

269:                                              ; preds = %268, %50
  %270 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @e_info(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i64 @ixgbe_link_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i64 @ixgbe_reg_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i64 @ixgbe_eeprom_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i64 @ixgbe_intr_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i64 @ixgbe_loopback_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i32 @dev_open(%struct.net_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
