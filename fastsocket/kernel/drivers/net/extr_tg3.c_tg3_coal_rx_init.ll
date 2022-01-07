; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_coal_rx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_coal_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32 }

@ENABLE_RSS = common dso_local global i32 0, align 4
@HOSTCC_RXCOL_TICKS = common dso_local global i32 0, align 4
@HOSTCC_RXMAX_FRAMES = common dso_local global i32 0, align 4
@HOSTCC_RXCOAL_MAXF_INT = common dso_local global i32 0, align 4
@HOSTCC_RXCOL_TICKS_VEC1 = common dso_local global i32 0, align 4
@HOSTCC_RXMAX_FRAMES_VEC1 = common dso_local global i32 0, align 4
@HOSTCC_RXCOAL_MAXF_INT_VEC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, %struct.ethtool_coalesce*)* @tg3_coal_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_coal_rx_init(%struct.tg3* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.tg3*, %struct.tg3** %3, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.tg3*, %struct.tg3** %3, align 8
  %12 = load i32, i32* @ENABLE_RSS, align 4
  %13 = call i32 @tg3_flag(%struct.tg3* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @HOSTCC_RXCOL_TICKS, align 4
  %17 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tw32(i32 %16, i32 %19)
  %21 = load i32, i32* @HOSTCC_RXMAX_FRAMES, align 4
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tw32(i32 %21, i32 %24)
  %26 = load i32, i32* @HOSTCC_RXCOAL_MAXF_INT, align 4
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tw32(i32 %26, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load i32, i32* @HOSTCC_RXCOL_TICKS, align 4
  %35 = call i32 @tw32(i32 %34, i32 0)
  %36 = load i32, i32* @HOSTCC_RXMAX_FRAMES, align 4
  %37 = call i32 @tw32(i32 %36, i32 0)
  %38 = load i32, i32* @HOSTCC_RXCOAL_MAXF_INT, align 4
  %39 = call i32 @tw32(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %33, %15
  br label %41

41:                                               ; preds = %73, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %41
  %46 = load i32, i32* @HOSTCC_RXCOL_TICKS_VEC1, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 24
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tw32(i32 %50, i32 %53)
  %55 = load i32, i32* @HOSTCC_RXMAX_FRAMES_VEC1, align 4
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 24
  %58 = add nsw i32 %55, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tw32(i32 %59, i32 %62)
  %64 = load i32, i32* @HOSTCC_RXCOAL_MAXF_INT_VEC1, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 24
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tw32(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %45
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %41

76:                                               ; preds = %41
  br label %77

77:                                               ; preds = %100, %76
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.tg3*, %struct.tg3** %3, align 8
  %80 = getelementptr inbounds %struct.tg3, %struct.tg3* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %77
  %85 = load i32, i32* @HOSTCC_RXCOL_TICKS_VEC1, align 4
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %86, 24
  %88 = add nsw i32 %85, %87
  %89 = call i32 @tw32(i32 %88, i32 0)
  %90 = load i32, i32* @HOSTCC_RXMAX_FRAMES_VEC1, align 4
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 %91, 24
  %93 = add nsw i32 %90, %92
  %94 = call i32 @tw32(i32 %93, i32 0)
  %95 = load i32, i32* @HOSTCC_RXCOAL_MAXF_INT_VEC1, align 4
  %96 = load i32, i32* %5, align 4
  %97 = mul nsw i32 %96, 24
  %98 = add nsw i32 %95, %97
  %99 = call i32 @tw32(i32 %98, i32 0)
  br label %100

100:                                              ; preds = %84
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %77

103:                                              ; preds = %77
  ret void
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
