; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_set_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TUNER_AUD_ANA_STD = common dso_local global i32 0, align 4
@TUNER_FREQ_MIN_FM = common dso_local global i32 0, align 4
@TUNER_FREQ_MAX_FM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TUNE_FREQ_SELECT = common dso_local global i32 0, align 4
@TAKE_REQUEST = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@PLAY_SERVICE = common dso_local global i32 0, align 4
@TLG_TUNE_PLAY_SVC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*, i32)* @set_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_frequency(%struct.poseidon* %0, i32 %1) #0 {
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %9 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %12 = load i32, i32* @TUNER_AUD_ANA_STD, align 4
  %13 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %14 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @send_set_req(%struct.poseidon* %11, i32 %12, i32 %16, i32* %7)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 125
  %20 = mul nsw i32 %19, 500
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TUNER_FREQ_MIN_FM, align 4
  %24 = sdiv i32 %23, 1000
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TUNER_FREQ_MAX_FM, align 4
  %29 = sdiv i32 %28, 1000
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %72

34:                                               ; preds = %26
  %35 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %36 = load i32, i32* @TUNE_FREQ_SELECT, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @send_set_req(%struct.poseidon* %35, i32 %36, i32 %37, i32* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %72

42:                                               ; preds = %34
  %43 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %44 = load i32, i32* @TAKE_REQUEST, align 4
  %45 = call i32 @send_set_req(%struct.poseidon* %43, i32 %44, i32 0, i32* %7)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = call i32 @set_current_state(i32 %46)
  %48 = load i32, i32* @HZ, align 4
  %49 = sdiv i32 %48, 4
  %50 = call i32 @schedule_timeout(i32 %49)
  %51 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %52 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %42
  %57 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %58 = load i32, i32* @TAKE_REQUEST, align 4
  %59 = call i32 @send_set_req(%struct.poseidon* %57, i32 %58, i32 0, i32* %7)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %61 = load i32, i32* @PLAY_SERVICE, align 4
  %62 = load i32, i32* @TLG_TUNE_PLAY_SVC_START, align 4
  %63 = call i32 @send_set_req(%struct.poseidon* %60, i32 %61, i32 %62, i32* %7)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %65 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %42
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %70 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %41, %31
  %73 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %74 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
