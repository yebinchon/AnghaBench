; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_store_cmatrix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_store_cmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@CMATRIX_LEN = common dso_local global i32 0, align 4
@REG_CMATRIX_SIGN = common dso_local global i64 0, align 8
@REG_CMATRIX_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @ov7670_store_cmatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_store_cmatrix(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @CMATRIX_LEN, align 4
  %10 = zext i32 %9 to i64
  store i8 0, i8* %7, align 1
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load i64, i64* @REG_CMATRIX_SIGN, align 8
  %13 = call i32 @ov7670_read(%struct.v4l2_subdev* %11, i64 %12, i8* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 192
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %7, align 1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %82, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CMATRIX_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %7, align 1
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, -255
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i8 -1, i8* %8, align 1
  br label %52

43:                                               ; preds = %29
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 -1, %48
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %8, align 1
  br label %52

52:                                               ; preds = %43, %42
  br label %70

53:                                               ; preds = %22
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 255
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i8 -1, i8* %8, align 1
  br label %69

61:                                               ; preds = %53
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %8, align 1
  br label %69

69:                                               ; preds = %61, %60
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %72 = load i64, i64* @REG_CMATRIX_BASE, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i8, i8* %8, align 1
  %77 = call i64 @ov7670_write(%struct.v4l2_subdev* %71, i64 %75, i8 zeroext %76)
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %18

85:                                               ; preds = %18
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %87 = load i64, i64* @REG_CMATRIX_SIGN, align 8
  %88 = load i8, i8* %7, align 1
  %89 = call i64 @ov7670_write(%struct.v4l2_subdev* %86, i64 %87, i8 zeroext %88)
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i64, i8*) #1

declare dso_local i64 @ov7670_write(%struct.v4l2_subdev*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
