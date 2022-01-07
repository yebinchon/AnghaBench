; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_xfer_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_xfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i64, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OMAP_MMC_REG_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, i32)* @mmc_omap_xfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_xfer_data(%struct.mmc_omap_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %25 = call i32 @mmc_omap_sg_to_buf(%struct.mmc_omap_host* %24)
  br label %26

26:                                               ; preds = %10, %2
  store i32 64, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %36
  %57 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %58 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OMAP_MMC_REG_DATA, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %63 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @__raw_writesw(i64 %61, i32 %64, i32 %65)
  br label %78

67:                                               ; preds = %36
  %68 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %69 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OMAP_MMC_REG_DATA, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %74 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @__raw_readsw(i64 %72, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %56
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_omap_sg_to_buf(%struct.mmc_omap_host*) #1

declare dso_local i32 @__raw_writesw(i64, i32, i32) #1

declare dso_local i32 @__raw_readsw(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
