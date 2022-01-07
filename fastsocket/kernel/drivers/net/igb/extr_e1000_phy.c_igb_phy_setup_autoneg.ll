; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_setup_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_setup_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_phy_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@NWAY_AR_100TX_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_100TX_HD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_10T_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_10T_HD_CAPS = common dso_local global i32 0, align 4
@CR_1000T_HD_CAPS = common dso_local global i32 0, align 4
@CR_1000T_FD_CAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"autoneg_advertised %x\0A\00", align 1
@ADVERTISE_10_HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Half duplex\0A\00", align 1
@ADVERTISE_10_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Full duplex\0A\00", align 1
@ADVERTISE_100_HALF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Half duplex\0A\00", align 1
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Full duplex\0A\00", align 1
@ADVERTISE_1000_HALF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Advertise 1000mb Half duplex request denied!\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Advertise 1000mb Full duplex\0A\00", align 1
@NWAY_AR_ASM_DIR = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Auto-Neg Advertising %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_phy_setup_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_phy_setup_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.1*
  %22 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %23 = call i64 %19(%struct.e1000_hw.1* %21, i32 %22, i32* %5)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %209

27:                                               ; preds = %1
  %28 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.1*
  %41 = load i32, i32* @PHY_1000T_CTRL, align 4
  %42 = call i64 %38(%struct.e1000_hw.1* %40, i32 %41, i32* %6)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %209

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %49 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @CR_1000T_HD_CAPS, align 4
  %59 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ADVERTISE_10_HALF, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %47
  %75 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %47
  %80 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ADVERTISE_10_FULL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ADVERTISE_100_HALF, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %98, %91
  %104 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ADVERTISE_1000_HALF, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %115
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %133 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %124
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %138 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %168 [
    i32 130, label %141
    i32 129, label %148
    i32 128, label %154
    i32 131, label %162
  ]

141:                                              ; preds = %136
  %142 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %143 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %5, align 4
  br label %172

148:                                              ; preds = %136
  %149 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %150 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %5, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %5, align 4
  br label %172

154:                                              ; preds = %136
  %155 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %5, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %5, align 4
  br label %172

162:                                              ; preds = %136
  %163 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %164 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %5, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %5, align 4
  br label %172

168:                                              ; preds = %136
  %169 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %170 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %171 = sub nsw i64 0, %170
  store i64 %171, i64* %4, align 8
  br label %209

172:                                              ; preds = %162, %154, %148, %141
  %173 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %175, align 8
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %178 = bitcast %struct.e1000_hw* %177 to %struct.e1000_hw.0*
  %179 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i64 %176(%struct.e1000_hw.0* %178, i32 %179, i32 %180)
  store i64 %181, i64* %4, align 8
  %182 = load i64, i64* %4, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %172
  br label %209

185:                                              ; preds = %172
  %186 = load i32, i32* %5, align 4
  %187 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %189 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %185
  %195 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %196 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %197, align 8
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %200 = bitcast %struct.e1000_hw* %199 to %struct.e1000_hw.0*
  %201 = load i32, i32* @PHY_1000T_CTRL, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i64 %198(%struct.e1000_hw.0* %200, i32 %201, i32 %202)
  store i64 %203, i64* %4, align 8
  %204 = load i64, i64* %4, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %194
  br label %209

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207, %185
  br label %209

209:                                              ; preds = %208, %206, %184, %168, %45, %26
  %210 = load i64, i64* %4, align 8
  ret i64 %210
}

declare dso_local i32 @hw_dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
