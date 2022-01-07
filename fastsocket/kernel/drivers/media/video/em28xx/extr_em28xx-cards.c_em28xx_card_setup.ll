; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_card_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.em28xx = type { i32, i32, i64, i32, i32, i64, i32, i32, %struct.TYPE_6__, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_5__, i64, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.tveeprom = type { i32, i64 }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Board not discovered\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Identified as %s (card=%d)\0A\00", align 1
@em28xx_boards = common dso_local global %struct.TYPE_8__* null, align 8
@V4L2_IDENT_MSPX4XX = common dso_local global i32 0, align 4
@EM28XX_R08_GPIO = common dso_local global i32 0, align 4
@EM28XX_ANALOG_MODE = common dso_local global i32 0, align 4
@EM28XX_BOARD_NOT_VALIDATED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"The support for this board weren't valid yet.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Please send a report of having this working\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"not to V4L mailing list (and/or to other addresses)\0A\0A\00", align 1
@tuner = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"msp3400\00", align 1
@msp3400_addrs = common dso_local global i32* null, align 8
@EM28XX_SAA711X = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"saa7115_auto\00", align 1
@saa711x_addrs = common dso_local global i32* null, align 8
@EM28XX_TVP5150 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"tvp5150\00", align 1
@tvp5150_addrs = common dso_local global i32* null, align 8
@EM28XX_MT9V011 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"mt9v011\00", align 1
@mt9v011_addrs = common dso_local global i32* null, align 8
@core = common dso_local global i32 0, align 4
@s_config = common dso_local global i32 0, align 4
@EM28XX_TVAUDIO = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"tvaudio\00", align 1
@TUNER_ABSENT = common dso_local global i64 0, align 8
@TDA9887_PRESENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@ADDRS_DEMOD = common dso_local global i32 0, align 4
@ADDRS_TV_WITH_DEMOD = common dso_local global i32 0, align 4
@ADDRS_TV = common dso_local global i32 0, align 4
@disable_ir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_card_setup(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.tveeprom, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 12
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %15 = call i64 @em28xx_hint_sensor(%struct.em28xx* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 12
  store i64 0, i64* %20, align 8
  br label %24

21:                                               ; preds = %13
  %22 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 12
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %25
  %32 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %47 [
    i32 135, label %35
    i32 138, label %35
  ]

35:                                               ; preds = %31, %31
  %36 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %37 = call i32 @em28xx_hint_board(%struct.em28xx* %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %46

41:                                               ; preds = %35
  %42 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %43 = call i32 @em28xx_set_model(%struct.em28xx* %42)
  %44 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %45 = call i32 @em28xx_pre_card_setup(%struct.em28xx* %44)
  br label %46

46:                                               ; preds = %41, %39
  br label %50

47:                                               ; preds = %31
  %48 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %49 = call i32 @em28xx_set_model(%struct.em28xx* %48)
  br label %50

50:                                               ; preds = %47, %46
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @em28xx_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %61 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 10
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %71 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %72 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %51
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %81 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %82 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %89 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %79, %51
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %92 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %93 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %90
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @em28xx_boards, align 8
  %102 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %103 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %110 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %100, %90
  %112 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %113 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %186 [
    i32 137, label %115
    i32 134, label %115
    i32 133, label %115
    i32 129, label %115
    i32 128, label %115
    i32 131, label %140
    i32 136, label %148
    i32 135, label %152
    i32 138, label %152
    i32 132, label %152
    i32 130, label %169
  ]

115:                                              ; preds = %111, %111, %111, %111, %111
  %116 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %117 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %116, i32 0, i32 12
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 80, i32* %118, align 4
  %119 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %120 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %119, i32 0, i32 12
  %121 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %122 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @tveeprom_hauppauge_analog(%struct.TYPE_7__* %120, %struct.tveeprom* %3, i32 %123)
  %125 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %128 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %127, i32 0, i32 10
  store i64 %126, i64* %128, align 8
  %129 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @V4L2_IDENT_MSPX4XX, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %115
  %134 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %135 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %134, i32 0, i32 4
  store i32 2048000, i32* %135, align 4
  %136 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %137 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %133, %115
  br label %186

140:                                              ; preds = %111
  %141 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %142 = call i32 @em28xx_write_reg(%struct.em28xx* %141, i32 13, i32 66)
  %143 = call i32 @msleep(i32 10)
  %144 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %145 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %146 = call i32 @em28xx_write_reg(%struct.em28xx* %144, i32 %145, i32 253)
  %147 = call i32 @msleep(i32 10)
  br label %186

148:                                              ; preds = %111
  %149 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %150 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %151 = call i32 @em28xx_write_reg(%struct.em28xx* %149, i32 %150, i32 249)
  br label %186

152:                                              ; preds = %111, %111, %111
  %153 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %154 = call i32 @em28xx_hint_board(%struct.em28xx* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %158 = call i32 @em28xx_set_model(%struct.em28xx* %157)
  br label %159

159:                                              ; preds = %156, %152
  %160 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %161 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %162 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %161, i32 0, i32 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @em28xx_gpio_set(%struct.em28xx* %160, i32 %164)
  %166 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %167 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %168 = call i32 @em28xx_set_mode(%struct.em28xx* %166, i32 %167)
  br label %186

169:                                              ; preds = %111
  %170 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %171 = call i32 @em28xx_hint_board(%struct.em28xx* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %175 = call i32 @em28xx_set_model(%struct.em28xx* %174)
  br label %176

176:                                              ; preds = %173, %169
  %177 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %178 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %179 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @em28xx_gpio_set(%struct.em28xx* %177, i32 %181)
  %183 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %184 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %185 = call i32 @em28xx_set_mode(%struct.em28xx* %183, i32 %184)
  br label %186

186:                                              ; preds = %111, %176, %159, %148, %140, %139
  %187 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %188 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %187, i32 0, i32 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %194 = call i32 @em28xx_register_snapshot_button(%struct.em28xx* %193)
  br label %195

195:                                              ; preds = %192, %186
  %196 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %197 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @EM28XX_BOARD_NOT_VALIDATED, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %204 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %205 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %206 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %207

207:                                              ; preds = %202, %195
  %208 = load i64, i64* @tuner, align 8
  %209 = icmp sge i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i64, i64* @tuner, align 8
  %212 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %213 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %212, i32 0, i32 10
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %210, %207
  %215 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %216 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %215, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %214
  %221 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %222 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %221, i32 0, i32 7
  %223 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %224 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %223, i32 0, i32 6
  %225 = load i32*, i32** @msp3400_addrs, align 8
  %226 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %222, i32* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 0, i32* %225)
  br label %227

227:                                              ; preds = %220, %214
  %228 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %229 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @EM28XX_SAA711X, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %227
  %235 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %236 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %235, i32 0, i32 7
  %237 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %238 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %237, i32 0, i32 6
  %239 = load i32*, i32** @saa711x_addrs, align 8
  %240 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %236, i32* %238, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 0, i32* %239)
  br label %241

241:                                              ; preds = %234, %227
  %242 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %243 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %242, i32 0, i32 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @EM28XX_TVP5150, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %241
  %249 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %250 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %249, i32 0, i32 7
  %251 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %252 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %251, i32 0, i32 6
  %253 = load i32*, i32** @tvp5150_addrs, align 8
  %254 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %250, i32* %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 0, i32* %253)
  br label %255

255:                                              ; preds = %248, %241
  %256 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %257 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @EM28XX_MT9V011, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %255
  %262 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %263 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %262, i32 0, i32 7
  %264 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %265 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %264, i32 0, i32 6
  %266 = load i32*, i32** @mt9v011_addrs, align 8
  %267 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %263, i32* %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 0, i32* %266)
  store %struct.v4l2_subdev* %267, %struct.v4l2_subdev** %4, align 8
  %268 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %269 = load i32, i32* @core, align 4
  %270 = load i32, i32* @s_config, align 4
  %271 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %272 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %271, i32 0, i32 9
  %273 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %268, i32 %269, i32 %270, i32 0, i32* %272)
  br label %274

274:                                              ; preds = %261, %255
  %275 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %276 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %275, i32 0, i32 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @EM28XX_TVAUDIO, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %291

281:                                              ; preds = %274
  %282 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %283 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %282, i32 0, i32 7
  %284 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %285 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %284, i32 0, i32 6
  %286 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %287 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %286, i32 0, i32 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %283, i32* %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 %289, i32* null)
  br label %291

