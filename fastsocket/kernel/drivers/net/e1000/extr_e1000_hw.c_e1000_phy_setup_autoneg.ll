; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_setup_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_setup_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"e1000_phy_setup_autoneg\00", align 1
@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@e1000_phy_8201 = common dso_local global i64 0, align 8
@REG9_SPEED_MASK = common dso_local global i32 0, align 4
@REG4_SPEED_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"autoneg_advertised %x\0A\00", align 1
@ADVERTISE_10_HALF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Half duplex\0A\00", align 1
@NWAY_AR_10T_HD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_10_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Full duplex\0A\00", align 1
@NWAY_AR_10T_FD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_100_HALF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Half duplex\0A\00", align 1
@NWAY_AR_100TX_HD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Full duplex\0A\00", align 1
@NWAY_AR_100TX_FD_CAPS = common dso_local global i32 0, align 4
@ADVERTISE_1000_HALF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Advertise 1000mb Half duplex requested, request denied!\0A\00", align 1
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Advertise 1000mb Full duplex\0A\00", align 1
@CR_1000T_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_ASM_DIR = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"Auto-Neg Advertising %x\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_setup_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %10 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %8, i32 %9, i32* %5)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %181

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = load i32, i32* @PHY_1000T_CTRL, align 4
  %18 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %16, i32 %17, i32* %6)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %2, align 8
  br label %181

23:                                               ; preds = %15
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_phy_8201, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @REG9_SPEED_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* @REG4_SPEED_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @REG9_SPEED_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ADVERTISE_10_HALF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %35
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ADVERTISE_10_FULL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ADVERTISE_100_HALF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %71
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ADVERTISE_1000_HALF, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %111, %104
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %147 [
    i32 130, label %120
    i32 129, label %127
    i32 128, label %133
    i32 131, label %141
  ]

120:                                              ; preds = %116
  %121 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %122 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %151

127:                                              ; preds = %116
  %128 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %129 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %151

133:                                              ; preds = %116
  %134 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %5, align 4
  br label %151

141:                                              ; preds = %116
  %142 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %143 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %151

147:                                              ; preds = %116
  %148 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %149 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %150 = sub nsw i64 0, %149
  store i64 %150, i64* %2, align 8
  br label %181

151:                                              ; preds = %141, %133, %127, %120
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %153 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %152, i32 %153, i32 %154)
  store i64 %155, i64* %4, align 8
  %156 = load i64, i64* %4, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i64, i64* %4, align 8
  store i64 %159, i64* %2, align 8
  br label %181

160:                                              ; preds = %151
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %161)
  %163 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %164 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @e1000_phy_8201, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  store i32 0, i32* %6, align 4
  br label %179

169:                                              ; preds = %160
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %171 = load i32, i32* @PHY_1000T_CTRL, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %170, i32 %171, i32 %172)
  store i64 %173, i64* %4, align 8
  %174 = load i64, i64* %4, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i64, i64* %4, align 8
  store i64 %177, i64* %2, align 8
  br label %181

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %168
  %180 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %180, i64* %2, align 8
  br label %181

181:                                              ; preds = %179, %176, %158, %147, %21, %13
  %182 = load i64, i64* %2, align 8
  ret i64 %182
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
