; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_omap_nor.c_omap_set_vpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_omap_nor.c_omap_set_vpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }

@omap_set_vpp.count = internal global i32 0, align 4
@EMIFS_CONFIG = common dso_local global i32 0, align 4
@OMAP_EMIFS_CONFIG_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32)* @omap_set_vpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_set_vpp(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 (...) @cpu_class_is_omap1()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* @omap_set_vpp.count, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @omap_set_vpp.count, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* @EMIFS_CONFIG, align 4
  %17 = call i32 @omap_readl(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @OMAP_EMIFS_CONFIG_WP, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @EMIFS_CONFIG, align 4
  %23 = call i32 @omap_writel(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %11
  br label %43

25:                                               ; preds = %8
  %26 = load i32, i32* @omap_set_vpp.count, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* @omap_set_vpp.count, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @omap_set_vpp.count, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* @EMIFS_CONFIG, align 4
  %34 = call i32 @omap_readl(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @OMAP_EMIFS_CONFIG_WP, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @EMIFS_CONFIG, align 4
  %41 = call i32 @omap_writel(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %28, %25
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
