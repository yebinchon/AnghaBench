; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_bbp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_init_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@RT3352 = common dso_local global i32 0, align 4
@RT3290 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@RT2860 = common dso_local global i32 0, align 4
@REV_RT2860C = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@REV_RT2860D = common dso_local global i32 0, align 4
@REV_RT3070F = common dso_local global i32 0, align 4
@REV_RT3071E = common dso_local global i32 0, align 4
@REV_RT3090E = common dso_local global i32 0, align 4
@REV_RT3390E = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0 = common dso_local global i64 0, align 8
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@BBP47_TSSI_ADC6 = common dso_local global i32 0, align 4
@BBP3_ADC_MODE_SWITCH = common dso_local global i32 0, align 4
@BBP3_ADC_INIT_MODE = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i64 0, align 8
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@CAPABILITY_BT_COEXIST = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR3 = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR6 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL3 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL6 = common dso_local global i32 0, align 4
@REV_RT5390R = common dso_local global i32 0, align 4
@BBP152_RX_DEFAULT_ANT = common dso_local global i32 0, align 4
@EEPROM_BBP_SIZE = common dso_local global i32 0, align 4
@EEPROM_BBP_START = common dso_local global i64 0, align 8
@EEPROM_BBP_REG_ID = common dso_local global i32 0, align 4
@EEPROM_BBP_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_init_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_init_bbp(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = call i64 @rt2800_wait_bbp_rf_ready(%struct.rt2x00_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = call i64 @rt2800_wait_bbp_ready(%struct.rt2x00_dev* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i1 [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %857

26:                                               ; preds = %18
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @RT5592, align 4
  %29 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = call i32 @rt2800_init_bbp_5592(%struct.rt2x00_dev* %32)
  store i32 0, i32* %2, align 4
  br label %857

34:                                               ; preds = %26
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @RT3352, align 4
  %37 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %40, i32 3, i32 0)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %42, i32 4, i32 80)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* @RT3290, align 4
  %47 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32, i32* @RT5390, align 4
  %52 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = load i32, i32* @RT5392, align 4
  %57 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %49, %44
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = call i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = call i64 @rt2800_is_305x_soc(%struct.rt2x00_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %62
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = load i32, i32* @RT3290, align 4
  %69 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = load i32, i32* @RT3352, align 4
  %74 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %71
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = load i32, i32* @RT3572, align 4
  %79 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = load i32, i32* @RT5390, align 4
  %84 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = load i32, i32* @RT5392, align 4
  %89 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %81, %76, %71, %66, %62
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %92, i32 31, i32 8)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %96 = load i32, i32* @RT3352, align 4
  %97 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %101 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %100, i32 47, i32 72)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %104 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %103, i32 65, i32 44)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %106 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %105, i32 66, i32 56)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %108 = load i32, i32* @RT3290, align 4
  %109 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %102
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %113 = load i32, i32* @RT3352, align 4
  %114 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %118 = load i32, i32* @RT5390, align 4
  %119 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %123 = load i32, i32* @RT5392, align 4
  %124 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %116, %111, %102
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %128 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %127, i32 68, i32 11)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %131 = load i32, i32* @RT2860, align 4
  %132 = load i32, i32* @REV_RT2860C, align 4
  %133 = call i64 @rt2x00_rt_rev(%struct.rt2x00_dev* %130, i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %137 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %136, i32 69, i32 22)
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %139 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %138, i32 73, i32 18)
  br label %186

140:                                              ; preds = %129
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %142 = load i32, i32* @RT3290, align 4
  %143 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %140
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %147 = load i32, i32* @RT3352, align 4
  %148 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %145
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %152 = load i32, i32* @RT5390, align 4
  %153 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %157 = load i32, i32* @RT5392, align 4
  %158 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %155, %150, %145, %140
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %162 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %161, i32 69, i32 18)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %164 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %163, i32 73, i32 19)
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %166 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %165, i32 75, i32 70)
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %168 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %167, i32 76, i32 40)
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %170 = load i32, i32* @RT3290, align 4
  %171 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %160
  %174 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %175 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %174, i32 77, i32 88)
  br label %179

