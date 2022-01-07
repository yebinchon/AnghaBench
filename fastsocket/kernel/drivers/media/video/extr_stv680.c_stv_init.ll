; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i8, i32, i32, i32, i8, i32, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"STV(e): Out of (small buf) memory\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"STV(e): set config 1,0,0 failed\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"STV(e): camera ping failed!!\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"STV(e): Could not get descriptor 0200.\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"STV(e): There are NO supported STV680 modes!!\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"STV(i): CIF is supported\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"STV(i): QVGA is supported\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"STV(i): Firmware rev is %i.%i\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"STV(i): ASIC rev is %i.%i\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"STV(i): Sensor ID is %i\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"STV(i): Camera has %i pictures.\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"STV(i): Set_Camera_Mode failed\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"STV(e): Error setting camera video mode!\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"STV(i): Video Mode set to CIF\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"STV(i): Video Mode set to QVGA\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"STV(i): last error: %i,  command = 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"STV(i): cwidth = %i, cheight = %i\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"STV(i): width = %i, height = %i, rawbufsize = %li\00", align 1
@STV_VIDEO_PALETTE = common dso_local global i32 0, align 4
@swapRGB_on = common dso_local global i32 0, align 4
@swapRGB = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"STV(i): swapRGB is (auto) OFF\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"STV(i): swapRGB is (auto) ON\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"STV(i): swapRGB is (forced) ON\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"STV(i): swapRGB is (forced) OFF\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"STV(e): Could not set video mode in stv_init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*)* @stv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv_init(%struct.usb_stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_stv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_stv* %0, %struct.usb_stv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 40, i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %482

13:                                               ; preds = %1
  %14 = call i32 @udelay(i32 100)
  %15 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %16 = call i32 @stv_set_config(%struct.usb_stv* %15, i32 1, i32 0, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @kfree(i8* %19)
  %21 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %482

22:                                               ; preds = %13
  %23 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %23, i32 136, i32 22136, i8* %24, i32 2)
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %346

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 86
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 120
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28
  %41 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %346

42:                                               ; preds = %34
  %43 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @stv_sndctrl(i32 2, %struct.usb_stv* %43, i32 6, i32 512, i8* %44, i32 9)
  store i32 %45, i32* %4, align 4
  %46 = icmp ne i32 %45, 9
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %346

48:                                               ; preds = %42
  %49 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @stv_sndctrl(i32 2, %struct.usb_stv* %49, i32 6, i32 512, i8* %50, i32 34)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 7
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 160
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %346

68:                                               ; preds = %60, %54, %48
  %69 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %69, i32 138, i32 0, i8* %70, i32 2)
  store i32 %71, i32* %4, align 4
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %346

74:                                               ; preds = %68
  %75 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %75, i32 139, i32 0, i8* %76, i32 36)
  store i32 %77, i32* %4, align 4
  %78 = icmp ne i32 %77, 36
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %346

80:                                               ; preds = %74
  %81 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %81, i32 133, i32 0, i8* %82, i32 16)
  store i32 %83, i32* %4, align 4
  %84 = icmp ne i32 %83, 16
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %346

86:                                               ; preds = %80
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 7
  %89 = load i8, i8* %88, align 1
  %90 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %91 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %90, i32 0, i32 0
  store i8 %89, i8* %91, align 8
  %92 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %93 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 8
  %95 = zext i8 %94 to i32
  store i32 %95, i32* %4, align 4
  %96 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %97 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %99 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  %100 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %101 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %86
  %106 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %107 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %86
  %109 = load i32, i32* %4, align 4
  %110 = and i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %114 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %121 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %120, i32 0, i32 3
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %124 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 8
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %346

130:                                              ; preds = %122
  %131 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %132 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130
  %138 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %139 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %137
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %149, i32 %153)
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %158, i32 %162)
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 4
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = mul nsw i32 %167, 16
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 5
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = ashr i32 %172, 4
  %174 = add nsw i32 %168, %173
  %175 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %174)
  %176 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %177 = call i32 @stv_set_config(%struct.usb_stv* %176, i32 1, i32 0, i32 1)
  store i32 %177, i32* %4, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %145
  br label %346

180:                                              ; preds = %145
  %181 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %182 = load i8*, i8** %5, align 8
  %183 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %181, i32 133, i32 0, i8* %182, i32 16)
  store i32 %183, i32* %4, align 4
  %184 = icmp ne i32 %183, 16
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %346

186:                                              ; preds = %180
  %187 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %187, i32 141, i32 0, i8* %188, i32 8)
  store i32 %189, i32* %4, align 4
  %190 = icmp ne i32 %189, 8
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %346

