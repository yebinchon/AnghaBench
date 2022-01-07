; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_handle_audio_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_handle_audio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i8*, %struct.poseidon_audio* }
%struct.poseidon_audio = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i64, i64 }

@AUDIO_BUF_SIZE = common dso_local global i32 0, align 4
@AUDIO_TRAILER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, i32*)* @handle_audio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_audio_data(%struct.urb* %0, i32* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.poseidon_audio*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %3, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 2
  %14 = load %struct.poseidon_audio*, %struct.poseidon_audio** %13, align 8
  store %struct.poseidon_audio* %14, %struct.poseidon_audio** %5, align 8
  %15 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %16 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %6, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 3
  store i32 %23, i32* %7, align 4
  %24 = load %struct.urb*, %struct.urb** %3, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.urb*, %struct.urb** %3, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %33 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.urb*, %struct.urb** %3, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AUDIO_BUF_SIZE, align 4
  %39 = sub nsw i32 %38, 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @AUDIO_TRAILER_SIZE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %2
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %48, %49
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp uge i32 %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %47
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul i32 %70, %71
  %73 = call i32 @memcpy(i64 %68, i8* %69, i32 %72)
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = mul i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = mul i32 %86, %87
  %89 = sub i32 %85, %88
  %90 = call i32 @memcpy(i64 %76, i8* %82, i32 %89)
  br label %105

91:                                               ; preds = %47
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %7, align 4
  %97 = mul i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %94, %98
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32 @memcpy(i64 %99, i8* %100, i32 %103)
  br label %105

105:                                              ; preds = %91, %55
  %106 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %107 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = call i32 @snd_pcm_stream_lock(%struct.TYPE_3__* %108)
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %112 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %116 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp uge i32 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %105
  %123 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %127 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %122, %105
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %134 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %138 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %139, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %130
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %149 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load i32*, i32** %4, align 8
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %144, %130
  %154 = load %struct.poseidon_audio*, %struct.poseidon_audio** %5, align 8
  %155 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %154, i32 0, i32 2
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = call i32 @snd_pcm_stream_unlock(%struct.TYPE_3__* %156)
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @snd_pcm_stream_lock(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_pcm_stream_unlock(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
