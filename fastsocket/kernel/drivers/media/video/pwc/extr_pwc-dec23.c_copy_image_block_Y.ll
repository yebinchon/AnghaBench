; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_copy_image_block_Y.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_copy_image_block_Y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OUTER_CROP_VALUE = common dso_local global i32 0, align 4
@pwc_crop_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32)* @copy_image_block_Y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_image_block_Y(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %26, %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %19, %20
  %22 = call i8* @CLAMP(i32 %21)
  %23 = ptrtoint i8* %22 to i8
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %11, align 8
  store i8 %23, i8* %24, align 1
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %10, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %48, %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %41, %42
  %44 = call i8* @CLAMP(i32 %43)
  %45 = ptrtoint i8* %44 to i8
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %11, align 8
  store i8 %45, i8* %46, align 1
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %10, align 8
  br label %36

53:                                               ; preds = %36
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8* %58, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %71, %53
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = ashr i32 %64, %65
  %67 = call i8* @CLAMP(i32 %66)
  %68 = ptrtoint i8* %67 to i8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 8
  store i8 %68, i8* %69, align 1
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %10, align 8
  br label %59

76:                                               ; preds = %59
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = mul i32 %78, 3
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8* %81, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %94, %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %87, %88
  %90 = call i8* @CLAMP(i32 %89)
  %91 = ptrtoint i8* %90 to i8
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %11, align 8
  store i8 %91, i8* %92, align 1
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %10, align 8
  br label %82

99:                                               ; preds = %82
  ret void
}

declare dso_local i8* @CLAMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
