; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_verify_state_s3d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_verify_state_s3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@SAVAGE_TEXPALADDR_S3D = common dso_local global i32 0, align 4
@SAVAGE_DESTTEXRWWATERMARK_S3D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid register range (0x%04x-0x%04x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SAVAGE_SCSTART_S3D = common dso_local global i32 0, align 4
@s3d = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@SAVAGE_SCISSOR_MASK_S3D = common dso_local global i32 0, align 4
@SAVAGE_SCEND_S3D = common dso_local global i32 0, align 4
@SAVAGE_TEXCTRL_S3D = common dso_local global i32 0, align 4
@SAVAGE_TEXADDR_S3D = common dso_local global i32 0, align 4
@SAVAGE_TEXCTRL_TEXEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32*)* @savage_verify_state_s3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_verify_state_s3d(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @SAVAGE_TEXPALADDR_S3D, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %14, %15
  %17 = sub i32 %16, 1
  %18 = load i32, i32* @SAVAGE_DESTTEXRWWATERMARK_S3D, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13, %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add i32 %22, %23
  %25 = sub i32 %24, 1
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %74

29:                                               ; preds = %13
  %30 = load i32, i32* @SAVAGE_SCSTART_S3D, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s3d, i32 0, i32 3), align 4
  %32 = load i32, i32* @SAVAGE_SCISSOR_MASK_S3D, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @SAVE_STATE_MASK(i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* @SAVAGE_SCEND_S3D, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s3d, i32 0, i32 2), align 4
  %37 = load i32, i32* @SAVAGE_SCISSOR_MASK_S3D, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @SAVE_STATE_MASK(i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SAVAGE_TEXCTRL_S3D, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* @SAVAGE_TEXPALADDR_S3D, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i32, i32* @SAVAGE_TEXCTRL_S3D, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s3d, i32 0, i32 1), align 4
  %52 = call i32 @SAVE_STATE(i32 %50, i32 %51)
  %53 = load i32, i32* @SAVAGE_TEXADDR_S3D, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s3d, i32 0, i32 0), align 4
  %55 = call i32 @SAVE_STATE(i32 %53, i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SAVAGE_TEXCTRL_TEXEN_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %49
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @savage_verify_texaddr(%struct.TYPE_9__* %65, i32 0, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %74

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %43, %29
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %64, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @SAVE_STATE_MASK(i32, i32, i32) #1

declare dso_local i32 @SAVE_STATE(i32, i32) #1

declare dso_local i32 @savage_verify_texaddr(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
