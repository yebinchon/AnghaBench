; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_s_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_s_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_format*)* @ioctl_s_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_s_fmt_cap(%struct.v4l2_int_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_int_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.tcm825x_sensor*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %9, i32 0, i32 0
  %11 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %10, align 8
  store %struct.tcm825x_sensor* %11, %struct.tcm825x_sensor** %6, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %7, align 8
  %15 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %17 = call i32 @ioctl_try_fmt_cap(%struct.v4l2_int_device* %15, %struct.v4l2_format* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %24 = call i32 @tcm825x_configure(%struct.v4l2_int_device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %26 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %25, i32 0, i32 0
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %28 = bitcast %struct.v4l2_pix_format* %26 to i8*
  %29 = bitcast %struct.v4l2_pix_format* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ioctl_try_fmt_cap(%struct.v4l2_int_device*, %struct.v4l2_format*) #1

declare dso_local i32 @tcm825x_configure(%struct.v4l2_int_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
