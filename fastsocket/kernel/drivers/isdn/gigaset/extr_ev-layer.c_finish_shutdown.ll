; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_finish_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_finish_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32, i64, i32, i64, i32 }

@MS_LOCKED = common dso_local global i64 0, align 8
@MS_UNINITIALIZED = common dso_local global i64 0, align 8
@M_UNKNOWN = common dso_local global i32 0, align 4
@ISDN_STAT_STOP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @finish_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_shutdown(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %3 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %4 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MS_LOCKED, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i64, i64* @MS_UNINITIALIZED, align 8
  %10 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* @M_UNKNOWN, align 4
  %13 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %22 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %24 = load i32, i32* @ISDN_STAT_STOP, align 4
  %25 = call i32 @gigaset_i4l_cmd(%struct.cardstate* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %34 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %33, i32 0, i32 1
  %35 = call i32 @wake_up(i32* %34)
  ret void
}

declare dso_local i32 @gigaset_i4l_cmd(%struct.cardstate*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
