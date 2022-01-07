; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_ms = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@CMD_READY = common dso_local global i32 0, align 4
@FIFO_READY = common dso_local global i32 0, align 4
@CARD_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_ms*)* @tifm_ms_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_ms_check_status(%struct.tifm_ms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tifm_ms*, align 8
  store %struct.tifm_ms* %0, %struct.tifm_ms** %3, align 8
  %4 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %5 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %12 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CMD_READY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %43

18:                                               ; preds = %10
  %19 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %20 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FIFO_READY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %28 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %35 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CARD_INT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %43

41:                                               ; preds = %33, %26
  br label %42

42:                                               ; preds = %41, %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %40, %25, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