176:                                              ; preds = %160
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %178 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %177, i32 77, i32 89)
  br label %179

179:                                              ; preds = %176, %173
  br label %185

180:                                              ; preds = %155
  %181 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %182 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %181, i32 69, i32 18)
  %183 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %184 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %183, i32 73, i32 16)
  br label %185

185:                                              ; preds = %180, %179
  br label %186

186:                                              ; preds = %185, %135
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %188 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %187, i32 70, i32 10)
  %189 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %190 = load i32, i32* @RT3070, align 4
  %191 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %223, label %193

193:                                              ; preds = %186
  %194 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %195 = load i32, i32* @RT3071, align 4
  %196 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %223, label %198

198:                                              ; preds = %193
  %199 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %200 = load i32, i32* @RT3090, align 4
  %201 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %223, label %203

203:                                              ; preds = %198
  %204 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %205 = load i32, i32* @RT3390, align 4
  %206 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %223, label %208

208:                                              ; preds = %203
  %209 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %210 = load i32, i32* @RT3572, align 4
  %211 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %208
  %214 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %215 = load i32, i32* @RT5390, align 4
  %216 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %220 = load i32, i32* @RT5392, align 4
  %221 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218, %213, %208, %203, %198, %193, %186
  %224 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %225 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %224, i32 79, i32 19)
  %226 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %227 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %226, i32 80, i32 5)
  %228 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %229 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %228, i32 81, i32 51)
  br label %271

230:                                              ; preds = %218
  %231 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %232 = call i64 @rt2800_is_305x_soc(%struct.rt2x00_dev* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %230
  %235 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %236 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %235, i32 78, i32 14)
  %237 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %238 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %237, i32 80, i32 8)
  br label %270

239:                                              ; preds = %230
  %240 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %241 = load i32, i32* @RT3290, align 4
  %242 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %239
  %245 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %246 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %245, i32 74, i32 11)
  %247 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %248 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %247, i32 79, i32 24)
  %249 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %250 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %249, i32 80, i32 9)
  %251 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %252 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %251, i32 81, i32 51)
  br label %269

253:                                              ; preds = %239
  %254 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %255 = load i32, i32* @RT3352, align 4
  %256 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %260 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %259, i32 78, i32 14)
  %261 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %262 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %261, i32 80, i32 8)
  %263 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %264 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %263, i32 81, i32 55)
  br label %268

265:                                              ; preds = %253
  %266 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %267 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %266, i32 81, i32 55)
  br label %268

268:                                              ; preds = %265, %258
  br label %269

269:                                              ; preds = %268, %244
  br label %270

270:                                              ; preds = %269, %234
  br label %271

271:                                              ; preds = %270, %223
  %272 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %273 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %272, i32 82, i32 98)
  %274 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %275 = load i32, i32* @RT3290, align 4
  %276 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %288, label %278

278:                                              ; preds = %271
  %279 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %280 = load i32, i32* @RT5390, align 4
  %281 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %279, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %278
  %284 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %285 = load i32, i32* @RT5392, align 4
  %286 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %283, %278, %271
  %289 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %290 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %289, i32 83, i32 122)
  br label %294

291:                                              ; preds = %283
  %292 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %293 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %292, i32 83, i32 106)
  br label %294

294:                                              ; preds = %291, %288
  %295 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %296 = load i32, i32* @RT2860, align 4
  %297 = load i32, i32* @REV_RT2860D, align 4
  %298 = call i64 @rt2x00_rt_rev(%struct.rt2x00_dev* %295, i32 %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %302 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %301, i32 84, i32 25)
  br label %325

303:                                              ; preds = %294
  %304 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %305 = load i32, i32* @RT3290, align 4
  %306 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %304, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %318, label %308

308:                                              ; preds = %303
  %309 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %310 = load i32, i32* @RT5390, align 4
  %311 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %309, i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %308
  %314 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %315 = load i32, i32* @RT5392, align 4
  %316 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %314, i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %313, %308, %303
  %319 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %320 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %319, i32 84, i32 154)
  br label %324

