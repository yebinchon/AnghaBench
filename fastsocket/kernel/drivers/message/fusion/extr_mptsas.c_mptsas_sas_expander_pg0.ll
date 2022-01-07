; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_expander_pg0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_sas_expander_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.mptsas_portinfo = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__, i8*, %struct.mptsas_portinfo* }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@MPI_SASEXPANDER0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_EXPANDER = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_CONFIG_INVALID_PAGE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.mptsas_portinfo*, i64, i64)* @mptsas_sas_expander_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_expander_pg0(%struct.TYPE_17__* %0, %struct.mptsas_portinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.mptsas_portinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.mptsas_portinfo* %1, %struct.mptsas_portinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %17 = call i32 @memset(%struct.mptsas_portinfo* %16, i32 0, i32 16)
  %18 = load i32, i32* @MPI_SASEXPANDER0_PAGEVERSION, align 4
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_EXPANDER, align 4
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %41 = call i32 @memset(%struct.mptsas_portinfo* %40, i32 0, i32 16)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = call i32 @mpt_config(%struct.TYPE_17__* %42, %struct.TYPE_19__* %10)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %178

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %178

54:                                               ; preds = %47
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 4
  %61 = call %struct.TYPE_16__* @pci_alloc_consistent(i32 %57, i32 %60, i32* %12)
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %11, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = icmp ne %struct.TYPE_16__* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  br label %178

67:                                               ; preds = %54
  %68 = load i32, i32* %12, align 4
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = call i32 @mpt_config(%struct.TYPE_17__* %72, %struct.TYPE_19__* %10)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @MPI_IOCSTATUS_CONFIG_INVALID_PAGE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  br label %168

80:                                               ; preds = %67
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %168

84:                                               ; preds = %80
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  br label %94

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %92, %89 ], [ 1, %93 ]
  %96 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %97 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %99 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.TYPE_13__* @kcalloc(i32 %100, i32 4, i32 %101)
  %103 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %104 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %103, i32 0, i32 1
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %104, align 8
  %105 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %106 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = icmp ne %struct.TYPE_13__* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %94
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %14, align 4
  br label %168

112:                                              ; preds = %94
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %115 = call i32 @memcpy(i32* %15, i32* %114, i32 4)
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %164, %112
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %119 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %167

122:                                              ; preds = %116
  %123 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %124 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %125 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  store %struct.mptsas_portinfo* %123, %struct.mptsas_portinfo** %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le16_to_cpu(i32 %133)
  %135 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %136 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %135, i32 0, i32 1
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i8* %134, i8** %141, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @le64_to_cpu(i32 %142)
  %144 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %145 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %144, i32 0, i32 1
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  store i32 %143, i32* %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le16_to_cpu(i32 %154)
  %156 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %6, align 8
  %157 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %156, i32 0, i32 1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i8* %155, i8** %163, align 8
  br label %164

164:                                              ; preds = %122
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %116

167:                                              ; preds = %116
  br label %168

168:                                              ; preds = %167, %109, %83, %77
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %173, 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @pci_free_consistent(i32 %171, i32 %174, %struct.TYPE_16__* %175, i32 %176)
  br label %178

178:                                              ; preds = %168, %64, %51, %46
  %179 = load i32, i32* %14, align 4
  ret i32 %179
}

declare dso_local i32 @memset(%struct.mptsas_portinfo*, i32, i32) #1

declare dso_local i32 @mpt_config(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_16__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
