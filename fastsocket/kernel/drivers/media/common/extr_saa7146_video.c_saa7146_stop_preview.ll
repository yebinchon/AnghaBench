; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_stop_preview.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_stop_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.saa7146_fh* }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"streaming capture is active.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_OVERLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"no active overlay.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"overlay is active, but in another open.\0A\00", align 1
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_stop_preview(%struct.saa7146_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  %6 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %7 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %6, i32 0, i32 0
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  store %struct.saa7146_dev* %8, %struct.saa7146_dev** %4, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  store %struct.saa7146_vv* %11, %struct.saa7146_vv** %5, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %14 = bitcast %struct.saa7146_fh* %13 to i8*
  %15 = call i32 @DEB_EE(i8* %14)
  %16 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %17 = call i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = call i32 @DEB_D(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %25 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @STATUS_OVERLAY, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @DEB_D(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

32:                                               ; preds = %23
  %33 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %34 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %33, i32 0, i32 1
  %35 = load %struct.saa7146_fh*, %struct.saa7146_fh** %34, align 8
  %36 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %37 = icmp ne %struct.saa7146_fh* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call i32 @DEB_D(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %54

42:                                               ; preds = %32
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %46 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %45, i32 0, i32 1
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %46, align 8
  %47 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %48 = call i32 @saa7146_disable_overlay(%struct.saa7146_fh* %47)
  %49 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %50 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %51 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @saa7146_res_free(%struct.saa7146_fh* %49, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %42, %38, %30, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_disable_overlay(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
