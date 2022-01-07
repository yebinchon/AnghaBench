; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_scaling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_channel_settings = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"scaling w: %d, h: %d, curw: %d, curh: %d, d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"scaling %d, %d, %d, %d / %d - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*, i32, i32)* @vino_set_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_set_scaling(%struct.vino_channel_settings* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vino_channel_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %13 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %17 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %21 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %25 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %23, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %30 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %34 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %32, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = udiv i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = udiv i32 %41, %42
  %44 = call i32 @max(i32 %40, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp ult i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %59

54:                                               ; preds = %3
  %55 = load i32, i32* %11, align 4
  %56 = icmp ugt i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 8, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %62 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %11, align 4
  %71 = mul i32 %69, %70
  %72 = call i32 @vino_set_clipping(%struct.vino_channel_settings* %63, i32 %64, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %74 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %78 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %82 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %86 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %90 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %93 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %80, i32 %84, i32 %88, i32 %91, i32 %94)
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @vino_set_clipping(%struct.vino_channel_settings*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
