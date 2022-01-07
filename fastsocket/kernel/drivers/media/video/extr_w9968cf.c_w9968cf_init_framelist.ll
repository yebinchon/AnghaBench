; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_init_framelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9968cf.c_w9968cf_init_framelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9968cf_device = type { i64, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32, i64 }

@F_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w9968cf_device*)* @w9968cf_init_framelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_init_framelist(%struct.w9968cf_device* %0) #0 {
  %2 = alloca %struct.w9968cf_device*, align 8
  %3 = alloca i64, align 8
  store %struct.w9968cf_device* %0, %struct.w9968cf_device** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %7 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %12 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %11, i32 0, i32 2
  %13 = load i32**, i32*** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  store i32* null, i32** %15, align 8
  %16 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %17 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @F_UNUSED, align 4
  %23 = load %struct.w9968cf_device*, %struct.w9968cf_device** %2, align 8
  %24 = getelementptr inbounds %struct.w9968cf_device, %struct.w9968cf_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %22, i32* %28, align 8
  br label %29

29:                                               ; preds = %10
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %4

32:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
