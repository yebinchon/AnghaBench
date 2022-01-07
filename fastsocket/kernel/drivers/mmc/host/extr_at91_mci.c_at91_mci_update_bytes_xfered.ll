; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_update_bytes_xfered.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_update_bytes_xfered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_data*, %struct.TYPE_3__* }
%struct.mmc_data = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"-> bytes_xfered %d, total_length = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91mci_host*)* @at91_mci_update_bytes_xfered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_update_bytes_xfered(%struct.at91mci_host* %0) #0 {
  %2 = alloca %struct.at91mci_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.at91mci_host* %0, %struct.at91mci_host** %2, align 8
  %4 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %5 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %12 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %57

20:                                               ; preds = %10, %1
  %21 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %22 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.mmc_data*, %struct.mmc_data** %24, align 8
  %26 = icmp ne %struct.mmc_data* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %29 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.mmc_data*, %struct.mmc_data** %31, align 8
  store %struct.mmc_data* %32, %struct.mmc_data** %3, align 8
  %33 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_DATA_WRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %27
  %40 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %44 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %39, %27
  br label %57

57:                                               ; preds = %19, %56, %20
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
