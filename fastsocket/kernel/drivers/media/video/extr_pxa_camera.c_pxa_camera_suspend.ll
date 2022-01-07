; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.soc_camera_host = type { %struct.pxa_camera_dev* }
%struct.pxa_camera_dev = type { %struct.TYPE_6__*, i64, i8** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32)* }

@CICR0 = common dso_local global i64 0, align 8
@CICR1 = common dso_local global i64 0, align 8
@CICR2 = common dso_local global i64 0, align 8
@CICR3 = common dso_local global i64 0, align 8
@CICR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32)* @pxa_camera_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_suspend(%struct.soc_camera_device* %0, i32 %1) #0 {
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_camera_host*, align 8
  %6 = alloca %struct.pxa_camera_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %10 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %12)
  store %struct.soc_camera_host* %13, %struct.soc_camera_host** %5, align 8
  %14 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %15 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %14, i32 0, i32 0
  %16 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %15, align 8
  store %struct.pxa_camera_dev* %16, %struct.pxa_camera_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CICR0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i8* @__raw_readl(i64 %21)
  %23 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %24 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  store i8* %22, i8** %29, align 8
  %30 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CICR1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i8* @__raw_readl(i64 %34)
  %36 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %37 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* %35, i8** %42, align 8
  %43 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %44 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CICR2, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i8* @__raw_readl(i64 %47)
  %49 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %50 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  store i8* %48, i8** %55, align 8
  %56 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %57 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CICR3, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i8* @__raw_readl(i64 %60)
  %62 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %63 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %61, i8** %68, align 8
  %69 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %70 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CICR4, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i8* @__raw_readl(i64 %73)
  %75 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %76 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %74, i8** %81, align 8
  %82 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %83 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %2
  %87 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %88 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %92, align 8
  %94 = icmp ne i32 (%struct.TYPE_6__*, i32)* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %86
  %96 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %97 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %101, align 8
  %103 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %104 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 %102(%struct.TYPE_6__* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %95, %86, %2
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i8* @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