291:                                              ; preds = %281, %274
  %292 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %293 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %292, i32 0, i32 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @TUNER_ABSENT, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %370

298:                                              ; preds = %291
  %299 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %300 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @TDA9887_PRESENT, align 4
  %303 = and i32 %301, %302
  store i32 %303, i32* %5, align 4
  %304 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %305 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %304, i32 0, i32 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 7
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %298
  %311 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %312 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %311, i32 0, i32 7
  %313 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %314 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %313, i32 0, i32 6
  %315 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %316 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %315, i32 0, i32 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 6
  %318 = load i64, i64* %317, align 8
  %319 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %312, i32* %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 %318, i32* null)
  br label %320

320:                                              ; preds = %310, %298
  %321 = load i32, i32* %5, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  %324 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %325 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %324, i32 0, i32 7
  %326 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %327 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %326, i32 0, i32 6
  %328 = load i32, i32* @ADDRS_DEMOD, align 4
  %329 = call i32* @v4l2_i2c_tuner_addrs(i32 %328)
  %330 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %325, i32* %327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 0, i32* %329)
  br label %331

331:                                              ; preds = %323, %320
  %332 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %333 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %360

336:                                              ; preds = %331
  %337 = load i32, i32* %5, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load i32, i32* @ADDRS_TV_WITH_DEMOD, align 4
  br label %343

