; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_meyeioc_s_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_meyeioc_s_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.meye_params }
%struct.meye_params = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SONY_PIC_COMMAND_SETCAMERASHARPNESS = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAAGC = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAPICTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meye_params*)* @meyeioc_s_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meyeioc_s_params(%struct.meye_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meye_params*, align 8
  store %struct.meye_params* %0, %struct.meye_params** %3, align 8
  %4 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %5 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %13 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 10
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %11
  %20 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %21 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 63
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %26 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 63
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %31 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 63
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24, %19
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %73

37:                                               ; preds = %29
  %38 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %39 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 31
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %73

45:                                               ; preds = %37
  %46 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 0))
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 1, i32 0), align 4
  %48 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %49 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 1, i32 1), align 4
  %54 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %55 = getelementptr inbounds %struct.meye_params, %struct.meye_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %45
  %59 = call i32 (...) @mchip_hic_stop()
  br label %60

60:                                               ; preds = %58, %52
  %61 = load %struct.meye_params*, %struct.meye_params** %3, align 8
  %62 = bitcast %struct.meye_params* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.meye_params* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 1) to i8*), i8* align 4 %62, i64 24, i1 false)
  %63 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERASHARPNESS, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 1, i32 2), align 4
  %65 = call i32 @sony_pic_camera_command(i32 %63, i32 %64)
  %66 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAAGC, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 1, i32 3), align 4
  %68 = call i32 @sony_pic_camera_command(i32 %66, i32 %67)
  %69 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAPICTURE, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 1, i32 4), align 4
  %71 = call i32 @sony_pic_camera_command(i32 %69, i32 %70)
  %72 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %60, %42, %34, %16, %8
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mchip_hic_stop(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sony_pic_camera_command(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
