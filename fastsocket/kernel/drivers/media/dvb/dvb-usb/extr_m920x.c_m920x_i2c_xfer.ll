; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_NO_RD_ACK = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@M9206_I2C = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @m920x_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.dvb_usb_device* %15, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %222

21:                                               ; preds = %3
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 0
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %222

29:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %212, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %215

34:                                               ; preds = %30
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %37
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %42 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @I2C_M_TEN, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %34
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i64 %51
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %34
  %57 = load i32, i32* @ENOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %217

59:                                               ; preds = %48
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i64 %62
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @I2C_M_NOSTART, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %59
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @M9206_I2C, align 4
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i64 %76
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 1
  %81 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i64 %83
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @I2C_M_RD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = or i32 %80, %91
  %93 = call i32 @m920x_write(i32 %72, i32 %73, i32 %92, i32 128)
  store i32 %93, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %69
  br label %217

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %59
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i64 %100
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @I2C_M_RD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %159

107:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %155, %107
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 %112
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %109, %115
  br i1 %116, label %117, label %158

117:                                              ; preds = %108
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i64 %127
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %124, %130
  br label %132

132:                                              ; preds = %122, %117
  %133 = phi i1 [ false, %117 ], [ %131, %122 ]
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 64, i32 1
  store i32 %135, i32* %12, align 4
  %136 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %137 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @M9206_I2C, align 4
  %140 = load i32, i32* %12, align 4
  %141 = or i32 32, %140
  %142 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i64 %144
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @m920x_read(i32 %138, i32 %139, i32 0, i32 %141, i32* %150, i32 1)
  store i32 %151, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %132
  br label %217

154:                                              ; preds = %132
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %108

158:                                              ; preds = %108
  br label %211

159:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %207, %159
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i64 %164
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %161, %167
  br i1 %168, label %169, label %210

169:                                              ; preds = %160
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  %177 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i64 %179
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %176, %182
  br label %184

184:                                              ; preds = %174, %169
  %185 = phi i1 [ false, %169 ], [ %183, %174 ]
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 64, i32 0
  store i32 %187, i32* %13, align 4
  %188 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %189 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @M9206_I2C, align 4
  %192 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i64 %194
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @m920x_write(i32 %190, i32 %191, i32 %201, i32 %202)
  store i32 %203, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %184
  br label %217

206:                                              ; preds = %184
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %160

210:                                              ; preds = %160
  br label %211

211:                                              ; preds = %210, %158
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %30

215:                                              ; preds = %30
  %216 = load i32, i32* %7, align 4
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %215, %205, %153, %95, %56
  %218 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %219 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %218, i32 0, i32 0
  %220 = call i32 @mutex_unlock(i32* %219)
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %217, %26, %18
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @m920x_write(i32, i32, i32, i32) #1

declare dso_local i32 @m920x_read(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
