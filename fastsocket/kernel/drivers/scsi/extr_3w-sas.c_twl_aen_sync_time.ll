; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_aen_sync_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_aen_sync_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i32**, i64*, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i32, i8*, i8*, i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.timeval = type { i32 }

@TW_OP_SET_PARAM = common dso_local global i32 0, align 4
@TW_SECTOR_SIZE = common dso_local global i32 0, align 4
@TW_COMMAND_SIZE = common dso_local global i32 0, align 4
@TW_TIMEKEEP_TABLE = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32)* @twl_aen_sync_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl_aen_sync_time(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %13, i64 %15
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %7, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = call i32 @memset(%struct.TYPE_20__* %18, i32 0, i32 72)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %8, align 8
  %23 = load i32, i32* @TW_OP_SET_PARAM, align 4
  %24 = call i32 @TW_OPSGL_IN(i32 2, i32 %23)
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @TW_CPU_TO_SGL(i32 %36)
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  store i8* %37, i8** %44, align 8
  %45 = load i32, i32* @TW_SECTOR_SIZE, align 4
  %46 = call i8* @TW_CPU_TO_SGL(i32 %45)
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  store i8* %46, i8** %53, align 8
  %54 = load i32, i32* @TW_COMMAND_SIZE, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = call i8* @cpu_to_le16(i32 1)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %9, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = load i32, i32* @TW_SECTOR_SIZE, align 4
  %71 = call i32 @memset(%struct.TYPE_20__* %69, i32 0, i32 %70)
  %72 = load i32, i32* @TW_TIMEKEEP_TABLE, align 4
  %73 = or i32 %72, 32768
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = call i8* @cpu_to_le16(i32 3)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = call i8* @cpu_to_le16(i32 4)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = call i32 @do_gettimeofday(%struct.timeval* %6)
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sys_tz, i32 0, i32 0), align 4
  %87 = mul nsw i32 %86, 60
  %88 = sub nsw i32 %85, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 259200
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = srem i32 %91, 604800
  %93 = call i32 @cpu_to_le32(i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i32 %96, i32* %5, i32 4)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  store i32* null, i32** %103, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @twl_post_command_packet(%struct.TYPE_21__* %104, i32 %105)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @TW_OPSGL_IN(i32, i32) #1

declare dso_local i8* @TW_CPU_TO_SGL(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @twl_post_command_packet(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