192:                                              ; preds = %186
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 3
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %4, align 4
  %198 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %197)
  %199 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %199, i32 135, i32 0, i8* %200, i32 8)
  store i32 %201, i32* %4, align 4
  %202 = icmp ne i32 %201, 8
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  br label %346

204:                                              ; preds = %192
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %209 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %208, i32 0, i32 4
  store i8 %207, i8* %209, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = call i32 @memset(i8* %210, i32 0, i32 8)
  %212 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %213 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %204
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  store i8 0, i8* %218, align 1
  br label %228

219:                                              ; preds = %204
  %220 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %221 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  store i8 3, i8* %226, align 1
  br label %227

227:                                              ; preds = %224, %219
  br label %228

228:                                              ; preds = %227, %216
  %229 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = call i32 @stv_sndctrl(i32 3, %struct.usb_stv* %229, i32 7, i32 256, i8* %230, i32 8)
  store i32 %231, i32* %4, align 4
  %232 = icmp ne i32 %231, 8
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %346

235:                                              ; preds = %228
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  store i8 -16, i8* %237, align 1
  %238 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %239 = load i8*, i8** %5, align 8
  %240 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %238, i32 135, i32 0, i8* %239, i32 8)
  %241 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %242 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %251

245:                                              ; preds = %235
  %246 = load i8*, i8** %5, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %262, label %251

251:                                              ; preds = %245, %235
  %252 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %253 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %264

256:                                              ; preds = %251
  %257 = load i8*, i8** %5, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 3
  br i1 %261, label %262, label %264

262:                                              ; preds = %256, %245
  %263 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %346

264:                                              ; preds = %256, %251
  %265 = load i8*, i8** %5, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %272 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %271, i32 0, i32 5
  store i32 0, i32* %272, align 4
  %273 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %274

274:                                              ; preds = %270, %264
  %275 = load i8*, i8** %5, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 0
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp eq i32 %278, 3
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %282 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %281, i32 0, i32 5
  store i32 768, i32* %282, align 4
  %283 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %284

284:                                              ; preds = %280, %274
  br label %285

285:                                              ; preds = %284
  %286 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %287 = load i8*, i8** %5, align 8
  %288 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %286, i32 143, i32 0, i8* %287, i32 16)
  store i32 %288, i32* %4, align 4
  %289 = icmp ne i32 %288, 16
  br i1 %289, label %290, label %291

290:                                              ; preds = %285
  br label %346

291:                                              ; preds = %285
  %292 = load i8*, i8** %5, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl i32 %295, 24
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 1
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = shl i32 %300, 16
  %302 = or i32 %296, %301
  %303 = load i8*, i8** %5, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 2
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = shl i32 %306, 8
  %308 = or i32 %302, %307
  %309 = load i8*, i8** %5, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 3
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = or i32 %308, %312
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %6, align 8
  %315 = load i8*, i8** %5, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 4
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = shl i32 %318, 8
  %320 = load i8*, i8** %5, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 5
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = or i32 %319, %323
  %325 = trunc i32 %324 to i8
  %326 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %327 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %326, i32 0, i32 6
  store i8 %325, i8* %327, align 8
  %328 = load i8*, i8** %5, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 6
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = shl i32 %331, 8
  %333 = load i8*, i8** %5, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 7
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = or i32 %332, %336
  %338 = trunc i32 %337 to i8
  %339 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %340 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %339, i32 0, i32 7
  store i8 %338, i8* %340, align 1
  %341 = load i8*, i8** %5, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 12
  %343 = load i8, i8* %342, align 1
  %344 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %345 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %344, i32 0, i32 8
  store i8 %343, i8* %345, align 2
  br label %361

346:                                              ; preds = %290, %262, %233, %203, %191, %185, %179, %128, %85, %79, %73, %66, %47, %40, %27
  %347 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %348 = load i8*, i8** %5, align 8
  %349 = call i32 @stv_sndctrl(i32 0, %struct.usb_stv* %347, i32 128, i32 0, i8* %348, i32 2)
  store i32 %349, i32* %4, align 4
  %350 = load i8*, i8** %5, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 0
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = load i8*, i8** %5, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 1
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %353, i32 %357)
  %359 = load i8*, i8** %5, align 8
  %360 = call i32 @kfree(i8* %359)
  store i32 -1, i32* %2, align 4
  br label %482

361:                                              ; preds = %291
  %362 = load i8*, i8** %5, align 8
  %363 = call i32 @kfree(i8* %362)
  %364 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %365 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 1
  br i1 %367, label %368, label %377

368:                                              ; preds = %361
  %369 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %370 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %369, i32 0, i32 9
  store i32 352, i32* %370, align 4
  %371 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %372 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %371, i32 0, i32 10
  store i32 288, i32* %372, align 8
  %373 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %374 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %373, i32 0, i32 11
  store i32 352, i32* %374, align 4
  %375 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %376 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %375, i32 0, i32 12
  store i32 288, i32* %376, align 8
  br label %377

