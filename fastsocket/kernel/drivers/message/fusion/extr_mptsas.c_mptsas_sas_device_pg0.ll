; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_device_pg0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_device_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.mptsas_devinfo = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MPI_SASDEVICE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.mptsas_devinfo*, i64, i64)* @mptsas_sas_device_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_device_pg0(%struct.TYPE_15__* %0, %struct.mptsas_devinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.mptsas_devinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.mptsas_devinfo* %1, %struct.mptsas_devinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @MPI_SASDEVICE0_PAGEVERSION, align 4
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE, align 4
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %38 = call i32 @memset(%struct.mptsas_devinfo* %37, i32 0, i32 72)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = call i32 @mpt_config(%struct.TYPE_15__* %39, %struct.TYPE_17__* %10)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %155

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %155

51:                                               ; preds = %44
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %56, 4
  %58 = call %struct.TYPE_14__* @pci_alloc_consistent(i32 %54, i32 %57, i32* %12)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %11, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = icmp ne %struct.TYPE_14__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  br label %155

64:                                               ; preds = %51
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = call i32 @mpt_config(%struct.TYPE_15__* %69, %struct.TYPE_17__* %10)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %145

74:                                               ; preds = %64
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %77 = call i32 @mptsas_print_device_pg0(%struct.TYPE_15__* %75, %struct.TYPE_14__* %76)
  %78 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %79 = call i32 @memset(%struct.mptsas_devinfo* %78, i32 0, i32 72)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %85 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @le16_to_cpu(i32 %88)
  %90 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %91 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %90, i32 0, i32 10
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @le16_to_cpu(i32 %94)
  %96 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %97 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %103 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %102, i32 0, i32 8
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %108 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %113 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %118 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %120 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %119, i32 0, i32 4
  store i32 -1, i32* %120, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %125 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = call i32 @memcpy(i32* %13, i32* %127, i32 4)
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @le64_to_cpu(i32 %129)
  %131 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %132 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %138 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @le16_to_cpu(i32 %141)
  %143 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %144 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %74, %73
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %150, 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @pci_free_consistent(i32 %148, i32 %151, %struct.TYPE_14__* %152, i32 %153)
  br label %155

155:                                              ; preds = %145, %61, %48, %43
  %156 = load i32, i32* %14, align 4
  ret i32 %156
}

declare dso_local i32 @memset(%struct.mptsas_devinfo*, i32, i32) #1

declare dso_local i32 @mpt_config(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_14__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mptsas_print_device_pg0(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