321:                                              ; preds = %313
  %322 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %323 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %322, i32 84, i32 153)
  br label %324

324:                                              ; preds = %321, %318
  br label %325

325:                                              ; preds = %324, %300
  %326 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %327 = load i32, i32* @RT3290, align 4
  %328 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %326, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %345, label %330

330:                                              ; preds = %325
  %331 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %332 = load i32, i32* @RT3352, align 4
  %333 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %331, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %345, label %335

335:                                              ; preds = %330
  %336 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %337 = load i32, i32* @RT5390, align 4
  %338 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %336, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %335
  %341 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %342 = load i32, i32* @RT5392, align 4
  %343 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %341, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %340, %335, %330, %325
  %346 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %347 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %346, i32 86, i32 56)
  br label %351

348:                                              ; preds = %340
  %349 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %350 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %349, i32 86, i32 0)
  br label %351

351:                                              ; preds = %348, %345
  %352 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %353 = load i32, i32* @RT3352, align 4
  %354 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %352, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %361, label %356

356:                                              ; preds = %351
  %357 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %358 = load i32, i32* @RT5392, align 4
  %359 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %357, i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %356, %351
  %362 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %363 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %362, i32 88, i32 144)
  br label %364

364:                                              ; preds = %361, %356
  %365 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %366 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %365, i32 91, i32 4)
  %367 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %368 = load i32, i32* @RT3290, align 4
  %369 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %367, i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %386, label %371

371:                                              ; preds = %364
  %372 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %373 = load i32, i32* @RT3352, align 4
  %374 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %372, i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %386, label %376

376:                                              ; preds = %371
  %377 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %378 = load i32, i32* @RT5390, align 4
  %379 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %377, i32 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %376
  %382 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %383 = load i32, i32* @RT5392, align 4
  %384 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %382, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %381, %376, %371, %364
  %387 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %388 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %387, i32 92, i32 2)
  br label %392

389:                                              ; preds = %381
  %390 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %391 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %390, i32 92, i32 0)
  br label %392

392:                                              ; preds = %389, %386
  %393 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %394 = load i32, i32* @RT5392, align 4
  %395 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %393, i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %392
  %398 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %399 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %398, i32 95, i32 154)
  %400 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %401 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %400, i32 98, i32 18)
  br label %402

402:                                              ; preds = %397, %392
  %403 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %404 = load i32, i32* @RT3070, align 4
  %405 = load i32, i32* @REV_RT3070F, align 4
  %406 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %403, i32 %404, i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %455, label %408

408:                                              ; preds = %402
  %409 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %410 = load i32, i32* @RT3071, align 4
  %411 = load i32, i32* @REV_RT3071E, align 4
  %412 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %409, i32 %410, i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %455, label %414

414:                                              ; preds = %408
  %415 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %416 = load i32, i32* @RT3090, align 4
  %417 = load i32, i32* @REV_RT3090E, align 4
  %418 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %415, i32 %416, i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %455, label %420

420:                                              ; preds = %414
  %421 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %422 = load i32, i32* @RT3390, align 4
  %423 = load i32, i32* @REV_RT3390E, align 4
  %424 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %421, i32 %422, i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %455, label %426

426:                                              ; preds = %420
  %427 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %428 = load i32, i32* @RT3290, align 4
  %429 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %427, i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %455, label %431

431:                                              ; preds = %426
  %432 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %433 = load i32, i32* @RT3352, align 4
  %434 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %432, i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %455, label %436

436:                                              ; preds = %431
  %437 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %438 = load i32, i32* @RT3572, align 4
  %439 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %437, i32 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %455, label %441

441:                                              ; preds = %436
  %442 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %443 = load i32, i32* @RT5390, align 4
  %444 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %442, i32 %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %455, label %446

446:                                              ; preds = %441
  %447 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %448 = load i32, i32* @RT5392, align 4
  %449 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %447, i32 %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %446
  %452 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %453 = call i64 @rt2800_is_305x_soc(%struct.rt2x00_dev* %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %451, %446, %441, %436, %431, %426, %420, %414, %408, %402
  %456 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %457 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %456, i32 103, i32 192)
  br label %461

