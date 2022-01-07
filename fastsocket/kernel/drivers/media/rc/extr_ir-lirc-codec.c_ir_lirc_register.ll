; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-lirc-codec.c_ir_lirc_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-lirc-codec.c_ir_lirc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i8*, %struct.TYPE_4__*, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rc_dev*, %struct.lirc_driver* }
%struct.lirc_driver = type { i32, i64, i32, i32, i32*, i32*, i32*, i32*, %struct.lirc_driver*, %struct.TYPE_3__*, i32 }
%struct.lirc_buffer = type { i32, i64, i32, i32, i32*, i32*, i32*, i32*, %struct.lirc_buffer*, %struct.TYPE_3__*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LIRCBUF_SIZE = common dso_local global i32 0, align 4
@LIRC_CAN_REC_MODE2 = common dso_local global i64 0, align 8
@LIRC_CAN_SEND_PULSE = common dso_local global i64 0, align 8
@LIRC_CAN_SET_TRANSMITTER_MASK = common dso_local global i64 0, align 8
@LIRC_CAN_SET_SEND_CARRIER = common dso_local global i64 0, align 8
@LIRC_CAN_SET_SEND_DUTY_CYCLE = common dso_local global i64 0, align 8
@LIRC_CAN_SET_REC_CARRIER = common dso_local global i64 0, align 8
@LIRC_CAN_SET_REC_CARRIER_RANGE = common dso_local global i64 0, align 8
@LIRC_CAN_USE_WIDEBAND_RECEIVER = common dso_local global i64 0, align 8
@LIRC_CAN_MEASURE_CARRIER = common dso_local global i64 0, align 8
@LIRC_CAN_SET_REC_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ir-lirc-codec (%s)\00", align 1
@ir_lirc_open = common dso_local global i32 0, align 4
@ir_lirc_close = common dso_local global i32 0, align 4
@lirc_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*)* @ir_lirc_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_lirc_register(%struct.rc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca %struct.lirc_driver*, align 8
  %5 = alloca %struct.lirc_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lirc_driver* @kzalloc(i32 80, i32 %10)
  store %struct.lirc_driver* %11, %struct.lirc_driver** %4, align 8
  %12 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %13 = icmp ne %struct.lirc_driver* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %177

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.lirc_driver* @kzalloc(i32 80, i32 %17)
  %19 = bitcast %struct.lirc_driver* %18 to %struct.lirc_buffer*
  store %struct.lirc_buffer* %19, %struct.lirc_buffer** %5, align 8
  %20 = load %struct.lirc_buffer*, %struct.lirc_buffer** %5, align 8
  %21 = icmp ne %struct.lirc_buffer* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %173

23:                                               ; preds = %16
  %24 = load %struct.lirc_buffer*, %struct.lirc_buffer** %5, align 8
  %25 = bitcast %struct.lirc_buffer* %24 to %struct.lirc_driver*
  %26 = load i32, i32* @LIRCBUF_SIZE, align 4
  %27 = call i32 @lirc_buffer_init(%struct.lirc_driver* %25, i32 4, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %169

31:                                               ; preds = %23
  %32 = load i64, i64* @LIRC_CAN_REC_MODE2, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load i64, i64* @LIRC_CAN_SEND_PULSE, align 8
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i64, i64* @LIRC_CAN_SET_TRANSMITTER_MASK, align 8
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i64, i64* @LIRC_CAN_SET_SEND_CARRIER, align 8
  %56 = load i64, i64* %7, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i64, i64* @LIRC_CAN_SET_SEND_DUTY_CYCLE, align 8
  %65 = load i64, i64* %7, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %31
  %69 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i64, i64* @LIRC_CAN_SET_REC_CARRIER, align 8
  %75 = load i64, i64* @LIRC_CAN_SET_REC_CARRIER_RANGE, align 8
  %76 = or i64 %74, %75
  %77 = load i64, i64* %7, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %81 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* @LIRC_CAN_USE_WIDEBAND_RECEIVER, align 8
  %86 = load i64, i64* %7, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %90 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i64, i64* @LIRC_CAN_MEASURE_CARRIER, align 8
  %95 = load i64, i64* %7, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %99 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64, i64* @LIRC_CAN_SET_REC_TIMEOUT, align 8
  %104 = load i64, i64* %7, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %108 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %111 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @snprintf(i32 %109, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %112)
  %114 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %115 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %114, i32 0, i32 0
  store i32 -1, i32* %115, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %118 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %120 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %124 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %123, i32 0, i32 9
  store %struct.TYPE_3__* %122, %struct.TYPE_3__** %124, align 8
  %125 = load %struct.lirc_buffer*, %struct.lirc_buffer** %5, align 8
  %126 = bitcast %struct.lirc_buffer* %125 to %struct.lirc_driver*
  %127 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %128 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %127, i32 0, i32 8
  store %struct.lirc_driver* %126, %struct.lirc_driver** %128, align 8
  %129 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %130 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %129, i32 0, i32 7
  store i32* @ir_lirc_open, i32** %130, align 8
  %131 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %132 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %131, i32 0, i32 6
  store i32* @ir_lirc_close, i32** %132, align 8
  %133 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %134 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %133, i32 0, i32 2
  store i32 32, i32* %134, align 8
  %135 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %136 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %135, i32 0, i32 5
  store i32* @lirc_fops, i32** %136, align 8
  %137 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %138 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %137, i32 0, i32 2
  %139 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %140 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %139, i32 0, i32 4
  store i32* %138, i32** %140, align 8
  %141 = load i32, i32* @THIS_MODULE, align 4
  %142 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %143 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %145 = call i32 @lirc_register_driver(%struct.lirc_driver* %144)
  %146 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %147 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %149 = getelementptr inbounds %struct.lirc_driver, %struct.lirc_driver* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %106
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %6, align 4
  br label %168

155:                                              ; preds = %106
  %156 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %157 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %158 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  store %struct.lirc_driver* %156, %struct.lirc_driver** %161, align 8
  %162 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %163 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %164 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store %struct.rc_dev* %162, %struct.rc_dev** %167, align 8
  store i32 0, i32* %2, align 4
  br label %177

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %168, %30
  %170 = load %struct.lirc_buffer*, %struct.lirc_buffer** %5, align 8
  %171 = bitcast %struct.lirc_buffer* %170 to %struct.lirc_driver*
  %172 = call i32 @kfree(%struct.lirc_driver* %171)
  br label %173

173:                                              ; preds = %169, %22
  %174 = load %struct.lirc_driver*, %struct.lirc_driver** %4, align 8
  %175 = call i32 @kfree(%struct.lirc_driver* %174)
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %173, %155, %14
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.lirc_driver* @kzalloc(i32, i32) #1

declare dso_local i32 @lirc_buffer_init(%struct.lirc_driver*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @lirc_register_driver(%struct.lirc_driver*) #1

declare dso_local i32 @kfree(%struct.lirc_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
