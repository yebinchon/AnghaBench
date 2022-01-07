; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_pix_format_set_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_pix_format_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i32, i32, i32, i32 }
%struct.bttv_format = type { i32, i32 }

@FORMAT_FLAGS_PLANAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_pix_format*, %struct.bttv_format*, i32, i32)* @pix_format_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pix_format_set_size(%struct.v4l2_pix_format* %0, %struct.bttv_format* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.bttv_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %5, align 8
  store %struct.bttv_format* %1, %struct.bttv_format** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bttv_format*, %struct.bttv_format** %6, align 8
  %16 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FORMAT_FLAGS_PLANAR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul i32 %25, %26
  %28 = load %struct.bttv_format*, %struct.bttv_format** %6, align 8
  %29 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul i32 %27, %30
  %32 = lshr i32 %31, 3
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %51

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.bttv_format*, %struct.bttv_format** %6, align 8
  %38 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %36, %39
  %41 = lshr i32 %40, 3
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %44, %47
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
