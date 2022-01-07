; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_host_lazy_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_host_lazy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i64, i32, i32, i64, i64 }

@MMC_CAP_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_host_lazy_disable(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MMC_CAP_DISABLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %46

24:                                               ; preds = %17
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %46

30:                                               ; preds = %24
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 2
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @msecs_to_jiffies(i64 %40)
  %42 = call i32 @mmc_schedule_delayed_work(i32* %37, i32 %41)
  store i32 0, i32* %2, align 4
  br label %46

43:                                               ; preds = %30
  %44 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %45 = call i32 @mmc_host_do_disable(%struct.mmc_host* %44, i32 1)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %35, %29, %23, %16, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @mmc_schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mmc_host_do_disable(%struct.mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
