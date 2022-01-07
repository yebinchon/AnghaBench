; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av_cmd.c_ps3av_cmd_set_av_audio_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3av_cmd.c_ps3av_cmd_set_av_audio_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3av_pkt_audio_mode = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ps3av_pkt_av_audio_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PS3AV_CID_AV_AUDIO_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3av_cmd_set_av_audio_param(i8* %0, i32 %1, %struct.ps3av_pkt_audio_mode* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps3av_pkt_audio_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ps3av_pkt_av_audio_param*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ps3av_pkt_audio_mode* %2, %struct.ps3av_pkt_audio_mode** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ps3av_pkt_av_audio_param*
  store %struct.ps3av_pkt_av_audio_param* %11, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %12 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %13 = call i32 @memset(%struct.ps3av_pkt_av_audio_param* %12, i32 0, i32 48)
  %14 = load i32, i32* @PS3AV_CID_AV_AUDIO_PARAM, align 4
  %15 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %16 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %15, i32 0, i32 11
  %17 = call i32 @ps3av_set_hdr(i32 %14, i32 48, i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %20 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %22 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ps3av_cnv_mclk(i32 %23)
  %25 = or i32 %24, 128
  %26 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %27 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %29 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %32 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ps3av_cnv_ns(i32 %30, i32 %33, i32 %34)
  %36 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %37 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %40 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ps3av_cnv_enable(i32 %38, i32 %41)
  %43 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %44 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %46 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %45, i32 0, i32 2
  store i32 9, i32* %46, align 4
  %47 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %48 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ps3av_cnv_fifomap(i32 %49)
  %51 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %52 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %54 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %53, i32 0, i32 3
  store i32 73, i32* %54, align 4
  %55 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %56 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ps3av_cnv_inputlen(i32 %57)
  %59 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %60 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %62 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ps3av_cnv_layout(i32 %63)
  %65 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %66 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %68 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %67, i32 0, i32 5
  %69 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %70 = call i32 @ps3av_cnv_info(i32* %68, %struct.ps3av_pkt_audio_mode* %69)
  %71 = load %struct.ps3av_pkt_av_audio_param*, %struct.ps3av_pkt_av_audio_param** %9, align 8
  %72 = getelementptr inbounds %struct.ps3av_pkt_av_audio_param, %struct.ps3av_pkt_av_audio_param* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ps3av_pkt_audio_mode*, %struct.ps3av_pkt_audio_mode** %7, align 8
  %75 = getelementptr inbounds %struct.ps3av_pkt_audio_mode, %struct.ps3av_pkt_audio_mode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ps3av_cnv_chstat(i32 %73, i32 %76)
  ret i32 48
}

declare dso_local i32 @memset(%struct.ps3av_pkt_av_audio_param*, i32, i32) #1

declare dso_local i32 @ps3av_set_hdr(i32, i32, i32*) #1

declare dso_local i32 @ps3av_cnv_mclk(i32) #1

declare dso_local i32 @ps3av_cnv_ns(i32, i32, i32) #1

declare dso_local i32 @ps3av_cnv_enable(i32, i32) #1

declare dso_local i32 @ps3av_cnv_fifomap(i32) #1

declare dso_local i32 @ps3av_cnv_inputlen(i32) #1

declare dso_local i32 @ps3av_cnv_layout(i32) #1

declare dso_local i32 @ps3av_cnv_info(i32*, %struct.ps3av_pkt_audio_mode*) #1

declare dso_local i32 @ps3av_cnv_chstat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
