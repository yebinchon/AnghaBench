; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4001_poweron.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4001_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { %struct.i2c_client*, %struct.i2c_client* }

@MAX664X_REG_RSL = common dso_local global i32 0, align 4
@P0_CONFIG = common dso_local global i32 0, align 4
@P1_CONFIG = common dso_local global i32 0, align 4
@P1_SPARE_LBN = common dso_local global i32 0, align 4
@P0_OUT = common dso_local global i32 0, align 4
@P0_EN_1V2_LBN = common dso_local global i32 0, align 4
@P0_EN_2V5_LBN = common dso_local global i32 0, align 4
@P0_EN_3V3X_LBN = common dso_local global i32 0, align 4
@P0_EN_5V_LBN = common dso_local global i32 0, align 4
@P0_EN_1V0X_LBN = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"power-cycling PHY\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@P0_X_TRST_LBN = common dso_local global i32 0, align 4
@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"waiting for DSP boot (attempt %d)...\0A\00", align 1
@P1_IN = common dso_local global i32 0, align 4
@P1_AFE_PWD_LBN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"timed out waiting for DSP boot\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @sfe4001_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe4001_poweron(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = call %struct.TYPE_2__* @falcon_board(%struct.efx_nic* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = call %struct.TYPE_2__* @falcon_board(%struct.efx_nic* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i32, i32* @MAX664X_REG_RSL, align 4
  %20 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %199

25:                                               ; preds = %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @P0_CONFIG, align 4
  %28 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %26, i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %199

33:                                               ; preds = %25
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @P1_CONFIG, align 4
  %36 = load i32, i32* @P1_SPARE_LBN, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = and i32 255, %38
  %40 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %35, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %195

44:                                               ; preds = %33
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* @P0_OUT, align 4
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %195

51:                                               ; preds = %44
  %52 = load i32, i32* @P0_EN_1V2_LBN, align 4
  %53 = shl i32 0, %52
  %54 = load i32, i32* @P0_EN_2V5_LBN, align 4
  %55 = shl i32 0, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* @P0_EN_3V3X_LBN, align 4
  %58 = shl i32 0, %57
  %59 = or i32 %56, %58
  %60 = load i32, i32* @P0_EN_5V_LBN, align 4
  %61 = shl i32 0, %60
  %62 = or i32 %59, %61
  %63 = load i32, i32* @P0_EN_1V0X_LBN, align 4
  %64 = shl i32 0, %63
  %65 = or i32 %62, %64
  %66 = xor i32 %65, -1
  %67 = and i32 255, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %51
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = load i32, i32* @hw, align 4
  %74 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %75 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_info(%struct.efx_nic* %72, i32 %73, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load i32, i32* @P0_OUT, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %78, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %195

85:                                               ; preds = %71
  %86 = load i32, i32* @HZ, align 4
  %87 = call i32 @schedule_timeout_uninterruptible(i32 %86)
  br label %88

88:                                               ; preds = %85, %51
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %183, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp ult i32 %90, 20
  br i1 %91, label %92, label %186

92:                                               ; preds = %89
  %93 = load i32, i32* @P0_EN_1V2_LBN, align 4
  %94 = shl i32 1, %93
  %95 = load i32, i32* @P0_EN_2V5_LBN, align 4
  %96 = shl i32 1, %95
  %97 = or i32 %94, %96
  %98 = load i32, i32* @P0_EN_3V3X_LBN, align 4
  %99 = shl i32 1, %98
  %100 = or i32 %97, %99
  %101 = load i32, i32* @P0_EN_5V_LBN, align 4
  %102 = shl i32 1, %101
  %103 = or i32 %100, %102
  %104 = load i32, i32* @P0_X_TRST_LBN, align 4
  %105 = shl i32 1, %104
  %106 = or i32 %103, %105
  %107 = xor i32 %106, -1
  %108 = and i32 255, %107
  store i32 %108, i32* %9, align 4
  %109 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %110 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %92
  %116 = load i32, i32* @P0_EN_3V3X_LBN, align 4
  %117 = shl i32 1, %116
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %115, %92
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load i32, i32* @P0_OUT, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %121, i32 %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %195

128:                                              ; preds = %120
  %129 = call i32 @msleep(i32 10)
  %130 = load i32, i32* @P0_EN_1V0X_LBN, align 4
  %131 = shl i32 1, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = load i32, i32* @P0_OUT, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %135, i32 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %195

142:                                              ; preds = %128
  %143 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %144 = load i32, i32* @hw, align 4
  %145 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %146 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_info(%struct.efx_nic* %143, i32 %144, i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %151 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load i32, i32* @HZ, align 4
  %158 = call i32 @schedule_timeout_uninterruptible(i32 %157)
  store i32 0, i32* %2, align 4
  br label %199

159:                                              ; preds = %142
  store i32 0, i32* %7, align 4
  br label %160

160:                                              ; preds = %179, %159
  %161 = load i32, i32* %7, align 4
  %162 = icmp ult i32 %161, 10
  br i1 %162, label %163, label %182

163:                                              ; preds = %160
  %164 = call i32 @msleep(i32 100)
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = load i32, i32* @P1_IN, align 4
  %167 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %195

171:                                              ; preds = %163
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @P1_AFE_PWD_LBN, align 4
  %174 = shl i32 1, %173
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %199

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %160

182:                                              ; preds = %160
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %89

186:                                              ; preds = %89
  %187 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %188 = load i32, i32* @hw, align 4
  %189 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %190 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_info(%struct.efx_nic* %187, i32 %188, i32 %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %193 = load i32, i32* @ETIMEDOUT, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %186, %170, %141, %127, %84, %50, %43
  %196 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %197 = call i32 @sfe4001_poweroff(%struct.efx_nic* %196)
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %195, %177, %156, %31, %23
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_2__* @falcon_board(%struct.efx_nic*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sfe4001_poweroff(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
