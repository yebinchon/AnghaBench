; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_diag_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@__E1000_TESTING = common dso_local global i32 0, align 4
@FLAG_HAS_AMT = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @e1000_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.e1000_adapter* %13, %struct.e1000_adapter** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @__E1000_TESTING, align 4
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %3
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FLAG_HAS_AMT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = call i32 @e1000e_get_hw_control(%struct.e1000_adapter* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %34 = call i32 @e1000e_power_up_phy(%struct.e1000_adapter* %33)
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %40 = call i32 @e1000e_reset(%struct.e1000_adapter* %39)
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %32, %3
  %46 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %177

51:                                               ; preds = %45
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %9, align 8
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %10, align 8
  %67 = call i32 @e_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @dev_close(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %51
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i64 @e1000_reg_test(%struct.e1000_adapter* %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %81 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %87 = call i32 @e1000e_reset(%struct.e1000_adapter* %86)
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = call i64 @e1000_eeprom_test(%struct.e1000_adapter* %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %95 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %85
  %100 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %101 = call i32 @e1000e_reset(%struct.e1000_adapter* %100)
  %102 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = call i64 @e1000_intr_test(%struct.e1000_adapter* %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %109 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %99
  %114 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %115 = call i32 @e1000e_reset(%struct.e1000_adapter* %114)
  %116 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = call i64 @e1000_loopback_test(%struct.e1000_adapter* %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %123 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %124 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %113
  %128 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %129 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %133 = call i32 @e1000e_reset(%struct.e1000_adapter* %132)
  %134 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %135 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = call i64 @e1000_link_test(%struct.e1000_adapter* %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %127
  %144 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %145 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %146 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %127
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %152 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %157 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i8* %155, i8** %159, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %162 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i8* %160, i8** %164, align 8
  %165 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %166 = call i32 @e1000e_reset(%struct.e1000_adapter* %165)
  %167 = load i32, i32* @__E1000_TESTING, align 4
  %168 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %169 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %168, i32 0, i32 1
  %170 = call i32 @clear_bit(i32 %167, i32* %169)
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %149
  %174 = load %struct.net_device*, %struct.net_device** %4, align 8
  %175 = call i32 @dev_open(%struct.net_device* %174)
  br label %176

176:                                              ; preds = %173, %149
  br label %203

177:                                              ; preds = %45
  %178 = call i32 @e_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i32*, i32** %6, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 0, i32* %180, align 4
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  store i32 0, i32* %182, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  store i32 0, i32* %184, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  store i32 0, i32* %186, align 4
  %187 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 4
  %190 = call i64 @e1000_link_test(%struct.e1000_adapter* %187, i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %177
  %193 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %194 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %195 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %177
  %199 = load i32, i32* @__E1000_TESTING, align 4
  %200 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %201 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %200, i32 0, i32 1
  %202 = call i32 @clear_bit(i32 %199, i32* %201)
  br label %203

203:                                              ; preds = %198, %176
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %219, label %206

206:                                              ; preds = %203
  %207 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %208 = call i32 @e1000e_reset(%struct.e1000_adapter* %207)
  %209 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %210 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @FLAG_HAS_AMT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %206
  %216 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %217 = call i32 @e1000e_release_hw_control(%struct.e1000_adapter* %216)
  br label %218

218:                                              ; preds = %215, %206
  br label %219

219:                                              ; preds = %218, %203
  %220 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @e1000e_get_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_power_up_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e_info(i8*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i64 @e1000_reg_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_eeprom_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_intr_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_loopback_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_link_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_open(%struct.net_device*) #1

declare dso_local i32 @e1000e_release_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
