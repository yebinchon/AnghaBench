; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_anysee.c_anysee_master_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_anysee.c_anysee_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.dvb_usb_device = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@CMD_I2C_READ = common dso_local global i32 0, align 4
@CMD_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @anysee_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %15)
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %152

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %136, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %140

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %29
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %38
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I2C_M_RD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %34
  %46 = load i32, i32* @CMD_I2C_READ, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %50
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 %58
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 3
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 4
  store i32 0, i32* %66, align 16
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 5
  store i32 1, i32* %67, align 4
  %68 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i64 %73
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 %80
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @anysee_ctrl_msg(%struct.dvb_usb_device* %68, i32* %69, i32 24, i32* %76, i32 %83)
  store i32 %84, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %132

85:                                               ; preds = %34, %29
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %88
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 4, %91
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %13, align 8
  %95 = alloca i32, i64 %93, align 16
  store i64 %93, i64* %14, align 8
  %96 = load i32, i32* @CMD_I2C_WRITE, align 4
  %97 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %96, i32* %97, align 16
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i64 %100
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %103, i32* %104, align 4
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i64 %107
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds i32, i32* %95, i64 3
  store i32 1, i32* %112, align 4
  %113 = getelementptr inbounds i32, i32* %95, i64 4
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i64 %116
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i64 %122
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memcpy(i32* %113, i32* %119, i32 %125)
  %127 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %128 = mul nuw i64 4, %93
  %129 = trunc i64 %128 to i32
  %130 = call i32 @anysee_ctrl_msg(%struct.dvb_usb_device* %127, i32* %95, i32 %129, i32* null, i32 0)
  store i32 %130, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %131 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %131)
  br label %132

132:                                              ; preds = %85, %45
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %140

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %25

140:                                              ; preds = %135, %25
  %141 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %142 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  br label %150

148:                                              ; preds = %140
  %149 = load i32, i32* %11, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %21
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @anysee_ctrl_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
