; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_do_dv1394_init_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_do_dv1394_init_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_card = type { i32, i32, i32, i32, i32 }
%struct.dv1394_init = type { i32, i32, i32, i32, i32, i32, i32 }

@DV1394_API_VERSION = common dso_local global i32 0, align 4
@DV1394_MAX_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_card*)* @do_dv1394_init_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dv1394_init_default(%struct.video_card* %0) #0 {
  %2 = alloca %struct.video_card*, align 8
  %3 = alloca %struct.dv1394_init, align 4
  store %struct.video_card* %0, %struct.video_card** %2, align 8
  %4 = load i32, i32* @DV1394_API_VERSION, align 4
  %5 = getelementptr inbounds %struct.dv1394_init, %struct.dv1394_init* %3, i32 0, i32 6
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @DV1394_MAX_FRAMES, align 4
  %7 = sdiv i32 %6, 4
  %8 = getelementptr inbounds %struct.dv1394_init, %struct.dv1394_init* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.video_card*, %struct.video_card** %2, align 8
  %10 = getelementptr inbounds %struct.video_card, %struct.video_card* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.dv1394_init, %struct.dv1394_init* %3, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load %struct.video_card*, %struct.video_card** %2, align 8
  %14 = getelementptr inbounds %struct.video_card, %struct.video_card* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.dv1394_init, %struct.dv1394_init* %3, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load %struct.video_card*, %struct.video_card** %2, align 8
  %18 = getelementptr inbounds %struct.video_card, %struct.video_card* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.dv1394_init, %struct.dv1394_init* %3, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.video_card*, %struct.video_card** %2, align 8
  %22 = getelementptr inbounds %struct.video_card, %struct.video_card* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dv1394_init, %struct.dv1394_init* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.video_card*, %struct.video_card** %2, align 8
  %26 = getelementptr inbounds %struct.video_card, %struct.video_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dv1394_init, %struct.dv1394_init* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.video_card*, %struct.video_card** %2, align 8
  %30 = call i32 @do_dv1394_init(%struct.video_card* %29, %struct.dv1394_init* %3)
  ret i32 %30
}

declare dso_local i32 @do_dv1394_init(%struct.video_card*, %struct.dv1394_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
