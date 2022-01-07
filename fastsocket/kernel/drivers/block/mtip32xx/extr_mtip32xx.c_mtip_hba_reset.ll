; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hba_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hba_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32 }

@HOST_RESET = common dso_local global i32 0, align 4
@HOST_CTL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_hba_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_hba_reset(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i64, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %5 = load i32, i32* @HOST_RESET, align 4
  %6 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HOST_CTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HOST_CTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = call i64 @msecs_to_jiffies(i32 2000)
  %20 = add i64 %18, %19
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %45, %1
  %22 = call i32 @mdelay(i32 10)
  %23 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %24 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %25 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %59

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HOST_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = load i32, i32* @HOST_RESET, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @time_before(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %30
  %46 = phi i1 [ false, %30 ], [ %44, %40 ]
  br i1 %46, label %21, label %47

47:                                               ; preds = %45
  %48 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %49 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HOST_CTL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = load i32, i32* @HOST_RESET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %59

58:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %57, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
