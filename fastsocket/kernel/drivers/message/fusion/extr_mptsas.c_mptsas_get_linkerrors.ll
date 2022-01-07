; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_get_linkerrors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_get_linkerrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i8*, i8*, i8*, i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MPI_SASPHY1_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_PHY = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_phy*)* @mptsas_get_linkerrors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_get_linkerrors(%struct.sas_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_phy*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sas_phy* %0, %struct.sas_phy** %3, align 8
  %10 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %11 = call %struct.TYPE_17__* @phy_to_ioc(%struct.sas_phy* %10)
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %4, align 8
  %12 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %13 = call i32 @scsi_is_sas_phy_local(%struct.sas_phy* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %117

18:                                               ; preds = %1
  %19 = load i32, i32* @MPI_SASPHY1_PAGEVERSION, align 4
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 6
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_PHY, align 4
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %33 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = call i32 @mpt_config(%struct.TYPE_17__* %42, %struct.TYPE_19__* %6)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %18
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %117

48:                                               ; preds = %18
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %117

55:                                               ; preds = %48
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 4
  %62 = call %struct.TYPE_16__* @pci_alloc_consistent(i32 %58, i32 %61, i32* %8)
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %7, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = icmp ne %struct.TYPE_16__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %117

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = call i32 @mpt_config(%struct.TYPE_17__* %73, %struct.TYPE_19__* %6)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %106

78:                                               ; preds = %68
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = call i32 @mptsas_print_phy_pg1(%struct.TYPE_17__* %79, %struct.TYPE_16__* %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le32_to_cpu(i32 %84)
  %86 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %87 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %93 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le32_to_cpu(i32 %96)
  %98 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %99 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le32_to_cpu(i32 %102)
  %104 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %105 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %78, %77
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %111, 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @pci_free_consistent(i32 %109, i32 %112, %struct.TYPE_16__* %113, i32 %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %106, %65, %52, %46, %15
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_17__* @phy_to_ioc(%struct.sas_phy*) #1

declare dso_local i32 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local i32 @mpt_config(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_16__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mptsas_print_phy_pg1(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