458:                                              ; preds = %451
  %459 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %460 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %459, i32 103, i32 0)
  br label %461

461:                                              ; preds = %458, %455
  %462 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %463 = load i32, i32* @RT3290, align 4
  %464 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %462, i32 %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %481, label %466

466:                                              ; preds = %461
  %467 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %468 = load i32, i32* @RT3352, align 4
  %469 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %467, i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %481, label %471

471:                                              ; preds = %466
  %472 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %473 = load i32, i32* @RT5390, align 4
  %474 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %472, i32 %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %481, label %476

476:                                              ; preds = %471
  %477 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %478 = load i32, i32* @RT5392, align 4
  %479 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %477, i32 %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %484

481:                                              ; preds = %476, %471, %466, %461
  %482 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %483 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %482, i32 104, i32 146)
  br label %484

484:                                              ; preds = %481, %476
  %485 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %486 = call i64 @rt2800_is_305x_soc(%struct.rt2x00_dev* %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %484
  %489 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %490 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %489, i32 105, i32 1)
  br label %526

491:                                              ; preds = %484
  %492 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %493 = load i32, i32* @RT3290, align 4
  %494 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %492, i32 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %491
  %497 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %498 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %497, i32 105, i32 28)
  br label %525

499:                                              ; preds = %491
  %500 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %501 = load i32, i32* @RT3352, align 4
  %502 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %500, i32 %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %507

504:                                              ; preds = %499
  %505 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %506 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %505, i32 105, i32 52)
  br label %524

507:                                              ; preds = %499
  %508 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %509 = load i32, i32* @RT5390, align 4
  %510 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %508, i32 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %507
  %513 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %514 = load i32, i32* @RT5392, align 4
  %515 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %513, i32 %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %512, %507
  %518 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %519 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %518, i32 105, i32 60)
  br label %523

520:                                              ; preds = %512
  %521 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %522 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %521, i32 105, i32 5)
  br label %523

523:                                              ; preds = %520, %517
  br label %524

524:                                              ; preds = %523, %504
  br label %525

525:                                              ; preds = %524, %496
  br label %526

526:                                              ; preds = %525, %488
  %527 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %528 = load i32, i32* @RT3290, align 4
  %529 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %527, i32 %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %536, label %531

531:                                              ; preds = %526
  %532 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %533 = load i32, i32* @RT5390, align 4
  %534 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %532, i32 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %531, %526
  %537 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %538 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %537, i32 106, i32 3)
  br label %560

539:                                              ; preds = %531
  %540 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %541 = load i32, i32* @RT3352, align 4
  %542 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %540, i32 %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %547

544:                                              ; preds = %539
  %545 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %546 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %545, i32 106, i32 5)
  br label %559

547:                                              ; preds = %539
  %548 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %549 = load i32, i32* @RT5392, align 4
  %550 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %548, i32 %549)
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %547
  %553 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %554 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %553, i32 106, i32 18)
  br label %558

555:                                              ; preds = %547
  %556 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %557 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %556, i32 106, i32 53)
  br label %558

558:                                              ; preds = %555, %552
  br label %559

559:                                              ; preds = %558, %544
  br label %560

560:                                              ; preds = %559, %536
  %561 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %562 = load i32, i32* @RT3352, align 4
  %563 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %561, i32 %562)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %560
  %566 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %567 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %566, i32 120, i32 80)
  br label %568

568:                                              ; preds = %565, %560
  %569 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %570 = load i32, i32* @RT3290, align 4
  %571 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %569, i32 %570)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %583, label %573

573:                                              ; preds = %568
  %574 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %575 = load i32, i32* @RT5390, align 4
  %576 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %574, i32 %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %583, label %578

578:                                              ; preds = %573
  %579 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %580 = load i32, i32* @RT5392, align 4
  %581 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %579, i32 %580)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %586

583:                                              ; preds = %578, %573, %568
  %584 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %585 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %584, i32 128, i32 18)
  br label %586

586:                                              ; preds = %583, %578
  %587 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %588 = load i32, i32* @RT5392, align 4
  %589 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %587, i32 %588)
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %596

