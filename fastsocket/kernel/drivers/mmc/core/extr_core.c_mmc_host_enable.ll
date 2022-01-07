; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_host_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_host_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { {}* }

@MMC_CAP_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: enable error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_host_enable(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MMC_CAP_DISABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %67

18:                                               ; preds = %12
  %19 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %67

25:                                               ; preds = %18
  %26 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %26, i32 0, i32 4
  %28 = call i32 @cancel_delayed_work_sync(i32* %27)
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %67

34:                                               ; preds = %25
  %35 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.mmc_host*)**
  %40 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %39, align 8
  %41 = icmp ne i32 (%struct.mmc_host*)* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.mmc_host*)**
  %50 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %49, align 8
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = call i32 %50(%struct.mmc_host* %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %59 = call i32 @mmc_hostname(%struct.mmc_host* %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %57, %33, %24, %17, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
