; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_phy_setup_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_phy_setup_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_phy_info = type { i32, i32 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
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
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Auto-Neg Advertising %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_setup_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_setup_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* @MII_ADVERTISE, align 4
  %19 = call i64 @e1e_rphy(%struct.e1000_hw* %17, i32 %18, i32* %6)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %190

24:                                               ; preds = %1
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @MII_CTRL1000, align 4
  %34 = call i64 @e1e_rphy(%struct.e1000_hw* %32, i32 %33, i32* %7)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %190

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* @ADVERTISE_100FULL, align 4
  %42 = load i32, i32* @ADVERTISE_100HALF, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ADVERTISE_10FULL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ADVERTISE_10HALF, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %52 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ADVERTISE_10_HALF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %40
  %68 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ADVERTISE_10HALF, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %40
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ADVERTISE_10_FULL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @ADVERTISE_10FULL, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ADVERTISE_100_HALF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @ADVERTISE_100HALF, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %98 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @ADVERTISE_100FULL, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %110 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ADVERTISE_1000_HALF, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %108
  %118 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %119 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %124, %117
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %161 [
    i32 130, label %134
    i32 129, label %141
    i32 128, label %147
    i32 131, label %155
  ]

134:                                              ; preds = %129
  %135 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %136 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %165

141:                                              ; preds = %129
  %142 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %143 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  br label %165

147:                                              ; preds = %129
  %148 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %165

155:                                              ; preds = %129
  %156 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %157 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %6, align 4
  br label %165

161:                                              ; preds = %129
  %162 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %163 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %164 = sub nsw i64 0, %163
  store i64 %164, i64* %2, align 8
  br label %190

165:                                              ; preds = %155, %147, %141, %134
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %167 = load i32, i32* @MII_ADVERTISE, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i64 @e1e_wphy(%struct.e1000_hw* %166, i32 %167, i32 %168)
  store i64 %169, i64* %5, align 8
  %170 = load i64, i64* %5, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i64, i64* %5, align 8
  store i64 %173, i64* %2, align 8
  br label %190

174:                                              ; preds = %165
  %175 = load i32, i32* %6, align 4
  %176 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %175)
  %177 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %178 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %174
  %184 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %185 = load i32, i32* @MII_CTRL1000, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i64 @e1e_wphy(%struct.e1000_hw* %184, i32 %185, i32 %186)
  store i64 %187, i64* %5, align 8
  br label %188

188:                                              ; preds = %183, %174
  %189 = load i64, i64* %5, align 8
  store i64 %189, i64* %2, align 8
  br label %190

190:                                              ; preds = %188, %172, %161, %37, %22
  %191 = load i64, i64* %2, align 8
  ret i64 %191
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