591:                                              ; preds = %586
  %592 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %593 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %592, i32 134, i32 208)
  %594 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %595 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %594, i32 135, i32 246)
  br label %596

596:                                              ; preds = %591, %586
  %597 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %598 = load i32, i32* @RT3352, align 4
  %599 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %597, i32 %598)
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %596
  %602 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %603 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %602, i32 137, i32 15)
  br label %604

604:                                              ; preds = %601, %596
  %605 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %606 = load i32, i32* @RT3071, align 4
  %607 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %605, i32 %606)
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %634, label %609

609:                                              ; preds = %604
  %610 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %611 = load i32, i32* @RT3090, align 4
  %612 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %610, i32 %611)
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %634, label %614

614:                                              ; preds = %609
  %615 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %616 = load i32, i32* @RT3390, align 4
  %617 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %615, i32 %616)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %634, label %619

619:                                              ; preds = %614
  %620 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %621 = load i32, i32* @RT3572, align 4
  %622 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %620, i32 %621)
  %623 = icmp ne i64 %622, 0
  br i1 %623, label %634, label %624

624:                                              ; preds = %619
  %625 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %626 = load i32, i32* @RT5390, align 4
  %627 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %625, i32 %626)
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %634, label %629

629:                                              ; preds = %624
  %630 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %631 = load i32, i32* @RT5392, align 4
  %632 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %630, i32 %631)
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %659

634:                                              ; preds = %629, %624, %619, %614, %609, %604
  %635 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %636 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %635, i32 138, i32* %7)
  %637 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %638 = load i64, i64* @EEPROM_NIC_CONF0, align 8
  %639 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %637, i64 %638, i32* %5)
  %640 = load i32, i32* %5, align 4
  %641 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %642 = call i32 @rt2x00_get_field16(i32 %640, i32 %641)
  %643 = icmp eq i32 %642, 1
  br i1 %643, label %644, label %647

644:                                              ; preds = %634
  %645 = load i32, i32* %7, align 4
  %646 = or i32 %645, 32
  store i32 %646, i32* %7, align 4
  br label %647

647:                                              ; preds = %644, %634
  %648 = load i32, i32* %5, align 4
  %649 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %650 = call i32 @rt2x00_get_field16(i32 %648, i32 %649)
  %651 = icmp eq i32 %650, 1
  br i1 %651, label %652, label %655

652:                                              ; preds = %647
  %653 = load i32, i32* %7, align 4
  %654 = and i32 %653, -3
  store i32 %654, i32* %7, align 4
  br label %655

655:                                              ; preds = %652, %647
  %656 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %657 = load i32, i32* %7, align 4
  %658 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %656, i32 138, i32 %657)
  br label %659

659:                                              ; preds = %655, %629
  %660 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %661 = load i32, i32* @RT3290, align 4
  %662 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %660, i32 %661)
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %701

664:                                              ; preds = %659
  %665 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %666 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %665, i32 67, i32 36)
  %667 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %668 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %667, i32 143, i32 4)
  %669 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %670 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %669, i32 142, i32 153)
  %671 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %672 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %671, i32 150, i32 48)
  %673 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %674 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %673, i32 151, i32 46)
  %675 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %676 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %675, i32 152, i32 32)
  %677 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %678 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %677, i32 153, i32 52)
  %679 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %680 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %679, i32 154, i32 64)
  %681 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %682 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %681, i32 155, i32 59)
  %683 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %684 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %683, i32 253, i32 4)
  %685 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %686 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %685, i32 47, i32* %7)
  %687 = load i32, i32* @BBP47_TSSI_ADC6, align 4
  %688 = call i32 @rt2x00_set_field8(i32* %7, i32 %687, i32 1)
  %689 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %690 = load i32, i32* %7, align 4
  %691 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %689, i32 47, i32 %690)
  %692 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %693 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %692, i32 3, i32* %7)
  %694 = load i32, i32* @BBP3_ADC_MODE_SWITCH, align 4
  %695 = call i32 @rt2x00_set_field8(i32* %7, i32 %694, i32 1)
  %696 = load i32, i32* @BBP3_ADC_INIT_MODE, align 4
  %697 = call i32 @rt2x00_set_field8(i32* %7, i32 %696, i32 1)
  %698 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %699 = load i32, i32* %7, align 4
  %700 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %698, i32 3, i32 %699)
  br label %701

