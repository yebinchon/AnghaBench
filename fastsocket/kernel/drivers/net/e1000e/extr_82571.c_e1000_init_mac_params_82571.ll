; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_init_mac_params_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_init_mac_params_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_12__, %struct.e1000_mac_info, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.e1000_mac_info = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@e1000_media_type_fiber = common dso_local global i32 0, align 4
@e1000_setup_fiber_serdes_link_82571 = common dso_local global i8* null, align 8
@e1000e_check_for_fiber_link = common dso_local global i32 0, align 4
@e1000e_get_speed_and_duplex_fiber_serdes = common dso_local global i8* null, align 8
@e1000_media_type_internal_serdes = common dso_local global i32 0, align 4
@e1000_check_for_serdes_link_82571 = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i32 0, align 4
@e1000_setup_copper_link_82571 = common dso_local global i8* null, align 8
@e1000e_check_for_copper_link = common dso_local global i32 0, align 4
@e1000e_get_speed_and_duplex_copper = common dso_local global i8* null, align 8
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@e1000_set_lan_id_single_port = common dso_local global i8* null, align 8
@e1000e_check_mng_mode_generic = common dso_local global i8* null, align 8
@e1000e_led_on_generic = common dso_local global i8* null, align 8
@e1000e_blink_led_generic = common dso_local global i8* null, align 8
@FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@e1000_check_mng_mode_82574 = common dso_local global i8* null, align 8
@e1000_led_on_82574 = common dso_local global i8* null, align 8
@SWSM2 = common dso_local global i32 0, align 4
@E1000_SWSM2_LOCK = common dso_local global i32 0, align 4
@SWSM = common dso_local global i32 0, align 4
@E1000_SWSM_SMBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Please update your 82571 Bootagent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %50 [
    i32 139, label %16
    i32 134, label %16
    i32 138, label %16
    i32 137, label %33
    i32 136, label %33
    i32 135, label %33
    i32 133, label %33
  ]

16:                                               ; preds = %1, %1, %1
  %17 = load i32, i32* @e1000_media_type_fiber, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i8*, i8** @e1000_setup_fiber_serdes_link_82571, align 8
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 6
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @e1000e_check_for_fiber_link, align 4
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** @e1000e_get_speed_and_duplex_fiber_serdes, align 8
  %30 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  store i8* %29, i8** %32, align 8
  br label %67

33:                                               ; preds = %1, %1, %1, %1
  %34 = load i32, i32* @e1000_media_type_internal_serdes, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i8*, i8** @e1000_setup_fiber_serdes_link_82571, align 8
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 6
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* @e1000_check_for_serdes_link_82571, align 4
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 8
  %46 = load i8*, i8** @e1000e_get_speed_and_duplex_fiber_serdes, align 8
  %47 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  store i8* %46, i8** %49, align 8
  br label %67

50:                                               ; preds = %1
  %51 = load i32, i32* @e1000_media_type_copper, align 4
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i8*, i8** @e1000_setup_copper_link_82571, align 8
  %56 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 6
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* @e1000e_check_for_copper_link, align 4
  %60 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 8
  %63 = load i8*, i8** @e1000e_get_speed_and_duplex_copper, align 8
  %64 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  store i8* %63, i8** %66, align 8
  br label %67

67:                                               ; preds = %50, %33, %16
  %68 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %68, i32 0, i32 0
  store i32 128, i32* %69, align 8
  %70 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  %71 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %121 [
    i32 130, label %79
    i32 129, label %108
    i32 128, label %108
  ]

79:                                               ; preds = %67
  %80 = load i8*, i8** @e1000_set_lan_id_single_port, align 8
  %81 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  store i8* %80, i8** %83, align 8
  %84 = load i8*, i8** @e1000e_check_mng_mode_generic, align 8
  %85 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  %88 = load i8*, i8** @e1000e_led_on_generic, align 8
  %89 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @e1000e_blink_led_generic, align 8
  %93 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* @FWSM, align 4
  %99 = call i32 @er32(i32 %98)
  %100 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  br label %136

108:                                              ; preds = %67, %67
  %109 = load i8*, i8** @e1000_set_lan_id_single_port, align 8
  %110 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %111 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @e1000_check_mng_mode_82574, align 8
  %114 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  store i8* %113, i8** %116, align 8
  %117 = load i8*, i8** @e1000_led_on_82574, align 8
  %118 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  br label %136

121:                                              ; preds = %67
  %122 = load i8*, i8** @e1000e_check_mng_mode_generic, align 8
  %123 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %124 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i8* %122, i8** %125, align 8
  %126 = load i8*, i8** @e1000e_led_on_generic, align 8
  %127 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %128 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load i8*, i8** @e1000e_blink_led_generic, align 8
  %131 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %132 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %135 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %134, i32 0, i32 3
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %121, %108, %79
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %138 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %156 [
    i32 132, label %141
    i32 131, label %141
  ]

141:                                              ; preds = %136, %136
  %142 = load i32, i32* @SWSM2, align 4
  %143 = call i32 @er32(i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @E1000_SWSM2_LOCK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* @SWSM2, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @E1000_SWSM2_LOCK, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @ew32(i32 %149, i32 %152)
  store i32 1, i32* %6, align 4
  br label %155

154:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %154, %148
  br label %157

156:                                              ; preds = %136
  store i32 1, i32* %6, align 4
  br label %157

157:                                              ; preds = %156, %155
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = load i32, i32* @SWSM, align 4
  %162 = call i32 @er32(i32 %161)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %160
  %170 = load i32, i32* @SWSM, align 4
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %171, %173
  %175 = call i32 @ew32(i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %169, %157
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %178 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store i64 0, i64* %180, align 8
  ret i32 0
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
