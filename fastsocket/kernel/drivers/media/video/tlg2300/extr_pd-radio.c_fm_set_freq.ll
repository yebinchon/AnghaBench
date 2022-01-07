; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_fm_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_fm_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.poseidon* }
%struct.poseidon = type { i32, i32, %struct.file* }
%struct.v4l2_frequency = type { i32 }

@pm_fm_resume = common dso_local global i32 0, align 4
@pm_fm_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @fm_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_set_freq(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.poseidon*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  store %struct.poseidon* %10, %struct.poseidon** %7, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %13 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %12, i32 0, i32 2
  store %struct.file* %11, %struct.file** %13, align 8
  %14 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  %15 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @set_frequency(%struct.poseidon* %14, i32 %17)
  ret i32 %18
}

declare dso_local i32 @set_frequency(%struct.poseidon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
