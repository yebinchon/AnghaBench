; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GET_8PSK_CONFIG = common dso_local global i32 0, align 4
@bm8pskStarted = common dso_local global i32 0, align 4
@USB_PID_GENPIX_SKYWALKER_CW3K = common dso_local global i32 0, align 4
@CW3K_INIT = common dso_local global i32 0, align 4
@BOOT_8PSK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_PID_GENPIX_8PSK_REV_1_WARM = common dso_local global i32 0, align 4
@bm8pskFW_Loaded = common dso_local global i32 0, align 4
@bmIntersilOn = common dso_local global i32 0, align 4
@START_INTERSIL = common dso_local global i32 0, align 4
@SET_DVB_MODE = common dso_local global i32 0, align 4
@ARM_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @gp8psk_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %99

18:                                               ; preds = %2
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = load i32, i32* @GET_8PSK_CONFIG, align 4
  %21 = call i64 @gp8psk_usb_in_op(%struct.dvb_usb_device* %19, i32 %20, i32 0, i32 0, i32* %6, i32 1)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @bm8pskStarted, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @USB_PID_GENPIX_SKYWALKER_CW3K, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = load i32, i32* @CW3K_INIT, align 4
  %33 = call i64 @gp8psk_usb_out_op(%struct.dvb_usb_device* %31, i32 %32, i32 1, i32 0, i32* null, i32 0)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %36 = load i32, i32* @BOOT_8PSK, align 4
  %37 = call i64 @gp8psk_usb_in_op(%struct.dvb_usb_device* %35, i32 %36, i32 1, i32 0, i32* %7, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %125

42:                                               ; preds = %34
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %44 = call i32 @gp8psk_info(%struct.dvb_usb_device* %43)
  br label %45

45:                                               ; preds = %42, %18
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @USB_PID_GENPIX_8PSK_REV_1_WARM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @bm8pskFW_Loaded, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %56 = call i64 @gp8psk_load_bcm4500fw(%struct.dvb_usb_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %125

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @bmIntersilOn, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %70 = load i32, i32* @START_INTERSIL, align 4
  %71 = call i64 @gp8psk_usb_in_op(%struct.dvb_usb_device* %69, i32 %70, i32 1, i32 0, i32* %7, i32 1)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %125

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @USB_PID_GENPIX_8PSK_REV_1_WARM, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %83 = load i32, i32* @SET_DVB_MODE, align 4
  %84 = call i64 @gp8psk_usb_out_op(%struct.dvb_usb_device* %82, i32 %83, i32 1, i32 0, i32* null, i32 0)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %125

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %77
  %91 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %92 = load i32, i32* @ARM_TRANSFER, align 4
  %93 = call i64 @gp8psk_usb_out_op(%struct.dvb_usb_device* %91, i32 %92, i32 0, i32 0, i32* null, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %125

98:                                               ; preds = %90
  br label %124

99:                                               ; preds = %2
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %101 = load i32, i32* @START_INTERSIL, align 4
  %102 = call i64 @gp8psk_usb_in_op(%struct.dvb_usb_device* %100, i32 %101, i32 0, i32 0, i32* %7, i32 1)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %125

107:                                              ; preds = %99
  %108 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %109 = load i32, i32* @BOOT_8PSK, align 4
  %110 = call i64 @gp8psk_usb_in_op(%struct.dvb_usb_device* %108, i32 %109, i32 0, i32 0, i32* %7, i32 1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %125

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @USB_PID_GENPIX_SKYWALKER_CW3K, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %121 = load i32, i32* @CW3K_INIT, align 4
  %122 = call i64 @gp8psk_usb_out_op(%struct.dvb_usb_device* %120, i32 %121, i32 0, i32 0, i32* null, i32 0)
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %98
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %112, %104, %95, %86, %73, %58, %39
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @gp8psk_usb_in_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @gp8psk_usb_out_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @gp8psk_info(%struct.dvb_usb_device*) #1

declare dso_local i64 @gp8psk_load_bcm4500fw(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
