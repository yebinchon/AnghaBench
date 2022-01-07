; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_ctrl_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_ctrl_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.dvb_usb_adapter.0*, i32)*, i32, i64 (%struct.dvb_usb_adapter.1*, i64)*, i32 (%struct.dvb_usb_adapter.2*, i32, i32, i32)* }
%struct.dvb_usb_adapter.0 = type opaque
%struct.dvb_usb_adapter.1 = type opaque
%struct.dvb_usb_adapter.2 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"stop feeding\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error while stopping stream.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"setting pid (%s): %5d %04x at index %d '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@DVB_USB_ADAP_HAS_PID_FILTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"submitting all URBs\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"controlling pid parser\0A\00", align 1
@DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"could not handle pid_parser\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"start feeding\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"error while enabling fifo.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i32)* @dvb_usb_ctrl_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_usb_ctrl_feed(%struct.dvb_demux_feed* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %12, align 8
  store %struct.dvb_usb_adapter* %13, %struct.dvb_usb_adapter** %6, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %15 = icmp eq %struct.dvb_usb_adapter* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %186

19:                                               ; preds = %2
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 -1
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 3
  %34 = call i32 @usb_urb_kill(i32* %33)
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_usb_adapter.0*, i32)*, i32 (%struct.dvb_usb_adapter.0*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.dvb_usb_adapter.0*, i32)* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %30
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dvb_usb_adapter.0*, i32)*, i32 (%struct.dvb_usb_adapter.0*, i32)** %43, align 8
  %45 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %46 = bitcast %struct.dvb_usb_adapter* %45 to %struct.dvb_usb_adapter.0*
  %47 = call i32 %44(%struct.dvb_usb_adapter.0* %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %63 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %67 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %76 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %65, i32 %68, i32 %71, i8* %75)
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %53
  %85 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32 (%struct.dvb_usb_adapter.2*, i32, i32, i32)*, i32 (%struct.dvb_usb_adapter.2*, i32, i32, i32)** %92, align 8
  %94 = icmp ne i32 (%struct.dvb_usb_adapter.2*, i32, i32, i32)* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %89
  %96 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %97 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32 (%struct.dvb_usb_adapter.2*, i32, i32, i32)*, i32 (%struct.dvb_usb_adapter.2*, i32, i32, i32)** %98, align 8
  %100 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %101 = bitcast %struct.dvb_usb_adapter* %100 to %struct.dvb_usb_adapter.2*
  %102 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %103 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %106 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 %99(%struct.dvb_usb_adapter.2* %101, i32 %104, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %95, %89, %84, %53
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %185

116:                                              ; preds = %110
  %117 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %118 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %185

121:                                              ; preds = %116
  %122 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %123 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %124 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %123, i32 0, i32 3
  %125 = call i32 @usb_urb_submit(i32* %124)
  %126 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %127 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %121
  %135 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %134
  %143 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %144 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i64 (%struct.dvb_usb_adapter.1*, i64)*, i64 (%struct.dvb_usb_adapter.1*, i64)** %145, align 8
  %147 = icmp ne i64 (%struct.dvb_usb_adapter.1*, i64)* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64 (%struct.dvb_usb_adapter.1*, i64)*, i64 (%struct.dvb_usb_adapter.1*, i64)** %151, align 8
  %153 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %154 = bitcast %struct.dvb_usb_adapter* %153 to %struct.dvb_usb_adapter.1*
  %155 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %156 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i64 %152(%struct.dvb_usb_adapter.1* %154, i64 %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %148
  br label %163

163:                                              ; preds = %162, %142, %134, %121
  %164 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %165 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %166 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32 (%struct.dvb_usb_adapter.0*, i32)*, i32 (%struct.dvb_usb_adapter.0*, i32)** %167, align 8
  %169 = icmp ne i32 (%struct.dvb_usb_adapter.0*, i32)* %168, null
  br i1 %169, label %170, label %184

170:                                              ; preds = %163
  %171 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %172 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32 (%struct.dvb_usb_adapter.0*, i32)*, i32 (%struct.dvb_usb_adapter.0*, i32)** %173, align 8
  %175 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %176 = bitcast %struct.dvb_usb_adapter* %175 to %struct.dvb_usb_adapter.0*
  %177 = call i32 %174(%struct.dvb_usb_adapter.0* %176, i32 1)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %181 = load i32, i32* @ENODEV, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %186

183:                                              ; preds = %170
  br label %184

184:                                              ; preds = %183, %163
  br label %185

185:                                              ; preds = %184, %116, %110
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %179, %16
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @deb_ts(i8*, ...) #1

declare dso_local i32 @usb_urb_kill(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_urb_submit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
