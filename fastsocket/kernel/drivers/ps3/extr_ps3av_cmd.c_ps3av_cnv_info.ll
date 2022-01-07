; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av_cmd.c_ps3av_cnv_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av_cmd.c_ps3av_cnv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3av_audio_info_frame = type { %struct.TYPE_5__, i32, i64, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.ps3av_pkt_audio_mode = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps3av_audio_info_frame*, %struct.ps3av_pkt_audio_mode*)* @ps3av_cnv_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3av_cnv_info(%struct.ps3av_audio_info_frame* %0, %struct.ps3av_pkt_audio_mode* %1) #0 {
  %3 = alloca %struct.ps3av_audio_info_frame*, align 8
  %4 = alloca %struct.ps3av_pkt_audio_mode*, align 8
  store %struct.ps3av_audio_info_frame* %0, %struct.ps3av_audio_info_frame** %3, align 8
  store %struct.ps3av_pkt_audio_mode* %1, %struct.ps3av_pkt_audio_mode** %4, align 8
  %5 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %4, align 8
  %6 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  %9 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %10 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i64 %8, i64* %11, align 8
  %12 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %13 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %16 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %19 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %22 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %4, align 8
  %24 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %27 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %4, align 8
  %29 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %32 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %4, align 8
  %35 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ps3av_audio_info_frame*, %struct.ps3av_audio_info_frame** %3, align 8
  %38 = getelementptr inbounds %struct.ps3av_audio_info_frame, %struct.ps3av_audio_info_frame* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
