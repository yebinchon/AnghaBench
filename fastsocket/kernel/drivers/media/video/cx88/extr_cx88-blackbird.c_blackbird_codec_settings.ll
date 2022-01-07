; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_codec_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_codec_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CX2341X_ENC_SET_FRAME_SIZE = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@blackbird_mbox_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx8802_dev*)* @blackbird_codec_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blackbird_codec_settings(%struct.cx8802_dev* %0) #0 {
  %2 = alloca %struct.cx8802_dev*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %2, align 8
  %3 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %4 = load i32, i32* @CX2341X_ENC_SET_FRAME_SIZE, align 4
  %5 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %9 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @blackbird_api_cmd(%struct.cx8802_dev* %3, i32 %4, i32 2, i32 0, i32 %7, i32 %10)
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %13 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  %18 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %22 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_STD_625_50, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %34 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %37 = load i32, i32* @blackbird_mbox_func, align 4
  %38 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %39 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %38, i32 0, i32 0
  %40 = call i32 @cx2341x_update(%struct.cx8802_dev* %36, i32 %37, i32* null, %struct.TYPE_4__* %39)
  ret void
}

declare dso_local i32 @blackbird_api_cmd(%struct.cx8802_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx2341x_update(%struct.cx8802_dev*, i32, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
