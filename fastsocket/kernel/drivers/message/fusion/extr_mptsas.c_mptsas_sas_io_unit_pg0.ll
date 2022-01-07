; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_io_unit_pg0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_io_unit_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i8*, i8* }
%struct.mptsas_portinfo = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, %struct.mptsas_portinfo*, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@MPI_SASIOUNITPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.mptsas_portinfo*)* @mptsas_sas_io_unit_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_io_unit_pg0(%struct.TYPE_18__* %0, %struct.mptsas_portinfo* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.mptsas_portinfo*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.mptsas_portinfo* %1, %struct.mptsas_portinfo** %4, align 8
  %11 = load i32, i32* @MPI_SASIOUNITPAGE0_PAGEVERSION, align 4
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 6
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT, align 4
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = call i32 @mpt_config(%struct.TYPE_18__* %30, %struct.TYPE_20__* %6)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %189

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %189

42:                                               ; preds = %35
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 4
  %49 = call %struct.TYPE_17__* @pci_alloc_consistent(i32 %45, i32 %48, i32* %8)
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %7, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = icmp ne %struct.TYPE_17__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %189

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = call i32 @mpt_config(%struct.TYPE_18__* %60, %struct.TYPE_20__* %6)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %179

65:                                               ; preds = %55
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %70 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %72 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.TYPE_15__* @kcalloc(i32 %73, i32 4, i32 %74)
  %76 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %77 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %76, i32 0, i32 1
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %77, align 8
  %78 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %79 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = icmp ne %struct.TYPE_15__* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %65
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %179

85:                                               ; preds = %65
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @le16_to_cpu(i32 %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @le16_to_cpu(i32 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %175, %85
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %101 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %178

104:                                              ; preds = %98
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %110
  %112 = call i32 @mptsas_print_phy_data(%struct.TYPE_18__* %105, %struct.TYPE_14__* %111)
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %115 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %130 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %129, i32 0, i32 1
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  store i32 %128, i32* %135, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %145 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %144, i32 0, i32 1
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  store i32 %143, i32* %150, align 8
  %151 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %152 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %153 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %152, i32 0, i32 1
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  store %struct.mptsas_portinfo* %151, %struct.mptsas_portinfo** %158, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le16_to_cpu(i32 %166)
  %168 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %169 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %168, i32 0, i32 1
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i8* %167, i8** %174, align 8
  br label %175

175:                                              ; preds = %104
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %98

178:                                              ; preds = %98
  br label %179

179:                                              ; preds = %178, %82, %64
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %184, 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @pci_free_consistent(i32 %182, i32 %185, %struct.TYPE_17__* %186, i32 %187)
  br label %189

189:                                              ; preds = %179, %52, %39, %34
  %190 = load i32, i32* %9, align 4
  ret i32 %190
}

declare dso_local i32 @mpt_config(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_17__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @mptsas_print_phy_data(%struct.TYPE_18__*, %struct.TYPE_14__*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
