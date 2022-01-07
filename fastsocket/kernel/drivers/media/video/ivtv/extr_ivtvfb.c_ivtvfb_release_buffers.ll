; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_release_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_release_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.osd_info* }
%struct.osd_info = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.osd_info*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtvfb_release_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtvfb_release_buffers(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.osd_info*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %4 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %4, i32 0, i32 0
  %6 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  store %struct.osd_info* %6, %struct.osd_info** %3, align 8
  %7 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %8 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %15 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @fb_dealloc_cmap(%struct.TYPE_4__* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %20 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.osd_info*, %struct.osd_info** %21, align 8
  %23 = icmp ne %struct.osd_info* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %26 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.osd_info*, %struct.osd_info** %27, align 8
  %29 = call i32 @kfree(%struct.osd_info* %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %32 = call i32 @kfree(%struct.osd_info* %31)
  %33 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 0
  store %struct.osd_info* null, %struct.osd_info** %34, align 8
  ret void
}

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.osd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
