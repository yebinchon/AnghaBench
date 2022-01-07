; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_dvb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_dvb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_18__, %struct.TYPE_13__, i32, i32, %struct.TYPE_20__, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, %struct.dvb_usb_adapter* }
%struct.TYPE_13__ = type { %struct.TYPE_19__, i32, i32*, i32, i32, i32, %struct.dvb_usb_adapter* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"dvb_register_adapter failed: error %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MAC address: %pM\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MAC address reading failed.\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@dvb_usb_start_feed = common dso_local global i32 0, align 4
@dvb_usb_stop_feed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"dvb_dmx_init failed: error %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"dvb_dmxdev_init failed: error %d\00", align 1
@DVB_USB_ADAP_STATE_DVB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_adapter_dvb_init(%struct.dvb_usb_adapter* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i16* %1, i16** %5, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 0
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %9, i32 0, i32 6
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 6
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 6
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i16*, i16** %5, align 8
  %28 = call i32 @dvb_register_adapter(%struct.TYPE_18__* %8, i32 %15, i32 %20, i32* %26, i16* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @deb_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %158

34:                                               ; preds = %2
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  store %struct.dvb_usb_adapter* %35, %struct.dvb_usb_adapter** %38, align 8
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 6
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64 (%struct.TYPE_17__*, i32)*, i64 (%struct.TYPE_17__*, i32)** %43, align 8
  %45 = icmp ne i64 (%struct.TYPE_17__*, i32)* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %34
  %47 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %47, i32 0, i32 6
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64 (%struct.TYPE_17__*, i32)*, i64 (%struct.TYPE_17__*, i32)** %51, align 8
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 6
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 %52(%struct.TYPE_17__* %55, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %70

68:                                               ; preds = %46
  %69 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %34
  %72 = load i32, i32* @DMX_TS_FILTERING, align 4
  %73 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %80 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 6
  store %struct.dvb_usb_adapter* %79, %struct.dvb_usb_adapter** %82, align 8
  %83 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 5
  store i32 %85, i32* %91, align 8
  %92 = load i32, i32* @dvb_usb_start_feed, align 4
  %93 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @dvb_usb_stop_feed, align 4
  %97 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 8
  %100 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %103, i32 0, i32 1
  %105 = call i32 @dvb_dmx_init(%struct.TYPE_13__* %104)
  store i32 %105, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %71
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %154

110:                                              ; preds = %71
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %116 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  %118 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %122 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  store %struct.TYPE_19__* %120, %struct.TYPE_19__** %123, align 8
  %124 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %125 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %127, i32 0, i32 4
  %129 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %130 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %129, i32 0, i32 0
  %131 = call i32 @dvb_dmxdev_init(%struct.TYPE_20__* %128, %struct.TYPE_18__* %130)
  store i32 %131, i32* %6, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %110
  %134 = load i32, i32* %6, align 4
  %135 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  br label %150

136:                                              ; preds = %110
  %137 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %137, i32 0, i32 0
  %139 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %140 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %139, i32 0, i32 3
  %141 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %142 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = call i32 @dvb_net_init(%struct.TYPE_18__* %138, i32* %140, %struct.TYPE_19__* %143)
  %145 = load i32, i32* @DVB_USB_ADAP_STATE_DVB, align 4
  %146 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  store i32 0, i32* %3, align 4
  br label %160

150:                                              ; preds = %133
  %151 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %152 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %151, i32 0, i32 1
  %153 = call i32 @dvb_dmx_release(%struct.TYPE_13__* %152)
  br label %154

154:                                              ; preds = %150, %107
  %155 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %156 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %155, i32 0, i32 0
  %157 = call i32 @dvb_unregister_adapter(%struct.TYPE_18__* %156)
  br label %158

158:                                              ; preds = %154, %31
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %136
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_18__*, i32, i32, i32*, i16*) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_18__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
