; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_entity_match_guid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_entity_match_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_entity = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@uvc_camera_guid = common dso_local global i32 0, align 4
@uvc_media_transport_input_guid = common dso_local global i32 0, align 4
@uvc_processing_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_entity*, i32*)* @uvc_entity_match_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_entity_match_guid(%struct.uvc_entity* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_entity*, align 8
  %5 = alloca i32*, align 8
  store %struct.uvc_entity* %0, %struct.uvc_entity** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.uvc_entity*, %struct.uvc_entity** %4, align 8
  %7 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %6)
  switch i32 %7, label %35 [
    i32 131, label %8
    i32 130, label %14
    i32 128, label %20
    i32 129, label %26
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @uvc_camera_guid, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @memcmp(i32 %9, i32* %10, i32 16)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* @uvc_media_transport_input_guid, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @memcmp(i32 %15, i32* %16, i32 16)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @uvc_processing_guid, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @memcmp(i32 %21, i32* %22, i32 16)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.uvc_entity*, %struct.uvc_entity** %4, align 8
  %28 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @memcmp(i32 %30, i32* %31, i32 16)
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %26, %20, %14, %8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
