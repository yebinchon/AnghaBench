; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-audio.c_em28xx_init_audio_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-audio.c_em28xx_init_audio_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.urb**, i32* }
%struct.urb = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.em28xx*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EM28XX_NUM_AUDIO_PACKETS = common dso_local global i32 0, align 4
@EM28XX_AUDIO_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting isoc transfers\0A\00", align 1
@EM28XX_AUDIO_BUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"usb_alloc_urb failed!\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@em28xx_audio_isocirq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_init_audio_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_init_audio_isoc(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %10 = load i32, i32* @EM28XX_NUM_AUDIO_PACKETS, align 4
  %11 = load i32, i32* @EM28XX_AUDIO_MAX_PACKET_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %163, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EM28XX_AUDIO_BUFS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %166

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i32 @kmalloc(i32 %19, i32 %20)
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %21, i32* %28, align 4
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %18
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %193

41:                                               ; preds = %18
  %42 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @memset(i32 %49, i32 128, i32 %50)
  %52 = load i32, i32* @EM28XX_NUM_AUDIO_PACKETS, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.urb* @usb_alloc_urb(i32 %52, i32 %53)
  store %struct.urb* %54, %struct.urb** %7, align 8
  %55 = load %struct.urb*, %struct.urb** %7, align 8
  %56 = icmp ne %struct.urb* %55, null
  br i1 %56, label %88, label %57

57:                                               ; preds = %41
  %58 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %82, %57
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %65 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.urb**, %struct.urb*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.urb*, %struct.urb** %67, i64 %69
  %71 = load %struct.urb*, %struct.urb** %70, align 8
  %72 = call i32 @usb_free_urb(%struct.urb* %71)
  %73 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %74 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @kfree(i32 %80)
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %59

85:                                               ; preds = %59
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %193

88:                                               ; preds = %41
  %89 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %90 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.urb*, %struct.urb** %7, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %95 = load %struct.urb*, %struct.urb** %7, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 8
  store %struct.em28xx* %94, %struct.em28xx** %96, align 8
  %97 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %98 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @usb_rcvisocpipe(i32 %99, i32 131)
  %101 = load %struct.urb*, %struct.urb** %7, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @URB_ISO_ASAP, align 4
  %104 = load %struct.urb*, %struct.urb** %7, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %107 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.urb*, %struct.urb** %7, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.urb*, %struct.urb** %7, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load i32, i32* @em28xx_audio_isocirq, align 4
  %119 = load %struct.urb*, %struct.urb** %7, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @EM28XX_NUM_AUDIO_PACKETS, align 4
  %122 = load %struct.urb*, %struct.urb** %7, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.urb*, %struct.urb** %7, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %148, %88
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @EM28XX_NUM_AUDIO_PACKETS, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.urb*, %struct.urb** %7, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 3
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 %132, i32* %139, align 4
  %140 = load i32, i32* @EM28XX_AUDIO_MAX_PACKET_SIZE, align 4
  %141 = load %struct.urb*, %struct.urb** %7, align 8
  %142 = getelementptr inbounds %struct.urb, %struct.urb* %141, i32 0, i32 3
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %131
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* @EM28XX_AUDIO_MAX_PACKET_SIZE, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %127

154:                                              ; preds = %127
  %155 = load %struct.urb*, %struct.urb** %7, align 8
  %156 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %157 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.urb**, %struct.urb*** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.urb*, %struct.urb** %159, i64 %161
  store %struct.urb* %155, %struct.urb** %162, align 8
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %14

166:                                              ; preds = %14
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %189, %166
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @EM28XX_AUDIO_BUFS, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %192

171:                                              ; preds = %167
  %172 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %173 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.urb**, %struct.urb*** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.urb*, %struct.urb** %175, i64 %177
  %179 = load %struct.urb*, %struct.urb** %178, align 8
  %180 = load i32, i32* @GFP_ATOMIC, align 4
  %181 = call i32 @usb_submit_urb(%struct.urb* %179, i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %186 = call i32 @em28xx_deinit_isoc_audio(%struct.em28xx* %185)
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %2, align 4
  br label %193

188:                                              ; preds = %171
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %167

192:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %184, %85, %38
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @em28xx_errdev(i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @em28xx_deinit_isoc_audio(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
