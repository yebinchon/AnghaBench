; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_exp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_COM1 = common dso_local global i32 0, align 4
@REG_COM8 = common dso_local global i32 0, align 4
@REG_AECHH = common dso_local global i32 0, align 4
@REG_AECH = common dso_local global i32 0, align 4
@COM8_AEC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7670_s_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_exp(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load i32, i32* @REG_COM1, align 4
  %13 = call i32 @ov7670_read(%struct.v4l2_subdev* %11, i32 %12, i8* %7)
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load i32, i32* @REG_COM8, align 4
  %16 = call i32 @ov7670_read(%struct.v4l2_subdev* %14, i32 %15, i8* %8)
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load i32, i32* @REG_AECHH, align 4
  %20 = call i32 @ov7670_read(%struct.v4l2_subdev* %18, i32 %19, i8* %10)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %2
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 252
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 3
  %31 = or i32 %28, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 2
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %9, align 1
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 192
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 10
  %42 = and i32 %41, 63
  %43 = or i32 %39, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %10, align 1
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = load i32, i32* @REG_COM1, align 4
  %47 = load i8, i8* %7, align 1
  %48 = call i32 @ov7670_write(%struct.v4l2_subdev* %45, i32 %46, i8 zeroext %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = load i32, i32* @REG_AECH, align 4
  %51 = load i8, i8* %9, align 1
  %52 = call i32 @ov7670_write(%struct.v4l2_subdev* %49, i32 %50, i8 zeroext %51)
  %53 = add nsw i32 %48, %52
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %55 = load i32, i32* @REG_AECHH, align 4
  %56 = load i8, i8* %10, align 1
  %57 = call i32 @ov7670_write(%struct.v4l2_subdev* %54, i32 %55, i8 zeroext %56)
  %58 = add nsw i32 %53, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %25
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %63 = load i32, i32* @REG_COM8, align 4
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @COM8_AEC, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, -1
  %69 = and i32 %65, %68
  %70 = trunc i32 %69 to i8
  %71 = call i32 @ov7670_write(%struct.v4l2_subdev* %62, i32 %63, i8 zeroext %70)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %61, %25
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
