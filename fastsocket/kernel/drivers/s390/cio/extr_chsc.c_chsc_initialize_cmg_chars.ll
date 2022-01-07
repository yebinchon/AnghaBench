; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_initialize_cmg_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_initialize_cmg_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_path = type { i32, %struct.cmg_chars* }
%struct.cmg_chars = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NR_MEASUREMENT_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_path*, i32, %struct.cmg_chars*)* @chsc_initialize_cmg_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_initialize_cmg_chars(%struct.channel_path* %0, i32 %1, %struct.cmg_chars* %2) #0 {
  %4 = alloca %struct.channel_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmg_chars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmg_chars*, align 8
  store %struct.channel_path* %0, %struct.channel_path** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmg_chars* %2, %struct.cmg_chars** %6, align 8
  %10 = load %struct.channel_path*, %struct.channel_path** %4, align 8
  %11 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %65 [
    i32 2, label %13
    i32 3, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cmg_chars* @kmalloc(i32 8, i32 %14)
  %16 = load %struct.channel_path*, %struct.channel_path** %4, align 8
  %17 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %16, i32 0, i32 1
  store %struct.cmg_chars* %15, %struct.cmg_chars** %17, align 8
  %18 = load %struct.channel_path*, %struct.channel_path** %4, align 8
  %19 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %18, i32 0, i32 1
  %20 = load %struct.cmg_chars*, %struct.cmg_chars** %19, align 8
  %21 = icmp ne %struct.cmg_chars* %20, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %13
  %23 = load %struct.channel_path*, %struct.channel_path** %4, align 8
  %24 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %23, i32 0, i32 1
  %25 = load %struct.cmg_chars*, %struct.cmg_chars** %24, align 8
  store %struct.cmg_chars* %25, %struct.cmg_chars** %9, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %60, %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NR_MEASUREMENT_CHARS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 3
  %33 = ashr i32 128, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.cmg_chars*, %struct.cmg_chars** %6, align 8
  %40 = getelementptr inbounds %struct.cmg_chars, %struct.cmg_chars* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cmg_chars*, %struct.cmg_chars** %9, align 8
  %47 = getelementptr inbounds %struct.cmg_chars, %struct.cmg_chars* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %59

52:                                               ; preds = %30
  %53 = load %struct.cmg_chars*, %struct.cmg_chars** %9, align 8
  %54 = getelementptr inbounds %struct.cmg_chars, %struct.cmg_chars* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %26

63:                                               ; preds = %26
  br label %64

64:                                               ; preds = %63, %13
  br label %66

65:                                               ; preds = %3
  br label %66

66:                                               ; preds = %65, %64
  ret void
}

declare dso_local %struct.cmg_chars* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
