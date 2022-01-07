; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_set_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.running_context }
%struct.running_context = type { i32 }

@TUNER_FREQ_MIN = common dso_local global i32 0, align 4
@TUNER_FREQ_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TUNE_FREQ_SELECT = common dso_local global i32 0, align 4
@TAKE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*, i32)* @set_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_frequency(%struct.poseidon* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.poseidon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.running_context*, align 8
  store %struct.poseidon* %0, %struct.poseidon** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %11 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.running_context* %12, %struct.running_context** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 62500
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TUNER_FREQ_MIN, align 4
  %18 = sdiv i32 %17, 1000
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TUNER_FREQ_MAX, align 4
  %23 = sdiv i32 %22, 1000
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %47

28:                                               ; preds = %20
  %29 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %30 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %33 = load i32, i32* @TUNE_FREQ_SELECT, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @send_set_req(%struct.poseidon* %32, i32 %33, i32 %34, i32* %8)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %37 = load i32, i32* @TAKE_REQUEST, align 4
  %38 = call i32 @send_set_req(%struct.poseidon* %36, i32 %37, i32 0, i32* %8)
  store i32 %38, i32* %6, align 4
  %39 = call i32 @msleep(i32 250)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.running_context*, %struct.running_context** %9, align 8
  %42 = getelementptr inbounds %struct.running_context, %struct.running_context* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %44 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %28, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
