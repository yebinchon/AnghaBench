; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_process_target_rdy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_process_target_rdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, %struct.htc_endpoint*, i32 }
%struct.htc_endpoint = type { i32, i32 }
%struct.htc_ready_msg = type { i32 }

@ENDPOINT0 = common dso_local global i64 0, align 8
@HTC_CTRL_RSVD_SVC = common dso_local global i32 0, align 4
@HTC_MAX_CONTROL_MESSAGE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, i8*)* @htc_process_target_rdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_process_target_rdy(%struct.htc_target* %0, i8* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.htc_endpoint*, align 8
  %6 = alloca %struct.htc_ready_msg*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.htc_ready_msg*
  store %struct.htc_ready_msg* %8, %struct.htc_ready_msg** %6, align 8
  %9 = load %struct.htc_ready_msg*, %struct.htc_ready_msg** %6, align 8
  %10 = getelementptr inbounds %struct.htc_ready_msg, %struct.htc_ready_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be16_to_cpu(i32 %11)
  %13 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %16 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %15, i32 0, i32 2
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %16, align 8
  %18 = load i64, i64* @ENDPOINT0, align 8
  %19 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %17, i64 %18
  store %struct.htc_endpoint* %19, %struct.htc_endpoint** %5, align 8
  %20 = load i32, i32* @HTC_CTRL_RSVD_SVC, align 4
  %21 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %22 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @HTC_MAX_CONTROL_MESSAGE_LENGTH, align 4
  %24 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %25 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %27 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %26, i32 0, i32 1
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %30 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %29, i32 0, i32 0
  %31 = call i32 @complete(i32* %30)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
