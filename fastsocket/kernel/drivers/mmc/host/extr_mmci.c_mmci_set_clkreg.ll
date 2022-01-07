; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_set_clkreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_set_clkreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MCI_CLK_BYPASS = common dso_local global i32 0, align 4
@MCI_FCEN = common dso_local global i32 0, align 4
@MCI_CLK_ENABLE = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@MCI_WIDE_BUS = common dso_local global i32 0, align 4
@MMCICLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, i32)* @mmci_set_clkreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_set_clkreg(%struct.mmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i32, i32* @MCI_CLK_BYPASS, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %42

21:                                               ; preds = %8
  %22 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %23 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = mul i32 2, %25
  %27 = udiv i32 %24, %26
  %28 = sub i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 256
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 255, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 2, %37
  %39 = udiv i32 %35, %38
  %40 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %41 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %14
  %43 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @MCI_FCEN, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* @MCI_CLK_ENABLE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %2
  %56 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %57 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @MCI_WIDE_BUS, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %71 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MMCICLOCK, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
