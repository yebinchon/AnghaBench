; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_findImVolumes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_findImVolumes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i64, i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i64 }

@MPI_CONFIG_PAGETYPE_IOC = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_findImVolumes(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %135

17:                                               ; preds = %1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = call i32 @kfree(%struct.TYPE_21__* %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = call i32 @mpt_inactive_raid_list_free(%struct.TYPE_20__* %26)
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  store i32 2, i32* %30, align 4
  %31 = load i32, i32* @MPI_CONFIG_PAGETYPE_IOC, align 4
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = call i64 @mpt_config(%struct.TYPE_20__* %41, %struct.TYPE_23__* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %17
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %135

47:                                               ; preds = %17
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %135

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %56, 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.TYPE_21__* @pci_alloc_consistent(i32 %60, i32 %61, i32* %6)
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %4, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = icmp ne %struct.TYPE_21__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %135

68:                                               ; preds = %54
  %69 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = call i64 @mpt_config(%struct.TYPE_20__* %73, %struct.TYPE_23__* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %126

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32* @kmalloc(i32 %78, i32 %79)
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %126

84:                                               ; preds = %77
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = bitcast %struct.TYPE_21__* %86 to i32*
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @memcpy(i32* %85, i32* %87, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = bitcast i32* %90 to %struct.TYPE_21__*
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %96 = call i32 @mpt_read_ioc_pg_3(%struct.TYPE_20__* %95)
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %122, %84
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @mpt_inactive_raid_volumes(%struct.TYPE_20__* %104, i32 %112, i32 %120)
  br label %122

122:                                              ; preds = %103
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %97

125:                                              ; preds = %97
  br label %126

126:                                              ; preds = %125, %83, %76
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @pci_free_consistent(i32 %129, i32 %130, %struct.TYPE_21__* %131, i32 %132)
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %126, %65, %51, %44, %16
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @kfree(%struct.TYPE_21__*) #1

declare dso_local i32 @mpt_inactive_raid_list_free(%struct.TYPE_20__*) #1

declare dso_local i64 @mpt_config(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mpt_read_ioc_pg_3(%struct.TYPE_20__*) #1

declare dso_local i32 @mpt_inactive_raid_volumes(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
