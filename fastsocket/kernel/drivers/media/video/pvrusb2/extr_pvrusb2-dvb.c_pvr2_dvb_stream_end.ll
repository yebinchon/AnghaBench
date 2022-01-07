; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_stream_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_stream_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { i64, i32**, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pvr2_stream* }
%struct.pvr2_stream = type { i32 }

@PVR2_DVB_BUFFER_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_stream_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_dvb_stream_end(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca %struct.pvr2_dvb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %2, align 8
  %5 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @kthread_stop(i32* %12)
  %14 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.pvr2_stream*, %struct.pvr2_stream** %27, align 8
  store %struct.pvr2_stream* %28, %struct.pvr2_stream** %4, align 8
  br label %30

29:                                               ; preds = %16
  store %struct.pvr2_stream* null, %struct.pvr2_stream** %4, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %32 = icmp ne %struct.pvr2_stream* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pvr2_hdw_set_streaming(i32 %37, i32 0)
  %39 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %40 = call i32 @pvr2_stream_set_callback(%struct.pvr2_stream* %39, i32* null, i32* null)
  %41 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %42 = call i32 @pvr2_stream_kill(%struct.pvr2_stream* %41)
  %43 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %44 = call i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream* %43, i32 0)
  %45 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %45, i32 0, i32 2
  %47 = call i32 @pvr2_channel_claim_stream(%struct.TYPE_4__* %46, i32* null)
  br label %48

48:                                               ; preds = %33, %30
  %49 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %83, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @PVR2_DVB_BUFFER_COUNT, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %83

68:                                               ; preds = %58
  %69 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %68, %67
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %48
  ret void
}

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @pvr2_hdw_set_streaming(i32, i32) #1

declare dso_local i32 @pvr2_stream_set_callback(%struct.pvr2_stream*, i32*, i32*) #1

declare dso_local i32 @pvr2_stream_kill(%struct.pvr2_stream*) #1

declare dso_local i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream*, i32) #1

declare dso_local i32 @pvr2_channel_claim_stream(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
