; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_is_discovery_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_is_discovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@MPI_SASIOUNITPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_SAS_IOUNIT0_PORT_FLAGS_DISCOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @mpt_is_discovery_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_is_discovery_complete(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @memset(%struct.TYPE_17__* %3, i32 0, i32 40)
  %9 = call i32 @memset(%struct.TYPE_17__* %4, i32 0, i32 40)
  %10 = load i32, i32* @MPI_SASIOUNITPAGE0_PAGEVERSION, align 4
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT, align 4
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %17, align 8
  %18 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = call i64 @mpt_config(%struct.TYPE_16__* %20, %struct.TYPE_17__* %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %71

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %71

29:                                               ; preds = %24
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 4
  %36 = call %struct.TYPE_15__* @pci_alloc_consistent(i32 %32, i32 %35, i32* %6)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %5, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %71

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = call i64 @mpt_config(%struct.TYPE_16__* %45, %struct.TYPE_17__* %4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %61

49:                                               ; preds = %40
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MPI_SAS_IOUNIT0_PORT_FLAGS_DISCOVERY_IN_PROGRESS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %48
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @pci_free_consistent(i32 %64, i32 %67, %struct.TYPE_15__* %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %39, %28, %23
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @mpt_config(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
