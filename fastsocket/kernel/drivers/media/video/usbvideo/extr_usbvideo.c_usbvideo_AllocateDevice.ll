; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_AllocateDevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_AllocateDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.uvd = type { i32, %struct.TYPE_4__, i32, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.usbvideo = type { i8*, %struct.uvd* }

@.str = private unnamed_addr constant [20 x i8] c"No usbvideo handle?\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IBM USB camera driver: Too many devices!\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Device entry #%d. at $%p\00", align 1
@USBVIDEO_NUMSBUF = common dso_local global i32 0, align 4
@FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"usb_alloc_urb(%d.) failed.\00", align 1
@usbvideo_template = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"%.20s USB Camera\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uvd* @usbvideo_AllocateDevice(%struct.usbvideo* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca %struct.usbvideo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvd*, align 8
  store %struct.usbvideo* %0, %struct.usbvideo** %3, align 8
  store %struct.uvd* null, %struct.uvd** %6, align 8
  %7 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %8 = icmp eq %struct.usbvideo* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.uvd* null, %struct.uvd** %2, align 8
  br label %94

11:                                               ; preds = %1
  %12 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %13 = call i32 @usbvideo_find_struct(%struct.usbvideo* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store %struct.uvd* null, %struct.uvd** %2, align 8
  br label %94

18:                                               ; preds = %11
  %19 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %20 = getelementptr inbounds %struct.usbvideo, %struct.usbvideo* %19, i32 0, i32 1
  %21 = load %struct.uvd*, %struct.uvd** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.uvd, %struct.uvd* %21, i64 %23
  store %struct.uvd* %24, %struct.uvd** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.uvd*, %struct.uvd** %6, align 8
  %27 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %25, %struct.uvd* %26)
  %28 = load %struct.uvd*, %struct.uvd** %6, align 8
  %29 = call i32 @usbvideo_ClientIncModCount(%struct.uvd* %28)
  %30 = load %struct.uvd*, %struct.uvd** %6, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %63, %18
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @USBVIDEO_NUMSBUF, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i32, i32* @FRAMES_PER_DESC, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32* @usb_alloc_urb(i32 %38, i32 %39)
  %41 = load %struct.uvd*, %struct.uvd** %6, align 8
  %42 = getelementptr inbounds %struct.uvd, %struct.uvd* %41, i32 0, i32 7
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* %40, i32** %47, align 8
  %48 = load %struct.uvd*, %struct.uvd** %6, align 8
  %49 = getelementptr inbounds %struct.uvd, %struct.uvd* %48, i32 0, i32 7
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %37
  %58 = load i32, i32* @FRAMES_PER_DESC, align 4
  %59 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.uvd*, %struct.uvd** %6, align 8
  %61 = getelementptr inbounds %struct.uvd, %struct.uvd* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  store %struct.uvd* null, %struct.uvd** %6, align 8
  br label %87

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %33

66:                                               ; preds = %33
  %67 = load %struct.uvd*, %struct.uvd** %6, align 8
  %68 = getelementptr inbounds %struct.uvd, %struct.uvd* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.uvd*, %struct.uvd** %6, align 8
  %70 = getelementptr inbounds %struct.uvd, %struct.uvd* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.uvd*, %struct.uvd** %6, align 8
  %72 = getelementptr inbounds %struct.uvd, %struct.uvd* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.uvd*, %struct.uvd** %6, align 8
  %74 = getelementptr inbounds %struct.uvd, %struct.uvd* %73, i32 0, i32 2
  %75 = call i32 @RingQueue_Initialize(i32* %74)
  %76 = load %struct.uvd*, %struct.uvd** %6, align 8
  %77 = getelementptr inbounds %struct.uvd, %struct.uvd* %76, i32 0, i32 1
  %78 = bitcast %struct.TYPE_4__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 bitcast (%struct.TYPE_4__* @usbvideo_template to i8*), i64 4, i1 false)
  %79 = load %struct.uvd*, %struct.uvd** %6, align 8
  %80 = getelementptr inbounds %struct.uvd, %struct.uvd* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %84 = getelementptr inbounds %struct.usbvideo, %struct.usbvideo* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @sprintf(i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %66, %57
  %88 = load %struct.uvd*, %struct.uvd** %6, align 8
  %89 = getelementptr inbounds %struct.uvd, %struct.uvd* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.uvd*, %struct.uvd** %6, align 8
  %92 = call i32 @usbvideo_ClientDecModCount(%struct.uvd* %91)
  %93 = load %struct.uvd*, %struct.uvd** %6, align 8
  store %struct.uvd* %93, %struct.uvd** %2, align 8
  br label %94

94:                                               ; preds = %87, %16, %9
  %95 = load %struct.uvd*, %struct.uvd** %2, align 8
  ret %struct.uvd* %95
}

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @usbvideo_find_struct(%struct.usbvideo*) #1

declare dso_local i32 @dbg(i8*, i32, %struct.uvd*) #1

declare dso_local i32 @usbvideo_ClientIncModCount(%struct.uvd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @RingQueue_Initialize(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usbvideo_ClientDecModCount(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