701:                                              ; preds = %664, %659
  %702 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %703 = load i32, i32* @RT3352, align 4
  %704 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %702, i32 %703)
  %705 = icmp ne i64 %704, 0
  br i1 %705, label %706, label %739

706:                                              ; preds = %701
  %707 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %708 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %707, i32 163, i32 189)
  %709 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %710 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %709, i32 179, i32 2)
  %711 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %712 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %711, i32 180, i32 0)
  %713 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %714 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %713, i32 182, i32 64)
  %715 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %716 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %715, i32 180, i32 1)
  %717 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %718 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %717, i32 182, i32 156)
  %719 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %720 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %719, i32 179, i32 0)
  %721 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %722 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %721, i32 142, i32 4)
  %723 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %724 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %723, i32 143, i32 59)
  %725 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %726 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %725, i32 142, i32 6)
  %727 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %728 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %727, i32 143, i32 160)
  %729 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %730 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %729, i32 142, i32 7)
  %731 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %732 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %731, i32 143, i32 161)
  %733 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %734 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %733, i32 142, i32 8)
  %735 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %736 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %735, i32 143, i32 162)
  %737 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %738 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %737, i32 148, i32 200)
  br label %739

739:                                              ; preds = %706, %701
  %740 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %741 = load i32, i32* @RT5390, align 4
  %742 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %740, i32 %741)
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %749, label %744

744:                                              ; preds = %739
  %745 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %746 = load i32, i32* @RT5392, align 4
  %747 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %745, i32 %746)
  %748 = icmp ne i64 %747, 0
  br i1 %748, label %749, label %824

749:                                              ; preds = %744, %739
  %750 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %751 = load i64, i64* @EEPROM_NIC_CONF1, align 8
  %752 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %750, i64 %751, i32* %5)
  %753 = load i32, i32* %5, align 4
  %754 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %755 = call i32 @rt2x00_get_field16(i32 %753, i32 %754)
  store i32 %755, i32* %9, align 4
  %756 = load i32, i32* %9, align 4
  %757 = icmp eq i32 %756, 3
  %758 = zext i1 %757 to i64
  %759 = select i1 %757, i32 1, i32 0
  store i32 %759, i32* %8, align 4
  %760 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %761 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %762 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %761, i32 0, i32 0
  %763 = call i64 @test_bit(i32 %760, i32* %762)
  %764 = icmp ne i64 %763, 0
  br i1 %764, label %765, label %794

765:                                              ; preds = %749
  %766 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %767 = load i32, i32* @GPIO_CTRL, align 4
  %768 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %766, i32 %767, i32* %10)
  %769 = load i32, i32* @GPIO_CTRL_DIR3, align 4
  %770 = call i32 @rt2x00_set_field32(i32* %10, i32 %769, i32 0)
  %771 = load i32, i32* @GPIO_CTRL_DIR6, align 4
  %772 = call i32 @rt2x00_set_field32(i32* %10, i32 %771, i32 0)
  %773 = load i32, i32* @GPIO_CTRL_VAL3, align 4
  %774 = call i32 @rt2x00_set_field32(i32* %10, i32 %773, i32 0)
  %775 = load i32, i32* @GPIO_CTRL_VAL6, align 4
  %776 = call i32 @rt2x00_set_field32(i32* %10, i32 %775, i32 0)
  %777 = load i32, i32* %8, align 4
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %782

779:                                              ; preds = %765
  %780 = load i32, i32* @GPIO_CTRL_VAL3, align 4
  %781 = call i32 @rt2x00_set_field32(i32* %10, i32 %780, i32 1)
  br label %789

782:                                              ; preds = %765
  %783 = load i32, i32* %8, align 4
  %784 = icmp eq i32 %783, 1
  br i1 %784, label %785, label %788

