; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_d3_lplu_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_d3_lplu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"e1000_set_d3_lplu_state\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@e1000_82541_rev_2 = common dso_local global i64 0, align 8
@e1000_82547_rev_2 = common dso_local global i64 0, align 8
@IGP01E1000_GMII_FIFO = common dso_local global i32 0, align 4
@IGP01E1000_GMII_FLEX_SPD = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_10_ALL = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_10_100_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d3_lplu_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d3_lplu_state(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @e_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_phy_igp, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %15, i64* %3, align 8
  br label %191

16:                                               ; preds = %2
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_82541_rev_2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_82547_rev_2, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22, %16
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %31 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %29, i32 %30, i32* %7)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %3, align 8
  br label %191

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %123, label %40

40:                                               ; preds = %37
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @e1000_82541_rev_2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @e1000_82547_rev_2, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @IGP01E1000_GMII_FLEX_SPD, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %57, i32 %58, i32 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %191

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @e1000_smart_speed_on, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %74 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %75 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %73, i32 %74, i32* %7)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %3, align 8
  br label %191

80:                                               ; preds = %72
  %81 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %85 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %84, i32 %85, i32 %86)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %3, align 8
  br label %191

92:                                               ; preds = %80
  br label %122

93:                                               ; preds = %66
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @e1000_smart_speed_off, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %93
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %101 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %102 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %100, i32 %101, i32* %7)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %3, align 8
  br label %191

107:                                              ; preds = %99
  %108 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %113 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %112, i32 %113, i32 %114)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i64, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  br label %191

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %93
  br label %122

122:                                              ; preds = %121, %92
  br label %189

123:                                              ; preds = %37
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %123
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AUTONEG_ADVERTISE_10_ALL, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %137 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AUTONEG_ADVERTISE_10_100_ALL, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %188

141:                                              ; preds = %135, %129, %123
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %143 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @e1000_82541_rev_2, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @e1000_82547_rev_2, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %147, %141
  %154 = load i32, i32* @IGP01E1000_GMII_FLEX_SPD, align 4
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %158 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %157, i32 %158, i32 %159)
  store i64 %160, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i64, i64* %6, align 8
  store i64 %164, i64* %3, align 8
  br label %191

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %147
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %168 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %169 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %167, i32 %168, i32* %7)
  store i64 %169, i64* %6, align 8
  %170 = load i64, i64* %6, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i64, i64* %6, align 8
  store i64 %173, i64* %3, align 8
  br label %191

174:                                              ; preds = %166
  %175 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %7, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %7, align 4
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %180 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %179, i32 %180, i32 %181)
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %6, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %174
  %186 = load i64, i64* %6, align 8
  store i64 %186, i64* %3, align 8
  br label %191

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187, %135
  br label %189

189:                                              ; preds = %188, %122
  %190 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %190, i64* %3, align 8
  br label %191

191:                                              ; preds = %189, %185, %172, %163, %118, %105, %90, %78, %63, %34, %14
  %192 = load i64, i64* %3, align 8
  ret i64 %192
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
