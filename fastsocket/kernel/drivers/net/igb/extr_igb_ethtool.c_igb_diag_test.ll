; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_diag_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.igb_adapter = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@__IGB_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @igb_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.igb_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @__IGB_TESTING, align 4
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %160

25:                                               ; preds = %3
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %47 = call i32 @igb_power_up_link(%struct.igb_adapter* %46)
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = call i64 @igb_link_test(%struct.igb_adapter* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %25
  %54 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %55 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %25
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @dev_close(%struct.net_device* %63)
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %67 = call i32 @igb_reset(%struct.igb_adapter* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i64 @igb_reg_test(%struct.igb_adapter* %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %76 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %82 = call i32 @igb_reset(%struct.igb_adapter* %81)
  %83 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = call i64 @igb_eeprom_test(%struct.igb_adapter* %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %90 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %96 = call i32 @igb_reset(%struct.igb_adapter* %95)
  %97 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = call i64 @igb_intr_test(%struct.igb_adapter* %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %104 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %94
  %109 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %110 = call i32 @igb_reset(%struct.igb_adapter* %109)
  %111 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %112 = call i32 @igb_power_up_link(%struct.igb_adapter* %111)
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = call i64 @igb_loopback_test(%struct.igb_adapter* %113, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %108
  %119 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %120 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %108
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %127 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %132 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i8* %130, i8** %134, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %137 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i8* %135, i8** %139, align 8
  %140 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %141 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %145 = call i32 @igb_reset(%struct.igb_adapter* %144)
  %146 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %147 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load i32, i32* @__IGB_TESTING, align 4
  %151 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %152 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %151, i32 0, i32 0
  %153 = call i32 @clear_bit(i32 %150, i32* %152)
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %124
  %157 = load %struct.net_device*, %struct.net_device** %4, align 8
  %158 = call i32 @dev_open(%struct.net_device* %157)
  br label %159

159:                                              ; preds = %156, %124
  br label %196

160:                                              ; preds = %3
  %161 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %162 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = call i32 @dev_info(i32* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %160
  %169 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  %172 = call i64 @igb_link_test(%struct.igb_adapter* %169, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %176 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %177 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %183

180:                                              ; preds = %168, %160
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %174
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 0, i32* %185, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 0, i32* %187, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  store i32 0, i32* %189, align 4
  %190 = load i32*, i32** %6, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  store i32 0, i32* %191, align 4
  %192 = load i32, i32* @__IGB_TESTING, align 4
  %193 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %194 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %193, i32 0, i32 0
  %195 = call i32 @clear_bit(i32 %192, i32* %194)
  br label %196

196:                                              ; preds = %183, %159
  %197 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @igb_power_up_link(%struct.igb_adapter*) #1

declare dso_local i64 @igb_link_test(%struct.igb_adapter*, i32*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

declare dso_local i64 @igb_reg_test(%struct.igb_adapter*, i32*) #1

declare dso_local i64 @igb_eeprom_test(%struct.igb_adapter*, i32*) #1

declare dso_local i64 @igb_intr_test(%struct.igb_adapter*, i32*) #1

declare dso_local i64 @igb_loopback_test(%struct.igb_adapter*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_open(%struct.net_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
