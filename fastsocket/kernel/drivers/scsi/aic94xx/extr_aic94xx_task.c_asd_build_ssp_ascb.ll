; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_build_ssp_ascb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_build_ssp_ascb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.scb* }
%struct.scb = type { %struct.TYPE_14__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, i8*, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sas_task = type { i64, %struct.TYPE_13__, i32, %struct.domain_device* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i32 }
%struct.domain_device = type { i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@INITIATE_SSP_TASK = common dso_local global i32 0, align 4
@SSP_DATA = common dso_local global i32 0, align 4
@HASHED_SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@EFB_MASK = common dso_local global i32 0, align 4
@data_dir_flags = common dso_local global i32* null, align 8
@asd_task_tasklet_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ascb*, %struct.sas_task*, i32)* @asd_build_ssp_ascb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_build_ssp_ascb(%struct.asd_ascb* %0, %struct.sas_task* %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.scb*, align 8
  %9 = alloca i32, align 4
  store %struct.asd_ascb* %0, %struct.asd_ascb** %4, align 8
  store %struct.sas_task* %1, %struct.sas_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %11 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %10, i32 0, i32 3
  %12 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  store %struct.domain_device* %12, %struct.domain_device** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %14 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %13, i32 0, i32 1
  %15 = load %struct.scb*, %struct.scb** %14, align 8
  store %struct.scb* %15, %struct.scb** %8, align 8
  %16 = load i32, i32* @INITIATE_SSP_TASK, align 4
  %17 = load %struct.scb*, %struct.scb** %8, align 8
  %18 = getelementptr inbounds %struct.scb, %struct.scb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.scb*, %struct.scb** %8, align 8
  %21 = getelementptr inbounds %struct.scb, %struct.scb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 16, i32* %22, align 8
  %23 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %24 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.scb*, %struct.scb** %8, align 8
  %27 = getelementptr inbounds %struct.scb, %struct.scb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 8
  %31 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %32 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.scb*, %struct.scb** %8, align 8
  %36 = getelementptr inbounds %struct.scb, %struct.scb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 8
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @SSP_DATA, align 4
  %39 = load %struct.scb*, %struct.scb** %8, align 8
  %40 = getelementptr inbounds %struct.scb, %struct.scb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = load %struct.scb*, %struct.scb** %8, align 8
  %44 = getelementptr inbounds %struct.scb, %struct.scb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %49 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @HASHED_SAS_ADDR_SIZE, align 4
  %52 = call i32 @memcpy(i32 %47, i32 %50, i32 %51)
  %53 = load %struct.scb*, %struct.scb** %8, align 8
  %54 = getelementptr inbounds %struct.scb, %struct.scb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %59 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HASHED_SAS_ADDR_SIZE, align 4
  %66 = call i32 @memcpy(i32 %57, i32 %64, i32 %65)
  %67 = call i32 @cpu_to_be16(i32 65535)
  %68 = load %struct.scb*, %struct.scb** %8, align 8
  %69 = getelementptr inbounds %struct.scb, %struct.scb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.scb*, %struct.scb** %8, align 8
  %73 = getelementptr inbounds %struct.scb, %struct.scb* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %78 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @memcpy(i32 %76, i32 %80, i32 8)
  %82 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %83 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %3
  %88 = load i32, i32* @EFB_MASK, align 4
  %89 = load %struct.scb*, %struct.scb** %8, align 8
  %90 = getelementptr inbounds %struct.scb, %struct.scb* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %87, %3
  %96 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %97 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 3
  %101 = load %struct.scb*, %struct.scb** %8, align 8
  %102 = getelementptr inbounds %struct.scb, %struct.scb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 8
  %107 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %108 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 7
  %112 = load %struct.scb*, %struct.scb** %8, align 8
  %113 = getelementptr inbounds %struct.scb, %struct.scb* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 8
  %118 = load %struct.scb*, %struct.scb** %8, align 8
  %119 = getelementptr inbounds %struct.scb, %struct.scb* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %124 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @memcpy(i32 %122, i32 %126, i32 16)
  %128 = call i8* @cpu_to_le16(i32 65535)
  %129 = load %struct.scb*, %struct.scb** %8, align 8
  %130 = getelementptr inbounds %struct.scb, %struct.scb* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 5
  store i8* %128, i8** %131, align 8
  %132 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %133 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i8* @cpu_to_le16(i32 %135)
  %137 = load %struct.scb*, %struct.scb** %8, align 8
  %138 = getelementptr inbounds %struct.scb, %struct.scb* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 4
  store i8* %136, i8** %139, align 8
  %140 = load i32*, i32** @data_dir_flags, align 8
  %141 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %142 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.scb*, %struct.scb** %8, align 8
  %147 = getelementptr inbounds %struct.scb, %struct.scb* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  %149 = load %struct.scb*, %struct.scb** %8, align 8
  %150 = getelementptr inbounds %struct.scb, %struct.scb* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.scb*, %struct.scb** %8, align 8
  %154 = getelementptr inbounds %struct.scb, %struct.scb* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  %156 = load i32, i32* @asd_task_tasklet_complete, align 4
  %157 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %158 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %160 = load %struct.scb*, %struct.scb** %8, align 8
  %161 = getelementptr inbounds %struct.scb, %struct.scb* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @asd_map_scatterlist(%struct.sas_task* %159, i32 %163, i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  ret i32 %166
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @asd_map_scatterlist(%struct.sas_task*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
