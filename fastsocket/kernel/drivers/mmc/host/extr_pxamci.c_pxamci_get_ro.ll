; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_pxamci.c_pxamci_get_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_pxamci.c_pxamci_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.pxamci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @pxamci_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxamci_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.pxamci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = call %struct.pxamci_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.pxamci_host* %6, %struct.pxamci_host** %4, align 8
  %7 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %8 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %13 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @gpio_is_valid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %11
  %20 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %21 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %28 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gpio_get_value(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %71

36:                                               ; preds = %19
  %37 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %38 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @gpio_get_value(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %71

43:                                               ; preds = %11, %1
  %44 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %45 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %50 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = icmp ne i32 (i32)* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %57 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (i32)*, i32 (i32)** %59, align 8
  %61 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %62 = call i32 @mmc_dev(%struct.mmc_host* %61)
  %63 = call i32 %60(i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %48, %43
  %69 = load i32, i32* @ENOSYS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %55, %36, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.pxamci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
