; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_write_block_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_write_block_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64*, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"PIO writing\0A\00", align 1
@SDHCI_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_write_block_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_write_block_pio(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %9 = call i32 @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  br label %17

17:                                               ; preds = %76, %1
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %17
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %22 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %21, i32 0, i32 0
  %23 = call i32 @sg_miter_next(%struct.TYPE_5__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %29 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @min(i32 %31, i64 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  store i64* %44, i64** %8, align 8
  br label %45

45:                                               ; preds = %75, %27
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = mul i64 %51, 8
  %53 = shl i64 %50, %52
  %54 = load i64, i64* %7, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %70, label %64

64:                                               ; preds = %48
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i64, i64* %4, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67, %48
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* @SDHCI_BUFFER, align 4
  %74 = call i32 @sdhci_writel(%struct.sdhci_host* %71, i64 %72, i32 %73)
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %75

75:                                               ; preds = %70, %67, %64
  br label %45

76:                                               ; preds = %45
  br label %17

77:                                               ; preds = %17
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %79 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %78, i32 0, i32 0
  %80 = call i32 @sg_miter_stop(%struct.TYPE_5__* %79)
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @local_irq_restore(i64 %81)
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sg_miter_next(%struct.TYPE_5__*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i64, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
