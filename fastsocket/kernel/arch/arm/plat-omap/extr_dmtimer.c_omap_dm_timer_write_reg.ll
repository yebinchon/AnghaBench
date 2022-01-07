; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dmtimer.c_omap_dm_timer_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dmtimer.c_omap_dm_timer_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i64, i64 }

@OMAP_TIMER_WRITE_PEND_REG = common dso_local global i32 0, align 4
@WPSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dm_timer*, i32, i32)* @omap_dm_timer_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dm_timer_write_reg(%struct.omap_dm_timer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_dm_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %8 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %26, %11
  %13 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %14 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @OMAP_TIMER_WRITE_PEND_REG, align 4
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WPSHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = call i32 (...) @cpu_relax()
  br label %12

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %32 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i32 @writel(i32 %30, i64 %37)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
