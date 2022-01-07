; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_unlock_expected_tids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_unlock_expected_tids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.ipath_portdata = type { i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, i32*, i32, %struct.page** }
%struct.page = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Port %u unlocking any locked expTID pages\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ipath_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Port %u locked %u expTID entries\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%llu pages locked, %llu unlocked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_portdata*)* @unlock_expected_tids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_expected_tids(%struct.ipath_portdata* %0) #0 {
  %2 = alloca %struct.ipath_portdata*, align 8
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %2, align 8
  %9 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %10 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %9, i32 0, i32 1
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  store %struct.ipath_devdata* %11, %struct.ipath_devdata** %3, align 8
  %12 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %13 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @VERBOSE, align 4
  %25 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %26 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = call i32 (i32, i8*, i64, ...) @ipath_cdbg(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %71, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %37 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %36, i32 0, i32 3
  %38 = load %struct.page**, %struct.page*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.page*, %struct.page** %38, i64 %40
  %42 = load %struct.page*, %struct.page** %41, align 8
  store %struct.page* %42, %struct.page** %8, align 8
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %71

46:                                               ; preds = %35
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %48 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %47, i32 0, i32 3
  %49 = load %struct.page**, %struct.page*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.page*, %struct.page** %49, i64 %51
  store %struct.page* null, %struct.page** %52, align 8
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %57 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %65 = call i32 @pci_unmap_page(i32 %55, i32 %62, i32 %63, i32 %64)
  %66 = call i32 @ipath_release_user_pages_on_close(%struct.page** %8, i32 1)
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  br label %71

71:                                               ; preds = %46, %45
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %31

74:                                               ; preds = %31
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @VERBOSE, align 4
  %79 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %80 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i8*, i64, ...) @ipath_cdbg(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 1), align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @VERBOSE, align 4
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 1), align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  %95 = call i32 (i32, i8*, i64, ...) @ipath_cdbg(i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %94)
  br label %96

96:                                               ; preds = %91, %88
  ret void
}

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, ...) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @ipath_release_user_pages_on_close(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
