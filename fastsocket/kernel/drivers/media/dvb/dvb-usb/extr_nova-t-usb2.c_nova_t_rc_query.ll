; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_nova-t-usb2.c_nova_t_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_nova-t-usb2.c_nova_t_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dvb_usb_device = type { %struct.dibusb_device_state* }
%struct.dibusb_device_state = type { i32, i32 }

@DIBUSB_REQ_POLL_REMOTE = common dso_local global i32 0, align 4
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"raw key code 0x%02x, 0x%02x, 0x%02x to c: %02x d: %02x toggle: %d\0A\00", align 1
@rc_map_haupp_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"c: %x, d: %x\0A\00", align 1
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @nova_t_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nova_t_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dibusb_device_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = load i32, i32* @DIBUSB_REQ_POLL_REMOTE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 53, i32* %17, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %19, align 8
  store %struct.dibusb_device_state* %20, %struct.dibusb_device_state** %14, align 8
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %24 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %21, i32* %22, i32 2, i32* %23, i32 5, i32 0)
  %25 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  switch i32 %28, label %128 [
    i32 128, label %29
    i32 129, label %127
  ]

29:                                               ; preds = %3
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %32, %34
  %36 = ashr i32 %35, 3
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 2048
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 63
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = ashr i32 %45, 6
  %47 = and i32 %46, 31
  store i32 %47, i32* %11, align 4
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, i32, i32, ...) @deb_rc(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %123, %29
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %126

63:                                               ; preds = %58
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = call i32 @rc5_data(%struct.TYPE_5__* %67)
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %122

71:                                               ; preds = %63
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = call i32 @rc5_custom(%struct.TYPE_5__* %75)
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %71
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = call i32 @rc5_data(%struct.TYPE_5__* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = call i32 @rc5_custom(%struct.TYPE_5__* %88)
  %90 = call i32 (i8*, i32, i32, ...) @deb_rc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %14, align 8
  %101 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %79
  %106 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %14, align 8
  %107 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = icmp slt i32 %108, 2
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %105
  br label %121

115:                                              ; preds = %79
  %116 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %14, align 8
  %117 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %14, align 8
  %120 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %114
  br label %126

122:                                              ; preds = %71, %63
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %58

126:                                              ; preds = %121, %58
  br label %129

127:                                              ; preds = %3
  br label %128

128:                                              ; preds = %3, %127
  br label %129

129:                                              ; preds = %128, %126
  ret i32 0
}

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @deb_rc(i8*, i32, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @rc5_data(%struct.TYPE_5__*) #1

declare dso_local i32 @rc5_custom(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
