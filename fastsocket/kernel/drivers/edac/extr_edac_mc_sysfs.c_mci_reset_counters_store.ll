; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_mci_reset_counters_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc_sysfs.c_mci_reset_counters_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info*, i64, i64, i64, i64 }
%struct.csrow_info = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i8*, i64)* @mci_reset_counters_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mci_reset_counters_store(%struct.mem_ctl_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.csrow_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %15 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %53, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %21 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %26 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %25, i32 0, i32 2
  %27 = load %struct.csrow_info*, %struct.csrow_info** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %27, i64 %29
  store %struct.csrow_info* %30, %struct.csrow_info** %9, align 8
  %31 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %32 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %34 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %49, %24
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %38 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %43 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %35

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %59 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
