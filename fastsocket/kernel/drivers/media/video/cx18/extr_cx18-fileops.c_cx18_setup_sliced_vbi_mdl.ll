; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_setup_sliced_vbi_mdl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_setup_sliced_vbi_mdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, %struct.cx18_buffer, %struct.cx18_mdl }
%struct.cx18_buffer = type { i64, i32, i32 }
%struct.cx18_mdl = type { i64, i32, i32* }

@CX18_VBI_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_setup_sliced_vbi_mdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_setup_sliced_vbi_mdl(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.cx18_mdl*, align 8
  %4 = alloca %struct.cx18_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  store %struct.cx18_mdl* %8, %struct.cx18_mdl** %3, align 8
  %9 = load %struct.cx18*, %struct.cx18** %2, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store %struct.cx18_buffer* %11, %struct.cx18_buffer** %4, align 8
  %12 = load %struct.cx18*, %struct.cx18** %2, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CX18_VBI_FRAMES, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.cx18*, %struct.cx18** %2, align 8
  %19 = getelementptr inbounds %struct.cx18, %struct.cx18* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cx18_buffer*, %struct.cx18_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cx18*, %struct.cx18** %2, align 8
  %29 = getelementptr inbounds %struct.cx18, %struct.cx18* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cx18_buffer*, %struct.cx18_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.cx18_buffer*, %struct.cx18_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.cx18_mdl*, %struct.cx18_mdl** %3, align 8
  %41 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.cx18*, %struct.cx18** %2, align 8
  %43 = getelementptr inbounds %struct.cx18, %struct.cx18* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cx18_mdl*, %struct.cx18_mdl** %3, align 8
  %51 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cx18_mdl*, %struct.cx18_mdl** %3, align 8
  %53 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
