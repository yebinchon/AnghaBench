; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_agc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@GET_LUM_CTL = common dso_local global i32 0, align 4
@AGC_MODE_FORMATTER = common dso_local global i32 0, align 4
@PRESET_AGC_FORMATTER = common dso_local global i32 0, align 4
@GET_STATUS_CTL = common dso_local global i32 0, align 4
@READ_AGC_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_get_agc(%struct.pwc_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %9 = load i32, i32* @GET_LUM_CTL, align 4
  %10 = load i32, i32* @AGC_MODE_FORMATTER, align 4
  %11 = call i32 @recv_control_msg(%struct.pwc_device* %8, i32 %9, i32 %10, i8* %6, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %22 = load i32, i32* @GET_LUM_CTL, align 4
  %23 = load i32, i32* @PRESET_AGC_FORMATTER, align 4
  %24 = call i32 @recv_control_msg(%struct.pwc_device* %21, i32 %22, i32 %23, i8* %6, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %20
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sgt i32 %31, 63
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8 63, i8* %6, align 1
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 10
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %60

39:                                               ; preds = %16
  %40 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %41 = load i32, i32* @GET_STATUS_CTL, align 4
  %42 = load i32, i32* @READ_AGC_FORMATTER, align 4
  %43 = call i32 @recv_control_msg(%struct.pwc_device* %40, i32 %41, i32 %42, i8* %6, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %61

48:                                               ; preds = %39
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %50, 159
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8 -97, i8* %6, align 1
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i8, i8* %6, align 1
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %55, 409
  %57 = add nsw i32 48, %56
  %58 = sub nsw i32 0, %57
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %34
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %46, %27, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @recv_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
