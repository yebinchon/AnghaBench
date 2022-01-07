; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_cpufreq.c_get_gizmo_latency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_cpufreq.c_get_gizmo_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdcpwr_mapbase = common dso_local global i64 0, align 8
@SDCPWR_GIZTIME_REG = common dso_local global i64 0, align 8
@SDCPWR_GIZTIME_GR = common dso_local global i32 0, align 4
@SDCPWR_GIZTIME_LONGLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_gizmo_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gizmo_latency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @sdcpwr_mapbase, align 8
  %4 = load i64, i64* @SDCPWR_GIZTIME_REG, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @in_le32(i64 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @SDCPWR_GIZTIME_GR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @SDCPWR_GIZTIME_LONGLOCK, align 4
  %14 = and i32 %12, %13
  %15 = mul nsw i32 %14, 128000
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @SDCPWR_GIZTIME_LONGLOCK, align 4
  %19 = and i32 %17, %18
  %20 = mul nsw i32 %19, 1000
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @in_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
