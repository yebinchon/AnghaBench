; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_dvb_usb_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_dvb_usb_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.pd_dvb_adapter }
%struct.pd_dvb_adapter = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_7__, %struct.dvb_demux, %struct.poseidon*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.poseidon* }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dvb_demux = type { i32, i32, %struct.TYPE_5__, i32*, i32, i32, %struct.pd_dvb_adapter* }

@.str = private unnamed_addr constant [22 x i8] c"Poseidon dvbt adapter\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@poseidon_frontend_ops = common dso_local global i32 0, align 4
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@pd_start_feed = common dso_local global i32 0, align 4
@pd_stop_feed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pd_dvb_usb_device_init(%struct.poseidon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca %struct.pd_dvb_adapter*, align 8
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %3, align 8
  %7 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %8 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %7, i32 0, i32 0
  store %struct.pd_dvb_adapter* %8, %struct.pd_dvb_adapter** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %9, i32 0, i32 0
  store i32 130, i32* %10, align 8
  %11 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %11, i32 0, i32 7
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %14, i32 0, i32 6
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %18 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %18, i32 0, i32 5
  store %struct.poseidon* %17, %struct.poseidon** %19, align 8
  %20 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* @THIS_MODULE, align 4
  %23 = load i32, i32* @adapter_nr, align 4
  %24 = call i32 @dvb_register_adapter(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22, i32* null, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %108

28:                                               ; preds = %1
  %29 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %30 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store %struct.poseidon* %29, %struct.poseidon** %32, align 8
  %33 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %35, i32* @poseidon_frontend_ops, i32 4)
  %37 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %37, i32 0, i32 1
  %39 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %39, i32 0, i32 2
  %41 = call i32 @dvb_register_frontend(i32* %38, %struct.TYPE_6__* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %104

45:                                               ; preds = %28
  %46 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %46, i32 0, i32 4
  store %struct.dvb_demux* %47, %struct.dvb_demux** %5, align 8
  %48 = load i32, i32* @DMX_TS_FILTERING, align 4
  %49 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %55 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %56 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %55, i32 0, i32 6
  store %struct.pd_dvb_adapter* %54, %struct.pd_dvb_adapter** %56, align 8
  %57 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %58 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %57, i32 0, i32 1
  store i32 64, i32* %58, align 4
  %59 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %59, i32 0, i32 0
  store i32 64, i32* %60, align 8
  %61 = load i32, i32* @pd_start_feed, align 4
  %62 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %63 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @pd_stop_feed, align 4
  %65 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %68 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  %69 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %70 = call i32 @dvb_dmx_init(%struct.dvb_demux* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %45
  br label %100

74:                                               ; preds = %45
  %75 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %83, i32 0, i32 2
  %85 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %87, align 8
  %88 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %91, i32 0, i32 3
  %93 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %93, i32 0, i32 1
  %95 = call i32 @dvb_dmxdev_init(%struct.TYPE_7__* %92, i32* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %74
  br label %100

99:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %110

100:                                              ; preds = %98, %73
  %101 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %101, i32 0, i32 2
  %103 = call i32 @dvb_unregister_frontend(%struct.TYPE_6__* %102)
  br label %104

104:                                              ; preds = %100, %44
  %105 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %105, i32 0, i32 1
  %107 = call i32 @dvb_unregister_adapter(i32* %106)
  br label %108

108:                                              ; preds = %104, %27
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %99
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dvb_register_adapter(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_register_frontend(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @dvb_dmx_init(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dvb_unregister_frontend(%struct.TYPE_6__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
