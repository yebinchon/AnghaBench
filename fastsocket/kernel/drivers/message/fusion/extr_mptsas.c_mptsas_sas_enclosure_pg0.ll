; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_enclosure_pg0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_enclosure_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.mptsas_enclosure = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MPI_SASENCLOSURE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_ENCLOSURE = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.mptsas_enclosure*, i64, i64)* @mptsas_sas_enclosure_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_enclosure_pg0(%struct.TYPE_14__* %0, %struct.mptsas_enclosure* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.mptsas_enclosure*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.mptsas_enclosure* %1, %struct.mptsas_enclosure** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = call i32 @memset(%struct.TYPE_15__* %9, i32 0, i32 32)
  %16 = load i32, i32* @MPI_SASENCLOSURE0_PAGEVERSION, align 4
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_ENCLOSURE, align 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 4
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = call i32 @mpt_config(%struct.TYPE_14__* %35, %struct.TYPE_16__* %10)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  br label %132

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %132

47:                                               ; preds = %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 4
  %54 = call %struct.TYPE_13__* @pci_alloc_consistent(i32 %50, i32 %53, i32* %12)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %11, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %132

60:                                               ; preds = %47
  %61 = load i32, i32* %12, align 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = call i32 @mpt_config(%struct.TYPE_14__* %65, %struct.TYPE_16__* %10)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %122

70:                                               ; preds = %60
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 8
  %73 = call i32 @memcpy(i32* %14, i32* %72, i32 4)
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @le64_to_cpu(i32 %74)
  %76 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %77 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le16_to_cpu(i32 %80)
  %82 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %83 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le16_to_cpu(i32 %86)
  %88 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %89 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le16_to_cpu(i32 %92)
  %94 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %95 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le16_to_cpu(i32 %98)
  %100 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %101 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %106 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %111 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %116 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mptsas_enclosure*, %struct.mptsas_enclosure** %6, align 8
  %121 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %70, %69
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @pci_free_consistent(i32 %125, i32 %128, %struct.TYPE_13__* %129, i32 %130)
  br label %132

132:                                              ; preds = %122, %57, %44, %39
  %133 = load i32, i32* %13, align 4
  ret i32 %133
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mpt_config(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_13__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