341:                                              ; preds = %336
  %342 = load i32, i32* @ADDRS_TV, align 4
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi i32 [ %340, %339 ], [ %342, %341 ]
  store i32 %344, i32* %6, align 4
  %345 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %346 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %345, i32 0, i32 7
  %347 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %348 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %347, i32 0, i32 6
  %349 = load i32, i32* %6, align 4
  %350 = call i32* @v4l2_i2c_tuner_addrs(i32 %349)
  %351 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %346, i32* %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 0, i32* %350)
  store %struct.v4l2_subdev* %351, %struct.v4l2_subdev** %7, align 8
  %352 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %353 = icmp ne %struct.v4l2_subdev* %352, null
  br i1 %353, label %354, label %359

354:                                              ; preds = %343
  %355 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %356 = call i64 @v4l2_i2c_subdev_addr(%struct.v4l2_subdev* %355)
  %357 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %358 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %357, i32 0, i32 2
  store i64 %356, i64* %358, align 8
  br label %359

359:                                              ; preds = %354, %343
  br label %369

360:                                              ; preds = %331
  %361 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %362 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %361, i32 0, i32 7
  %363 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %364 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %363, i32 0, i32 6
  %365 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %366 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %362, i32* %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 %367, i32* null)
  br label %369

369:                                              ; preds = %360, %359
  br label %370

370:                                              ; preds = %369, %291
  %371 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %372 = call i32 @em28xx_tuner_setup(%struct.em28xx* %371)
  %373 = load i32, i32* @disable_ir, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %370
  %376 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %377 = call i32 @em28xx_ir_init(%struct.em28xx* %376)
  br label %378

378:                                              ; preds = %375, %370
  ret void
}

declare dso_local i64 @em28xx_hint_sensor(%struct.em28xx*) #1

declare dso_local i32 @em28xx_hint_board(%struct.em28xx*) #1

declare dso_local i32 @em28xx_errdev(i8*) #1

declare dso_local i32 @em28xx_set_model(%struct.em28xx*) #1

declare dso_local i32 @em28xx_pre_card_setup(%struct.em28xx*) #1

declare dso_local i32 @em28xx_info(i8*, i32, i32) #1

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.TYPE_7__*, %struct.tveeprom*, i32) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_register_snapshot_button(%struct.em28xx*) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32*, i32*, i8*, i64, i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32, i32*) #1

declare dso_local i32* @v4l2_i2c_tuner_addrs(i32) #1

declare dso_local i64 @v4l2_i2c_subdev_addr(%struct.v4l2_subdev*) #1

declare dso_local i32 @em28xx_tuner_setup(%struct.em28xx*) #1

declare dso_local i32 @em28xx_ir_init(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
