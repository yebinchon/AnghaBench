; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36016.c_zr36016_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36016.c_zr36016_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { i64 }
%struct.zr36016 = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: control %d call with %d byte\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*, i32, i32, i8*)* @zr36016_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36016_control(%struct.videocodec* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.videocodec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zr36016*, align 8
  %11 = alloca i32*, align 8
  store %struct.videocodec* %0, %struct.videocodec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.videocodec*, %struct.videocodec** %6, align 8
  %13 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.zr36016*
  store %struct.zr36016* %15, %struct.zr36016** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load %struct.zr36016*, %struct.zr36016** %10, align 8
  %19 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %62 [
    i32 132, label %25
    i32 133, label %34
    i32 130, label %43
    i32 131, label %58
    i32 128, label %58
    i32 129, label %59
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %67

32:                                               ; preds = %25
  %33 = load i32*, i32** %11, align 8
  store i32 0, i32* %33, align 4
  br label %65

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %67

41:                                               ; preds = %34
  %42 = load i32*, i32** %11, align 8
  store i32 0, i32* %42, align 4
  br label %65

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %67

50:                                               ; preds = %43
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %67

57:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %67

58:                                               ; preds = %4, %4
  store i32 0, i32* %5, align 4
  br label %67

59:                                               ; preds = %4
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %67

62:                                               ; preds = %4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %41, %32
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %62, %59, %58, %57, %54, %47, %38, %29
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
