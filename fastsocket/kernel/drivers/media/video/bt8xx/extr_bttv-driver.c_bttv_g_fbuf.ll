; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_g_fbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_g_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bttv_fh = type { %struct.TYPE_4__*, %struct.bttv* }
%struct.TYPE_4__ = type { i32 }
%struct.bttv = type { %struct.v4l2_framebuffer }

@V4L2_FBUF_CAP_LIST_CLIPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @bttv_g_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_g_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_framebuffer*, align 8
  %7 = alloca %struct.bttv_fh*, align 8
  %8 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bttv_fh*
  store %struct.bttv_fh* %10, %struct.bttv_fh** %7, align 8
  %11 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %12 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %11, i32 0, i32 1
  %13 = load %struct.bttv*, %struct.bttv** %12, align 8
  store %struct.bttv* %13, %struct.bttv** %8, align 8
  %14 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %15 = load %struct.bttv*, %struct.bttv** %8, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 0
  %17 = bitcast %struct.v4l2_framebuffer* %14 to i8*
  %18 = bitcast %struct.v4l2_framebuffer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  %19 = load i32, i32* @V4L2_FBUF_CAP_LIST_CLIPPING, align 4
  %20 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %23 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %28 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %3
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
