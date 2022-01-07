; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_init_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, %struct.osd_info* }
%struct.osd_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize ivtv\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Firmware failed to respond\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IVTV_DECODER_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"abort, video memory 0x%x @ 0x%lx isn't mapped!\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Framebuffer at 0x%lx, mapped to 0x%p, size %dk\0A\00", align 1
@MTRR_TYPE_WRCOMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtvfb_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_init_io(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.osd_info*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 3
  %7 = load %struct.osd_info*, %struct.osd_info** %6, align 8
  store %struct.osd_info* %7, %struct.osd_info** %4, align 8
  %8 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %12 = call i64 @ivtv_init_on_first_open(%struct.ivtv* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 2
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %92

21:                                               ; preds = %1
  %22 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 2
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %26 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %27 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %26, i32 0, i32 0
  %28 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %29 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %28, i32 0, i32 1
  %30 = call i64 @ivtvfb_get_framebuffer(%struct.ivtv* %25, i32* %27, i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %92

36:                                               ; preds = %21
  %37 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %38 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %37, i32 0, i32 1
  store i32 1704960, i32* %38, align 4
  %39 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %40 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IVTV_DECODER_OFFSET, align 4
  %43 = add nsw i32 %41, %42
  %44 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %45 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %49 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %54 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %58 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %60 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %36
  %64 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %65 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %68 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %92

73:                                               ; preds = %36
  %74 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %75 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %78 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %81 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 1024
  %84 = call i32 (i8*, ...) @IVTVFB_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %79, i32 %83)
  %85 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %86 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %89 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memset_io(i32 %87, i32 0, i32 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %73, %63, %32, %14
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ivtv_init_on_first_open(%struct.ivtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IVTVFB_ERR(i8*, ...) #1

declare dso_local i64 @ivtvfb_get_framebuffer(%struct.ivtv*, i32*, i32*) #1

declare dso_local i32 @IVTVFB_INFO(i8*, ...) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
