; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_data_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_data_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_dev = type { i32, i64, i32 }
%struct.tifm_ms = type { i32, i64, i64 }
%struct.memstick_host = type { i32 }

@SOCK_DMA_FIFO_STATUS = common dso_local global i64 0, align 8
@SOCK_MS_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"data event: fifo_status %x, host_status %x, flags %x\0A\00", align 1
@FIFO_READY = common dso_local global i32 0, align 4
@TIFM_FIFO_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_dev*)* @tifm_ms_data_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_ms_data_event(%struct.tifm_dev* %0) #0 {
  %2 = alloca %struct.tifm_dev*, align 8
  %3 = alloca %struct.tifm_ms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tifm_dev* %0, %struct.tifm_dev** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %8 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %11 = call i64 @tifm_get_drvdata(%struct.tifm_dev* %10)
  %12 = inttoptr i64 %11 to %struct.memstick_host*
  %13 = call %struct.tifm_ms* @memstick_priv(%struct.memstick_host* %12)
  store %struct.tifm_ms* %13, %struct.tifm_ms** %3, align 8
  %14 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %15 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOCK_DMA_FIFO_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %21 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCK_MS_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %27 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %31 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %32)
  %34 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %35 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %1
  %39 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %40 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* @FIFO_READY, align 4
  %49 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %50 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %54 = call i32 @tifm_ms_check_status(%struct.tifm_ms* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %43, %38
  %56 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %57 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TIFM_FIFO_MORE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %67 = call i32 @tifm_ms_transfer_data(%struct.tifm_ms* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @FIFO_READY, align 4
  %71 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %72 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %76 = call i32 @tifm_ms_check_status(%struct.tifm_ms* %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %69, %65
  br label %78

78:                                               ; preds = %77, %60, %55
  br label %79

79:                                               ; preds = %78, %1
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %82 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SOCK_DMA_FIFO_STATUS, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %79
  %90 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %91 = call i32 @tifm_ms_complete_cmd(%struct.tifm_ms* %90)
  br label %92

92:                                               ; preds = %89, %79
  %93 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %94 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.tifm_ms* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i64 @tifm_get_drvdata(%struct.tifm_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @tifm_ms_check_status(%struct.tifm_ms*) #1

declare dso_local i32 @tifm_ms_transfer_data(%struct.tifm_ms*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tifm_ms_complete_cmd(%struct.tifm_ms*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
