; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_release_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_release_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i64, %struct.dvb_demux, i32, i32, i32, i32*, i32, i64, %struct.ngene* }
%struct.dvb_demux = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*)* }
%struct.ngene = type { i32*, i64, %struct.ngene_info* }
%struct.ngene_info = type { i32* }

@NGENE_IO_TSIN = common dso_local global i32 0, align 4
@NGENE_IO_TSOUT = common dso_local global i32 0, align 4
@one_adapter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene_channel*)* @release_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_channel(%struct.ngene_channel* %0) #0 {
  %2 = alloca %struct.ngene_channel*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.ngene*, align 8
  %5 = alloca %struct.ngene_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %2, align 8
  %7 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %8 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %7, i32 0, i32 1
  store %struct.dvb_demux* %8, %struct.dvb_demux** %3, align 8
  %9 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %10 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %9, i32 0, i32 8
  %11 = load %struct.ngene*, %struct.ngene** %10, align 8
  store %struct.ngene* %11, %struct.ngene** %4, align 8
  %12 = load %struct.ngene*, %struct.ngene** %4, align 8
  %13 = getelementptr inbounds %struct.ngene, %struct.ngene* %12, i32 0, i32 2
  %14 = load %struct.ngene_info*, %struct.ngene_info** %13, align 8
  store %struct.ngene_info* %14, %struct.ngene_info** %5, align 8
  %15 = load %struct.ngene_info*, %struct.ngene_info** %5, align 8
  %16 = getelementptr inbounds %struct.ngene_info, %struct.ngene_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %19 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %24 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %23, i32 0, i32 8
  %25 = load %struct.ngene*, %struct.ngene** %24, align 8
  %26 = getelementptr inbounds %struct.ngene, %struct.ngene* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %31 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %36 = call i32 @set_transfer(%struct.ngene_channel* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %29, %1
  %38 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %39 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %38, i32 0, i32 6
  %40 = call i32 @tasklet_kill(i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NGENE_IO_TSIN, align 4
  %43 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %112

47:                                               ; preds = %37
  %48 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %49 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %54 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @dvb_unregister_frontend(i32* %55)
  %57 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %58 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @dvb_frontend_detach(i32* %59)
  %61 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %62 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %61, i32 0, i32 5
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %52, %47
  %64 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %66, align 8
  %68 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %69 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %68, i32 0, i32 0
  %70 = call i32 %67(%struct.TYPE_4__* %69)
  %71 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %73, align 8
  %75 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %76 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %75, i32 0, i32 0
  %77 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %78 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %77, i32 0, i32 4
  %79 = call i32 %74(%struct.TYPE_4__* %76, i32* %78)
  %80 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %82, align 8
  %84 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %85 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %84, i32 0, i32 0
  %86 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %87 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %86, i32 0, i32 3
  %88 = call i32 %83(%struct.TYPE_4__* %85, i32* %87)
  %89 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %90 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %89, i32 0, i32 2
  %91 = call i32 @dvb_dmxdev_release(i32* %90)
  %92 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %93 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %92, i32 0, i32 1
  %94 = call i32 @dvb_dmx_release(%struct.dvb_demux* %93)
  %95 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %96 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %63
  %100 = load i32, i32* @one_adapter, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %99, %63
  %103 = load %struct.ngene*, %struct.ngene** %4, align 8
  %104 = getelementptr inbounds %struct.ngene, %struct.ngene* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %107 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = call i32 @dvb_unregister_adapter(i32* %109)
  br label %111

111:                                              ; preds = %102, %99
  br label %112

112:                                              ; preds = %111, %37
  ret void
}

declare dso_local i32 @set_transfer(%struct.ngene_channel*, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
