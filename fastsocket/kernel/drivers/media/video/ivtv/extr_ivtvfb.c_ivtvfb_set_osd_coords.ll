; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_set_osd_coords.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtvfb.c_ivtvfb_set_osd_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.osd_info* }
%struct.osd_info = type { i32, i32, i32, i64, i32, i32 }
%struct.ivtv_osd_coords = type { i32, i32, i32, i32, i64 }

@CX2341X_OSD_SET_OSD_COORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.ivtv_osd_coords*)* @ivtvfb_set_osd_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_set_osd_coords(%struct.ivtv* %0, %struct.ivtv_osd_coords* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.ivtv_osd_coords*, align 8
  %5 = alloca %struct.osd_info*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.ivtv_osd_coords* %1, %struct.ivtv_osd_coords** %4, align 8
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 0
  %8 = load %struct.osd_info*, %struct.osd_info** %7, align 8
  store %struct.osd_info* %8, %struct.osd_info** %5, align 8
  %9 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %10 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %13 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %15 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %18 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %22 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %24 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %27 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %31 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %34 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %36 = load i32, i32* @CX2341X_OSD_SET_OSD_COORDS, align 4
  %37 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %38 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %41 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %45 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %48 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %51 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %54 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ivtv_vapi(%struct.ivtv* %35, i32 %36, i32 5, i64 %43, i32 %46, i32 %49, i32 %52, i32 %55)
  ret i32 %56
}

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
