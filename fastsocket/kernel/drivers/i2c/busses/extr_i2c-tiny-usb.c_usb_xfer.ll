; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-tiny-usb.c_usb_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-tiny-usb.c_usb_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"master xfer %d messages:\0A\00", align 1
@CMD_I2C_IO = common dso_local global i32 0, align 4
@CMD_I2C_IO_BEGIN = common dso_local global i32 0, align 4
@CMD_I2C_IO_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"  %d: %s (flags %d) %d bytes to 0x%02x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failure reading data\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"failure writing data\0A\00", align 1
@CMD_GET_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"failure reading status\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"  status = %d\0A\00", align 1
@STATUS_ADDRESS_NAK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @usb_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = trunc i32 %14 to i8
  %16 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %15)
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %150, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %153

21:                                               ; preds = %17
  %22 = load i32, i32* @CMD_I2C_IO, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @CMD_I2C_IO_BEGIN, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @CMD_I2C_IO_END, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %41
  store %struct.i2c_msg* %42, %struct.i2c_msg** %9, align 8
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = trunc i32 %45 to i8
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I2C_M_RD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %46, i8* %54, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @I2C_M_RD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %38
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @usb_read(%struct.i2c_adapter* %72, i32 %73, i32 %76, i32 %79, i8* %82, i32 %85)
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %71
  %92 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @EREMOTEIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %155

97:                                               ; preds = %71
  br label %125

98:                                               ; preds = %38
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @usb_write(%struct.i2c_adapter* %99, i32 %100, i32 %103, i32 %106, i8* %109, i32 %112)
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %98
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %120 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* @EREMOTEIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %155

124:                                              ; preds = %98
  br label %125

125:                                              ; preds = %124, %97
  %126 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %127 = load i32, i32* @CMD_GET_STATUS, align 4
  %128 = call i32 @usb_read(%struct.i2c_adapter* %126, i32 %127, i32 0, i32 0, i8* %8, i32 1)
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %132 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* @EREMOTEIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %155

136:                                              ; preds = %125
  %137 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %138 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %137, i32 0, i32 0
  %139 = load i8, i8* %8, align 1
  %140 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %139)
  %141 = load i8, i8* %8, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @STATUS_ADDRESS_NAK, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32, i32* @EREMOTEIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %155

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %17

153:                                              ; preds = %17
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %146, %130, %118, %91
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @usb_read(%struct.i2c_adapter*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_write(%struct.i2c_adapter*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
