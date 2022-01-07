; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ec168.c_ec168_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ec168.c_ec168_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i64, i64*, i64 }
%struct.dvb_usb_device = type { i32 }
%struct.ec168_req = type { i64, i64, i64*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ec168_ec100_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@READ_DEMOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"I2C read not implemented\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@WRITE_DEMOD = common dso_local global i32 0, align 4
@WRITE_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ec168_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec168_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.ec168_req, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %189

19:                                               ; preds = %3
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %189

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %181, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %182

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %32
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %41
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I2C_M_RD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %37
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i64 %51
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ec168_ec100_config, i32 0, i32 0), align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = load i32, i32* @READ_DEMOD, align 4
  %59 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 65280, %68
  %70 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 3
  store i64 %77, i64* %78, align 8
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %82
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 2
  store i64* %86, i64** %87, align 8
  %88 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %89 = call i32 @ec168_ctrl_msg(%struct.dvb_usb_device* %88, %struct.ec168_req* %9)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %10, align 4
  br label %98

92:                                               ; preds = %48
  %93 = call i32 @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @ENOSYS, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %92, %57
  br label %177

99:                                               ; preds = %37, %32
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 %102
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ec168_ec100_config, i32 0, i32 0), align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %99
  %109 = load i32, i32* @WRITE_DEMOD, align 4
  %110 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 4
  store i32 %109, i32* %110, align 8
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i64 %113
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i64 %122
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 65280, %127
  %129 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 1
  store i64 %128, i64* %129, align 8
  %130 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 2
  store i64* null, i64** %131, align 8
  %132 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %133 = call i32 @ec168_ctrl_msg(%struct.dvb_usb_device* %132, %struct.ec168_req* %9)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %176

136:                                              ; preds = %99
  %137 = load i32, i32* @WRITE_I2C, align 4
  %138 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 4
  store i32 %137, i32* %138, align 8
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 %141
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i64 %150
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 256, %153
  %155 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 1
  store i64 %154, i64* %155, align 8
  %156 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i64 %158
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %161, 1
  %163 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 3
  store i64 %162, i64* %163, align 8
  %164 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i64 %166
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i32 0, i32 2
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 2
  store i64* %170, i64** %171, align 8
  %172 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %173 = call i32 @ec168_ctrl_msg(%struct.dvb_usb_device* %172, %struct.ec168_req* %9)
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %136, %108
  br label %177

177:                                              ; preds = %176, %98
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %184

181:                                              ; preds = %177
  br label %28

182:                                              ; preds = %28
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %186 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %184, %24, %16
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @ec168_ctrl_msg(%struct.dvb_usb_device*, %struct.ec168_req*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
