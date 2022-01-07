; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"width:%d, height:%d, mode:%d, sub:%d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid size (%d, %d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Requested dimensions are too small\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid width/height combination (%d, %d)\00", align 1
@EIO = common dso_local global i32 0, align 4
@BRG_OV518 = common dso_local global i64 0, align 8
@ov518_color = common dso_local global i64 0, align 8
@VIDEO_PALETTE_GREY = common dso_local global i32 0, align 4
@BRG_OV518PLUS = common dso_local global i64 0, align 8
@OV511_RESET_NOREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32, i32, i32, i32)* @ov518_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov518_mode_init_regs(%struct.usb_ov511* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_ov511*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %19 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %22 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %17, %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @PDEBUG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = srem i32 %30, 16
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %34, 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %258

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %46 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %52 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %43
  %56 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %258

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 320
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 240
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %14, align 4
  br label %80

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 320
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp sge i32 %70, 240
  br i1 %71, label %72, label %78

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %258

78:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %82 = call i64 @ov51x_stop(%struct.usb_ov511* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %258

87:                                               ; preds = %80
  %88 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %89 = call i32 @reg_w(%struct.usb_ov511* %88, i32 43, i32 0)
  %90 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %91 = call i32 @reg_w(%struct.usb_ov511* %90, i32 44, i32 0)
  %92 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %93 = call i32 @reg_w(%struct.usb_ov511* %92, i32 45, i32 0)
  %94 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %95 = call i32 @reg_w(%struct.usb_ov511* %94, i32 46, i32 0)
  %96 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %97 = call i32 @reg_w(%struct.usb_ov511* %96, i32 59, i32 0)
  %98 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %99 = call i32 @reg_w(%struct.usb_ov511* %98, i32 60, i32 0)
  %100 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %101 = call i32 @reg_w(%struct.usb_ov511* %100, i32 61, i32 0)
  %102 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %103 = call i32 @reg_w(%struct.usb_ov511* %102, i32 62, i32 0)
  %104 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %105 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BRG_OV518, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %87
  %110 = load i64, i64* @ov518_color, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %109
  %113 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %114 = call i32 @i2c_w_mask(%struct.usb_ov511* %113, i32 21, i32 0, i32 1)
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %120 = call i32 @reg_w_mask(%struct.usb_ov511* %119, i32 32, i32 0, i32 8)
  %121 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %122 = call i32 @reg_w_mask(%struct.usb_ov511* %121, i32 40, i32 0, i32 240)
  %123 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %124 = call i32 @reg_w_mask(%struct.usb_ov511* %123, i32 56, i32 0, i32 240)
  br label %132

125:                                              ; preds = %112
  %126 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %127 = call i32 @reg_w_mask(%struct.usb_ov511* %126, i32 32, i32 8, i32 8)
  %128 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %129 = call i32 @reg_w_mask(%struct.usb_ov511* %128, i32 40, i32 128, i32 240)
  %130 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %131 = call i32 @reg_w_mask(%struct.usb_ov511* %130, i32 56, i32 128, i32 240)
  br label %132

132:                                              ; preds = %125, %118
  br label %148

133:                                              ; preds = %109, %87
  %134 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 128
  %140 = call i32 @reg_w(%struct.usb_ov511* %134, i32 40, i32 %139)
  %141 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 0, i32 128
  %147 = call i32 @reg_w(%struct.usb_ov511* %141, i32 56, i32 %146)
  br label %148

148:                                              ; preds = %133, %132
  %149 = load i32, i32* %8, align 4
  %150 = sdiv i32 %149, 16
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sdiv i32 %151, 4
  store i32 %152, i32* %13, align 4
  %153 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @reg_w(%struct.usb_ov511* %153, i32 41, i32 %154)
  %156 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @reg_w(%struct.usb_ov511* %156, i32 42, i32 %157)
  %159 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @reg_w(%struct.usb_ov511* %159, i32 57, i32 %160)
  %162 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @reg_w(%struct.usb_ov511* %162, i32 58, i32 %163)
  %165 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %166 = call i32 @reg_w(%struct.usb_ov511* %165, i32 47, i32 128)
  %167 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %168 = call i32 @reg_w(%struct.usb_ov511* %167, i32 81, i32 2)
  %169 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %170 = call i32 @reg_w(%struct.usb_ov511* %169, i32 34, i32 24)
  %171 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %172 = call i32 @reg_w(%struct.usb_ov511* %171, i32 35, i32 255)
  %173 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %174 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @BRG_OV518PLUS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %148
  %179 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %180 = call i32 @reg_w(%struct.usb_ov511* %179, i32 33, i32 25)
  br label %184

181:                                              ; preds = %148
  %182 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %183 = call i32 @reg_w(%struct.usb_ov511* %182, i32 113, i32 25)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %186 = call i32 @i2c_w(%struct.usb_ov511* %185, i32 84, i32 35)
  %187 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %188 = call i32 @reg_w(%struct.usb_ov511* %187, i32 47, i32 128)
  %189 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %190 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @BRG_OV518PLUS, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %217

194:                                              ; preds = %184
  %195 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %196 = call i32 @reg_w(%struct.usb_ov511* %195, i32 36, i32 148)
  %197 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %198 = call i32 @reg_w(%struct.usb_ov511* %197, i32 37, i32 144)
  %199 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %200 = call i32 @ov518_reg_w32(%struct.usb_ov511* %199, i32 196, i32 400, i32 2)
  %201 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %202 = call i32 @ov518_reg_w32(%struct.usb_ov511* %201, i32 198, i32 540, i32 2)
  %203 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %204 = call i32 @ov518_reg_w32(%struct.usb_ov511* %203, i32 199, i32 540, i32 2)
  %205 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %206 = call i32 @ov518_reg_w32(%struct.usb_ov511* %205, i32 200, i32 108, i32 2)
  %207 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %208 = call i32 @ov518_reg_w32(%struct.usb_ov511* %207, i32 202, i32 131098, i32 3)
  %209 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %210 = call i32 @ov518_reg_w32(%struct.usb_ov511* %209, i32 203, i32 532, i32 2)
  %211 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %212 = call i32 @ov518_reg_w32(%struct.usb_ov511* %211, i32 204, i32 2400, i32 2)
  %213 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %214 = call i32 @ov518_reg_w32(%struct.usb_ov511* %213, i32 205, i32 32, i32 2)
  %215 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %216 = call i32 @ov518_reg_w32(%struct.usb_ov511* %215, i32 206, i32 608, i32 2)
  br label %240

217:                                              ; preds = %184
  %218 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %219 = call i32 @reg_w(%struct.usb_ov511* %218, i32 36, i32 159)
  %220 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %221 = call i32 @reg_w(%struct.usb_ov511* %220, i32 37, i32 144)
  %222 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %223 = call i32 @ov518_reg_w32(%struct.usb_ov511* %222, i32 196, i32 400, i32 2)
  %224 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %225 = call i32 @ov518_reg_w32(%struct.usb_ov511* %224, i32 198, i32 500, i32 2)
  %226 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %227 = call i32 @ov518_reg_w32(%struct.usb_ov511* %226, i32 199, i32 500, i32 2)
  %228 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %229 = call i32 @ov518_reg_w32(%struct.usb_ov511* %228, i32 200, i32 142, i32 2)
  %230 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %231 = call i32 @ov518_reg_w32(%struct.usb_ov511* %230, i32 202, i32 131098, i32 3)
  %232 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %233 = call i32 @ov518_reg_w32(%struct.usb_ov511* %232, i32 203, i32 532, i32 2)
  %234 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %235 = call i32 @ov518_reg_w32(%struct.usb_ov511* %234, i32 204, i32 2000, i32 2)
  %236 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %237 = call i32 @ov518_reg_w32(%struct.usb_ov511* %236, i32 205, i32 32, i32 2)
  %238 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %239 = call i32 @ov518_reg_w32(%struct.usb_ov511* %238, i32 206, i32 608, i32 2)
  br label %240

240:                                              ; preds = %217, %194
  %241 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %242 = call i32 @reg_w(%struct.usb_ov511* %241, i32 47, i32 128)
  %243 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %244 = call i64 @ov51x_restart(%struct.usb_ov511* %243)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* @EIO, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %6, align 4
  br label %258

249:                                              ; preds = %240
  %250 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %251 = load i32, i32* @OV511_RESET_NOREGS, align 4
  %252 = call i64 @ov51x_reset(%struct.usb_ov511* %250, i32 %251)
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i32, i32* @EIO, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %6, align 4
  br label %258

257:                                              ; preds = %249
  store i32 0, i32* %6, align 4
  br label %258

258:                                              ; preds = %257, %254, %246, %84, %72, %55, %37
  %259 = load i32, i32* %6, align 4
  ret i32 %259
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i64 @ov51x_stop(%struct.usb_ov511*) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @i2c_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i32 @reg_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @ov518_reg_w32(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i64 @ov51x_restart(%struct.usb_ov511*) #1

declare dso_local i64 @ov51x_reset(%struct.usb_ov511*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
