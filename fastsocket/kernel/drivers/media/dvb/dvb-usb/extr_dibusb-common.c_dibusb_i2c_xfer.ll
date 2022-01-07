; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-common.c_dibusb_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-common.c_dibusb_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dibusb_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibusb_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %8, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %167

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %159, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %162

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %24
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 %32
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I2C_M_RD, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %29
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i64 %43
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @I2C_M_RD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %39
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %54
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i64 %60
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i64 %66
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i64 %73
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 %80
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @dibusb_i2c_msg(%struct.dvb_usb_device* %51, i32 %57, i32* %63, i32 %69, i32* %76, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %50
  br label %162

87:                                               ; preds = %50
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %158

90:                                               ; preds = %39, %29, %24
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i64 %93
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @I2C_M_RD, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %90
  %101 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i64 %104
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i64 %110
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i64 %116
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @dibusb_i2c_msg(%struct.dvb_usb_device* %101, i32 %107, i32* %113, i32 %119, i32* null, i32 0)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %100
  br label %162

123:                                              ; preds = %100
  br label %157

124:                                              ; preds = %90
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i64 %127
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 80
  br i1 %131, label %132, label %156

132:                                              ; preds = %124
  %133 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %134 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %134, i64 %136
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i64 %142
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %146, i64 %148
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @dibusb_i2c_msg(%struct.dvb_usb_device* %133, i32 %139, i32* null, i32 0, i32* %145, i32 %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %132
  br label %162

155:                                              ; preds = %132
  br label %156

156:                                              ; preds = %155, %124
  br label %157

157:                                              ; preds = %156, %123
  br label %158

158:                                              ; preds = %157, %87
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %20

162:                                              ; preds = %154, %122, %86, %20
  %163 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %164 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %162, %16
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @dibusb_i2c_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
