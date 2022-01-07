; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_dvb_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_dvb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32*, %struct.dvb_demux, i32, i32, i32, i32, %struct.dvb_demux, i32, i32, i32 }
%struct.dvb_demux = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*)* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@budgetpatch = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.av7110*)* @dvb_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_unregister(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %5 = load %struct.av7110*, %struct.av7110** %2, align 8
  %6 = getelementptr inbounds %struct.av7110, %struct.av7110* %5, i32 0, i32 2
  store %struct.dvb_demux* %6, %struct.dvb_demux** %3, align 8
  %7 = load %struct.av7110*, %struct.av7110** %2, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 7
  store %struct.dvb_demux* %8, %struct.dvb_demux** %4, align 8
  %9 = load %struct.av7110*, %struct.av7110** %2, align 8
  %10 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %9)
  %11 = load %struct.av7110*, %struct.av7110** %2, align 8
  %12 = getelementptr inbounds %struct.av7110, %struct.av7110* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %93

16:                                               ; preds = %1
  %17 = load i64, i64* @budgetpatch, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.av7110*, %struct.av7110** %2, align 8
  %21 = getelementptr inbounds %struct.av7110, %struct.av7110* %20, i32 0, i32 9
  %22 = call i32 @dvb_net_release(i32* %21)
  %23 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %25, align 8
  %27 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %27, i32 0, i32 0
  %29 = call i32 %26(%struct.TYPE_5__* %28)
  %30 = load %struct.av7110*, %struct.av7110** %2, align 8
  %31 = getelementptr inbounds %struct.av7110, %struct.av7110* %30, i32 0, i32 8
  %32 = call i32 @dvb_dmxdev_release(i32* %31)
  %33 = load %struct.av7110*, %struct.av7110** %2, align 8
  %34 = getelementptr inbounds %struct.av7110, %struct.av7110* %33, i32 0, i32 7
  %35 = call i32 @dvb_dmx_release(%struct.dvb_demux* %34)
  br label %36

36:                                               ; preds = %19, %16
  %37 = load %struct.av7110*, %struct.av7110** %2, align 8
  %38 = getelementptr inbounds %struct.av7110, %struct.av7110* %37, i32 0, i32 6
  %39 = call i32 @dvb_net_release(i32* %38)
  %40 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %42, align 8
  %44 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %44, i32 0, i32 0
  %46 = call i32 %43(%struct.TYPE_5__* %45)
  %47 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %49, align 8
  %51 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %51, i32 0, i32 0
  %53 = load %struct.av7110*, %struct.av7110** %2, align 8
  %54 = getelementptr inbounds %struct.av7110, %struct.av7110* %53, i32 0, i32 5
  %55 = call i32 %50(%struct.TYPE_5__* %52, i32* %54)
  %56 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %58, align 8
  %60 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %60, i32 0, i32 0
  %62 = load %struct.av7110*, %struct.av7110** %2, align 8
  %63 = getelementptr inbounds %struct.av7110, %struct.av7110* %62, i32 0, i32 4
  %64 = call i32 %59(%struct.TYPE_5__* %61, i32* %63)
  %65 = load %struct.av7110*, %struct.av7110** %2, align 8
  %66 = getelementptr inbounds %struct.av7110, %struct.av7110* %65, i32 0, i32 3
  %67 = call i32 @dvb_dmxdev_release(i32* %66)
  %68 = load %struct.av7110*, %struct.av7110** %2, align 8
  %69 = getelementptr inbounds %struct.av7110, %struct.av7110* %68, i32 0, i32 2
  %70 = call i32 @dvb_dmx_release(%struct.dvb_demux* %69)
  %71 = load %struct.av7110*, %struct.av7110** %2, align 8
  %72 = getelementptr inbounds %struct.av7110, %struct.av7110* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %36
  %76 = load %struct.av7110*, %struct.av7110** %2, align 8
  %77 = getelementptr inbounds %struct.av7110, %struct.av7110* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @dvb_unregister_frontend(i32* %78)
  %80 = load %struct.av7110*, %struct.av7110** %2, align 8
  %81 = getelementptr inbounds %struct.av7110, %struct.av7110* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @dvb_frontend_detach(i32* %82)
  br label %84

84:                                               ; preds = %75, %36
  %85 = load %struct.av7110*, %struct.av7110** %2, align 8
  %86 = getelementptr inbounds %struct.av7110, %struct.av7110* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dvb_unregister_device(i32 %87)
  %89 = load %struct.av7110*, %struct.av7110** %2, align 8
  %90 = call i32 @av7110_av_unregister(%struct.av7110* %89)
  %91 = load %struct.av7110*, %struct.av7110** %2, align 8
  %92 = call i32 @av7110_ca_unregister(%struct.av7110* %91)
  br label %93

93:                                               ; preds = %84, %15
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_unregister_device(i32) #1

declare dso_local i32 @av7110_av_unregister(%struct.av7110*) #1

declare dso_local i32 @av7110_ca_unregister(%struct.av7110*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
