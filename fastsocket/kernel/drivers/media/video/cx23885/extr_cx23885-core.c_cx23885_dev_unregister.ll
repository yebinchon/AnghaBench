; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.cx23885_dev = type { i64, i32, i32*, i32, i32, i32, i32 }

@cx23885_boards = common dso_local global %struct.TYPE_2__* null, align 8
@CX23885_ANALOG_VIDEO = common dso_local global i64 0, align 8
@CX23885_MPEG_DVB = common dso_local global i64 0, align 8
@CX23885_MPEG_ENCODER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*)* @cx23885_dev_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_dev_unregister(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %3 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pci_resource_start(i32 %5, i32 0)
  %7 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pci_resource_len(i32 %9, i32 0)
  %11 = call i32 @release_mem_region(i32 %6, i32 %10)
  %12 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %13 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %12, i32 0, i32 5
  %14 = call i32 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %104

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CX23885_ANALOG_VIDEO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %29 = call i32 @cx23885_video_unregister(%struct.cx23885_dev* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %33 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CX23885_MPEG_DVB, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %42 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %41, i32 0, i32 4
  %43 = call i32 @cx23885_dvb_unregister(i32* %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %46 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %47 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CX23885_MPEG_ENCODER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %56 = call i32 @cx23885_417_unregister(%struct.cx23885_dev* %55)
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %59 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %60 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CX23885_MPEG_DVB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %69 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %68, i32 0, i32 3
  %70 = call i32 @cx23885_dvb_unregister(i32* %69)
  br label %71

71:                                               ; preds = %67, %57
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %73 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %74 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CX23885_MPEG_ENCODER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %83 = call i32 @cx23885_417_unregister(%struct.cx23885_dev* %82)
  br label %84

84:                                               ; preds = %81, %71
  %85 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %86 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = call i32 @cx23885_i2c_unregister(i32* %88)
  %90 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %91 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = call i32 @cx23885_i2c_unregister(i32* %93)
  %95 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %96 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @cx23885_i2c_unregister(i32* %98)
  %100 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %101 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @iounmap(i32 %102)
  br label %104

104:                                              ; preds = %84, %16
  ret void
}

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cx23885_video_unregister(%struct.cx23885_dev*) #1

declare dso_local i32 @cx23885_dvb_unregister(i32*) #1

declare dso_local i32 @cx23885_417_unregister(%struct.cx23885_dev*) #1

declare dso_local i32 @cx23885_i2c_unregister(i32*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
