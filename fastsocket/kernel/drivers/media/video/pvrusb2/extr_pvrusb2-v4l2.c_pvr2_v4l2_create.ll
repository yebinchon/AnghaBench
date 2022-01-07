; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_v4l2 = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pvr2_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PVR2_TRACE_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Creating pvr2_v4l2 id=%p\00", align 1
@pvr2_v4l2_internal_check = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_RADIO = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failure creating pvr2_v4l2 id=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvr2_v4l2* @pvr2_v4l2_create(%struct.pvr2_context* %0) #0 {
  %2 = alloca %struct.pvr2_v4l2*, align 8
  %3 = alloca %struct.pvr2_context*, align 8
  %4 = alloca %struct.pvr2_v4l2*, align 8
  store %struct.pvr2_context* %0, %struct.pvr2_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 32, i32 %5)
  %7 = bitcast i8* %6 to %struct.pvr2_v4l2*
  store %struct.pvr2_v4l2* %7, %struct.pvr2_v4l2** %4, align 8
  %8 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %9 = icmp ne %struct.pvr2_v4l2* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  store %struct.pvr2_v4l2* %11, %struct.pvr2_v4l2** %2, align 8
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %14 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %13, i32 0, i32 1
  %15 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %16 = call i32 @pvr2_channel_init(%struct.TYPE_4__* %14, %struct.pvr2_context* %15)
  %17 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %18 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %19 = call i32 @pvr2_trace(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pvr2_v4l2* %18)
  %20 = load i32, i32* @pvr2_v4l2_internal_check, align 4
  %21 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %22 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 1, i32 %24)
  %26 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %27 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %29 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %12
  br label %70

33:                                               ; preds = %12
  %34 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %35 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %38 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %39 = call i32 @pvr2_v4l2_dev_init(i8* %36, %struct.pvr2_v4l2* %37, i32 %38)
  %40 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %41 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pvr2_hdw_get_input_available(i32 %45)
  %47 = load i32, i32* @PVR2_CVAL_INPUT_RADIO, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %33
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 1, i32 %52)
  %54 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %55 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %57 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %70

61:                                               ; preds = %51
  %62 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %63 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %66 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %67 = call i32 @pvr2_v4l2_dev_init(i8* %64, %struct.pvr2_v4l2* %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %33
  %69 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  store %struct.pvr2_v4l2* %69, %struct.pvr2_v4l2** %2, align 8
  br label %76

70:                                               ; preds = %60, %32
  %71 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %72 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %73 = call i32 @pvr2_trace(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_v4l2* %72)
  %74 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %75 = call i32 @pvr2_v4l2_destroy_no_lock(%struct.pvr2_v4l2* %74)
  store %struct.pvr2_v4l2* null, %struct.pvr2_v4l2** %2, align 8
  br label %76

76:                                               ; preds = %70, %68, %10
  %77 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  ret %struct.pvr2_v4l2* %77
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_channel_init(%struct.TYPE_4__*, %struct.pvr2_context*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_v4l2*) #1

declare dso_local i32 @pvr2_v4l2_dev_init(i8*, %struct.pvr2_v4l2*, i32) #1

declare dso_local i32 @pvr2_hdw_get_input_available(i32) #1

declare dso_local i32 @pvr2_v4l2_destroy_no_lock(%struct.pvr2_v4l2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
