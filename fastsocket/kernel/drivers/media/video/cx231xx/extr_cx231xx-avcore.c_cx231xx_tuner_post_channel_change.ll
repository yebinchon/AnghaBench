; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_tuner_post_channel_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_tuner_post_channel_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, i32 }

@.str = private unnamed_addr constant [57 x i8] c"cx231xx_tuner_post_channel_change  dev->tuner_type =0%d\0A\00", align 1
@DIF_AGC_IF_REF = common dso_local global i32 0, align 4
@FLD_DIF_K_AGC_RF = common dso_local global i32 0, align 4
@FLD_DIF_K_AGC_IF = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_B = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_D = common dso_local global i32 0, align 4
@TUNER_NXP_TDA18271 = common dso_local global i64 0, align 8
@FLD_DIF_IF_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_tuner_post_channel_change(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @cx231xx_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %10 = load i32, i32* @DIF_AGC_IF_REF, align 4
  %11 = call i32 @vid_blk_read_word(%struct.cx231xx* %9, i32 %10, i32* %4)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @FLD_DIF_K_AGC_RF, align 4
  %13 = load i32, i32* @FLD_DIF_K_AGC_IF, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %22 = load i32, i32* @V4L2_STD_SECAM_B, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @V4L2_STD_SECAM_D, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %20, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TUNER_NXP_TDA18271, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* @FLD_DIF_IF_REF, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, -2013265152
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, -2013265920
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %34
  br label %62

45:                                               ; preds = %1
  %46 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TUNER_NXP_TDA18271, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @FLD_DIF_IF_REF, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, -872414464
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %45
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, 1140850688
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %64 = load i32, i32* @DIF_AGC_IF_REF, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @vid_blk_write_word(%struct.cx231xx* %63, i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @cx231xx_info(i8*, i64) #1

declare dso_local i32 @vid_blk_read_word(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @vid_blk_write_word(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
