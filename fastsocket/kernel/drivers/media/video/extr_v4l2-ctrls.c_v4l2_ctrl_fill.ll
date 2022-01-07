; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_CTRL_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BUTTON = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_STRING = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_CTRL_CLASS = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_SLIDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_ctrl_fill(i32 %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @v4l2_ctrl_get_name(i32 %17)
  %19 = load i8**, i8*** %10, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %64 [
    i32 195, label %22
    i32 196, label %22
    i32 191, label %22
    i32 192, label %22
    i32 175, label %22
    i32 129, label %22
    i32 173, label %22
    i32 186, label %22
    i32 183, label %22
    i32 160, label %22
    i32 150, label %22
    i32 151, label %22
    i32 149, label %22
    i32 180, label %22
    i32 178, label %22
    i32 142, label %22
    i32 198, label %22
    i32 203, label %22
    i32 145, label %22
    i32 172, label %22
    i32 171, label %22
    i32 147, label %28
    i32 134, label %28
    i32 143, label %39
    i32 159, label %39
    i32 166, label %39
    i32 165, label %39
    i32 164, label %39
    i32 163, label %39
    i32 169, label %39
    i32 162, label %39
    i32 161, label %39
    i32 167, label %39
    i32 168, label %39
    i32 152, label %39
    i32 155, label %39
    i32 154, label %39
    i32 157, label %39
    i32 156, label %39
    i32 181, label %39
    i32 184, label %39
    i32 131, label %39
    i32 140, label %42
    i32 139, label %42
    i32 130, label %45
    i32 187, label %45
    i32 158, label %45
    i32 179, label %45
    i32 190, label %58
  ]

22:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %23 = load i32, i32* @V4L2_CTRL_TYPE_BOOLEAN, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %14, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 1, i32* %27, align 4
  br label %67

28:                                               ; preds = %8, %8
  %29 = load i32, i32* @V4L2_CTRL_TYPE_BUTTON, align 4
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %15, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %14, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %12, align 8
  store i32 0, i32* %38, align 4
  br label %67

39:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %40 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  br label %67

42:                                               ; preds = %8, %8
  %43 = load i32, i32* @V4L2_CTRL_TYPE_STRING, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  br label %67

45:                                               ; preds = %8, %8, %8, %8
  %46 = load i32, i32* @V4L2_CTRL_TYPE_CTRL_CLASS, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %49 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %15, align 8
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %14, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %13, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %12, align 8
  store i32 0, i32* %57, align 4
  br label %67

58:                                               ; preds = %8
  %59 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %14, align 8
  store i32 1, i32* %61, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 0, i32* %62, align 4
  %63 = load i32*, i32** %13, align 8
  store i32 16777215, i32* %63, align 4
  br label %67

64:                                               ; preds = %8
  %65 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %58, %45, %42, %39, %28, %22
  %68 = load i32, i32* %9, align 4
  switch i32 %68, label %84 [
    i32 166, label %69
    i32 162, label %69
    i32 154, label %69
    i32 153, label %69
    i32 157, label %69
    i32 193, label %74
    i32 206, label %74
    i32 205, label %74
    i32 194, label %74
    i32 188, label %74
    i32 182, label %74
    i32 137, label %74
    i32 174, label %74
    i32 138, label %74
    i32 189, label %74
    i32 176, label %74
    i32 136, label %74
    i32 185, label %74
    i32 141, label %74
    i32 197, label %74
    i32 199, label %74
    i32 202, label %74
    i32 200, label %74
    i32 204, label %74
    i32 201, label %74
    i32 146, label %74
    i32 144, label %74
    i32 132, label %74
    i32 133, label %74
    i32 148, label %79
    i32 135, label %79
    i32 177, label %79
    i32 170, label %79
    i32 128, label %79
  ]

69:                                               ; preds = %67, %67, %67, %67, %67
  %70 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %84

74:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67
  %75 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %84

79:                                               ; preds = %67, %67, %67, %67, %67
  %80 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %67, %79, %74, %69
  ret void
}

declare dso_local i8* @v4l2_ctrl_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