377:                                              ; preds = %368, %361
  %378 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %379 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %391

382:                                              ; preds = %377
  %383 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %384 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %383, i32 0, i32 9
  store i32 320, i32* %384, align 4
  %385 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %386 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %385, i32 0, i32 10
  store i32 240, i32* %386, align 8
  %387 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %388 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %387, i32 0, i32 11
  store i32 320, i32* %388, align 4
  %389 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %390 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %389, i32 0, i32 12
  store i32 240, i32* %390, align 8
  br label %391

391:                                              ; preds = %382, %377
  %392 = load i64, i64* %6, align 8
  %393 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %394 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %393, i32 0, i32 13
  store i64 %392, i64* %394, align 8
  %395 = load i64, i64* %6, align 8
  %396 = mul i64 %395, 3
  %397 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %398 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %397, i32 0, i32 14
  store i64 %396, i64* %398, align 8
  %399 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %400 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %399, i32 0, i32 6
  %401 = load i8, i8* %400, align 8
  %402 = zext i8 %401 to i32
  %403 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %404 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %403, i32 0, i32 7
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i32
  %407 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %402, i32 %406)
  %408 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %409 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %408, i32 0, i32 11
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %412 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %411, i32 0, i32 12
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %415 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %414, i32 0, i32 13
  %416 = load i64, i64* %415, align 8
  %417 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %410, i32 %413, i64 %416)
  %418 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %419 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %418, i32 0, i32 15
  store i32 130, i32* %419, align 8
  %420 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %421 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %420, i32 0, i32 28
  store i64 0, i64* %421, align 8
  %422 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %423 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %422, i32 0, i32 27
  store i64 0, i64* %423, align 8
  %424 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %425 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %424, i32 0, i32 26
  store i64 0, i64* %425, align 8
  %426 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %427 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %426, i32 0, i32 25
  store i64 0, i64* %427, align 8
  %428 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %429 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %428, i32 0, i32 24
  store i64 0, i64* %429, align 8
  %430 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %431 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %430, i32 0, i32 16
  store i32 32767, i32* %431, align 4
  %432 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %433 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %432, i32 0, i32 23
  store i64 0, i64* %433, align 8
  %434 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %435 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %434, i32 0, i32 22
  store i64 0, i64* %435, align 8
  %436 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %437 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %436, i32 0, i32 17
  store i32 32767, i32* %437, align 8
  %438 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %439 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %438, i32 0, i32 18
  store i32 32767, i32* %439, align 4
  %440 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %441 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %440, i32 0, i32 19
  store i32 32767, i32* %441, align 8
  %442 = load i32, i32* @STV_VIDEO_PALETTE, align 4
  %443 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %444 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %443, i32 0, i32 21
  store i32 %442, i32* %444, align 8
  %445 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %446 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %445, i32 0, i32 20
  store i32 24, i32* %446, align 4
  %447 = load i32, i32* @swapRGB_on, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %391
  %450 = load i32, i32* @swapRGB, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %449
  %453 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %475

454:                                              ; preds = %449, %391
  %455 = load i32, i32* @swapRGB_on, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %454
  %458 = load i32, i32* @swapRGB, align 4
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %462

460:                                              ; preds = %457
  %461 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  br label %474

462:                                              ; preds = %457, %454
  %463 = load i32, i32* @swapRGB_on, align 4
  %464 = icmp eq i32 %463, 1
  br i1 %464, label %465, label %467

465:                                              ; preds = %462
  %466 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %473

467:                                              ; preds = %462
  %468 = load i32, i32* @swapRGB_on, align 4
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %472

470:                                              ; preds = %467
  %471 = call i32 (i32, i8*, ...) @PDEBUG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  br label %472

472:                                              ; preds = %470, %467
  br label %473

473:                                              ; preds = %472, %465
  br label %474

474:                                              ; preds = %473, %460
  br label %475

475:                                              ; preds = %474, %452
  %476 = load %struct.usb_stv*, %struct.usb_stv** %3, align 8
  %477 = call i64 @stv_set_video_mode(%struct.usb_stv* %476)
  %478 = icmp slt i64 %477, 0
  br i1 %478, label %479, label %481

479:                                              ; preds = %475
  %480 = call i32 (i32, i8*, ...) @PDEBUG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %482

481:                                              ; preds = %475
  store i32 0, i32* %2, align 4
  br label %482

482:                                              ; preds = %481, %479, %346, %18, %11
  %483 = load i32, i32* %2, align 4
  ret i32 %483
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @stv_set_config(%struct.usb_stv*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @stv_sndctrl(i32, %struct.usb_stv*, i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @stv_set_video_mode(%struct.usb_stv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
