; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.meye_params = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i8*)* @vidioc_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vidioc_default(%struct.file* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %35 [
    i32 133, label %11
    i32 128, label %15
    i32 132, label %19
    i32 129, label %23
    i32 131, label %29
    i32 130, label %31
  ]

11:                                               ; preds = %4
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.meye_params*
  %14 = call i64 @meyeioc_g_params(%struct.meye_params* %13)
  store i64 %14, i64* %5, align 8
  br label %38

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.meye_params*
  %18 = call i64 @meyeioc_s_params(%struct.meye_params* %17)
  store i64 %18, i64* %5, align 8
  br label %38

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = call i64 @meyeioc_qbuf_capt(i32* %21)
  store i64 %22, i64* %5, align 8
  br label %38

23:                                               ; preds = %4
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = call i64 @meyeioc_sync(%struct.file* %24, i8* %25, i32* %27)
  store i64 %28, i64* %5, align 8
  br label %38

29:                                               ; preds = %4
  %30 = call i64 (...) @meyeioc_stillcapt()
  store i64 %30, i64* %5, align 8
  br label %38

31:                                               ; preds = %4
  %32 = load i8*, i8** %9, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = call i64 @meyeioc_stilljcapt(i32* %33)
  store i64 %34, i64* %5, align 8
  br label %38

35:                                               ; preds = %4
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %35, %31, %29, %23, %19, %15, %11
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @meyeioc_g_params(%struct.meye_params*) #1

declare dso_local i64 @meyeioc_s_params(%struct.meye_params*) #1

declare dso_local i64 @meyeioc_qbuf_capt(i32*) #1

declare dso_local i64 @meyeioc_sync(%struct.file*, i8*, i32*) #1

declare dso_local i64 @meyeioc_stillcapt(...) #1

declare dso_local i64 @meyeioc_stilljcapt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
