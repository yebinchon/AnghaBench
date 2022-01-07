; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_host_do_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_host_do_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [22 x i8] c"%s: disable error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @mmc_host_do_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_host_do_disable(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.mmc_host*, i32)**
  %13 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.mmc_host*, i32)* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.mmc_host*, i32)**
  %23 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %22, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %23(%struct.mmc_host* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %15
  %32 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %33 = call i32 @mmc_hostname(%struct.mmc_host* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @msecs_to_jiffies(i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 2
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @mmc_schedule_delayed_work(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %31
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mmc_schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