785:                                              ; preds = %782
  %786 = load i32, i32* @GPIO_CTRL_VAL6, align 4
  %787 = call i32 @rt2x00_set_field32(i32* %10, i32 %786, i32 1)
  br label %788

788:                                              ; preds = %785, %782
  br label %789

789:                                              ; preds = %788, %779
  %790 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %791 = load i32, i32* @GPIO_CTRL, align 4
  %792 = load i32, i32* %10, align 4
  %793 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %790, i32 %791, i32 %792)
  br label %794

794:                                              ; preds = %789, %749
  %795 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %796 = load i32, i32* @RT5390, align 4
  %797 = load i32, i32* @REV_RT5390R, align 4
  %798 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %795, i32 %796, i32 %797)
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %794
  %801 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %802 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %801, i32 150, i32 0)
  %803 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %804 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %803, i32 151, i32 0)
  %805 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %806 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %805, i32 154, i32 0)
  br label %807

807:                                              ; preds = %800, %794
  %808 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %809 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %808, i32 152, i32* %7)
  %810 = load i32, i32* %8, align 4
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %815

812:                                              ; preds = %807
  %813 = load i32, i32* @BBP152_RX_DEFAULT_ANT, align 4
  %814 = call i32 @rt2x00_set_field8(i32* %7, i32 %813, i32 1)
  br label %818

815:                                              ; preds = %807
  %816 = load i32, i32* @BBP152_RX_DEFAULT_ANT, align 4
  %817 = call i32 @rt2x00_set_field8(i32* %7, i32 %816, i32 0)
  br label %818

818:                                              ; preds = %815, %812
  %819 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %820 = load i32, i32* %7, align 4
  %821 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %819, i32 152, i32 %820)
  %822 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %823 = call i32 @rt2800_init_freq_calibration(%struct.rt2x00_dev* %822)
  br label %824

824:                                              ; preds = %818, %744
  store i32 0, i32* %4, align 4
  br label %825

825:                                              ; preds = %853, %824
  %826 = load i32, i32* %4, align 4
  %827 = load i32, i32* @EEPROM_BBP_SIZE, align 4
  %828 = icmp ult i32 %826, %827
  br i1 %828, label %829, label %856

829:                                              ; preds = %825
  %830 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %831 = load i64, i64* @EEPROM_BBP_START, align 8
  %832 = load i32, i32* %4, align 4
  %833 = zext i32 %832 to i64
  %834 = add nsw i64 %831, %833
  %835 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %830, i64 %834, i32* %5)
  %836 = load i32, i32* %5, align 4
  %837 = icmp ne i32 %836, 65535
  br i1 %837, label %838, label %852

838:                                              ; preds = %829
  %839 = load i32, i32* %5, align 4
  %840 = icmp ne i32 %839, 0
  br i1 %840, label %841, label %852

841:                                              ; preds = %838
  %842 = load i32, i32* %5, align 4
  %843 = load i32, i32* @EEPROM_BBP_REG_ID, align 4
  %844 = call i32 @rt2x00_get_field16(i32 %842, i32 %843)
  store i32 %844, i32* %6, align 4
  %845 = load i32, i32* %5, align 4
  %846 = load i32, i32* @EEPROM_BBP_VALUE, align 4
  %847 = call i32 @rt2x00_get_field16(i32 %845, i32 %846)
  store i32 %847, i32* %7, align 4
  %848 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %849 = load i32, i32* %6, align 4
  %850 = load i32, i32* %7, align 4
  %851 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %848, i32 %849, i32 %850)
  br label %852

852:                                              ; preds = %841, %838, %829
  br label %853

853:                                              ; preds = %852
  %854 = load i32, i32* %4, align 4
  %855 = add i32 %854, 1
  store i32 %855, i32* %4, align 4
  br label %825

856:                                              ; preds = %825
  store i32 0, i32* %2, align 4
  br label %857

857:                                              ; preds = %856, %31, %23
  %858 = load i32, i32* %2, align 4
  ret i32 %858
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rt2800_wait_bbp_rf_ready(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_wait_bbp_ready(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_init_bbp_5592(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_is_305x_soc(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt_rev(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i64, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_init_freq_calibration(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
