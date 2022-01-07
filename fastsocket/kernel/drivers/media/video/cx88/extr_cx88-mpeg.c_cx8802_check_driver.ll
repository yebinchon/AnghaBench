; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_check_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_check_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_driver = type { i64, i64, i32*, i32*, i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@CX88_MPEG_DVB = common dso_local global i64 0, align 8
@CX88_MPEG_BLACKBIRD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CX8802_DRVCTL_SHARED = common dso_local global i64 0, align 8
@CX8802_DRVCTL_EXCLUSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_driver*)* @cx8802_check_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_check_driver(%struct.cx8802_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx8802_driver*, align 8
  store %struct.cx8802_driver* %0, %struct.cx8802_driver** %3, align 8
  %4 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %5 = icmp eq %struct.cx8802_driver* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %63

9:                                                ; preds = %1
  %10 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %11 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CX88_MPEG_DVB, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %17 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CX88_MPEG_BLACKBIRD, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %15, %9
  %25 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %26 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CX8802_DRVCTL_SHARED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %32 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CX8802_DRVCTL_EXCLUSIVE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %63

39:                                               ; preds = %30, %24
  %40 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %41 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %46 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %51 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.cx8802_driver*, %struct.cx8802_driver** %3, align 8
  %56 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %49, %44, %39
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59, %36, %21, %6
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
