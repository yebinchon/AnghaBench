; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_print_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_print_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32 }

@uvc_print_chain.buffer = internal global [43 x i8] zeroinitializer, align 16
@UVC_TERM_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@UVC_TERM_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uvc_video_chain*)* @uvc_print_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uvc_print_chain(%struct.uvc_video_chain* %0) #0 {
  %2 = alloca %struct.uvc_video_chain*, align 8
  %3 = alloca i8*, align 8
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %2, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @uvc_print_chain.buffer, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %2, align 8
  %5 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %4, i32 0, i32 0
  %6 = load i32, i32* @UVC_TERM_INPUT, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @uvc_print_terms(i32* %5, i32 %6, i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %3, align 8
  %17 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %2, align 8
  %18 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %17, i32 0, i32 0
  %19 = load i32, i32* @UVC_TERM_OUTPUT, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @uvc_print_terms(i32* %18, i32 %19, i8* %20)
  ret i8* getelementptr inbounds ([43 x i8], [43 x i8]* @uvc_print_chain.buffer, i64 0, i64 0)
}

declare dso_local i32 @uvc_print_terms(i32*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
