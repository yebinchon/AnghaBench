; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_dvb_urb_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_dvb_urb_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32*, i64, %struct.pd_dvb_adapter* }
%struct.pd_dvb_adapter = type { i32, %struct.dvb_demux }
%struct.dvb_demux = type { i32 }

@EPROTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"DVHS\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c" usb_submit_urb failed: error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @dvb_urb_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_urb_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.pd_dvb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 4
  %11 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %10, align 8
  store %struct.pd_dvb_adapter* %11, %struct.pd_dvb_adapter** %3, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %15, i32 0, i32 1
  store %struct.dvb_demux* %16, %struct.dvb_demux** %5, align 8
  %17 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %1
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EPROTO, align 8
  %31 = sub nsw i64 0, %30
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %103

34:                                               ; preds = %26
  br label %112

35:                                               ; preds = %21
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @dvb_dmx_swfilter(%struct.dvb_demux* %42, i32* %45, i32 %46)
  br label %102

48:                                               ; preds = %35
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %48
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %8, align 8
  store i32 456, i32* %7, align 4
  br label %59

59:                                               ; preds = %97, %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @strncmp(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %63
  %71 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dvb_dmx_swfilter(%struct.dvb_demux* %71, i32* %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 52
  %78 = add nsw i32 %77, 4
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %70
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 52
  %83 = load i32*, i32** %8, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %8, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 52
  %88 = add nsw i32 %87, 4
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @dvb_dmx_swfilter(%struct.dvb_demux* %91, i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %80, %70
  br label %100

96:                                               ; preds = %63
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 512
  store i32 %99, i32* %7, align 4
  br label %59

100:                                              ; preds = %95, %59
  br label %101

101:                                              ; preds = %100, %48
  br label %102

102:                                              ; preds = %101, %41
  br label %103

103:                                              ; preds = %102, %33
  %104 = load %struct.urb*, %struct.urb** %2, align 8
  %105 = load i32, i32* @GFP_ATOMIC, align 4
  %106 = call i64 @usb_submit_urb(%struct.urb* %104, i32 %105)
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %34, %109, %103
  ret void
}

declare dso_local i32 @dvb_dmx_swfilter(%struct.dvb_demux*, i32*, i32) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @log(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
