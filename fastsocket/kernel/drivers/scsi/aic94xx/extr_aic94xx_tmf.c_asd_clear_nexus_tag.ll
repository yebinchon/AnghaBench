; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sas_task = type { %struct.TYPE_11__*, %struct.TYPE_8__, %struct.asd_ascb* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.asd_ascb = type { i32 }

@CLEAR_NEXUS_PRE = common dso_local global i32 0, align 4
@NEXUS_TAG = common dso_local global i32 0, align 4
@scb = common dso_local global %struct.TYPE_14__* null, align 8
@CLEAR_NEXUS_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*)* @asd_clear_nexus_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_clear_nexus_tag(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca %struct.asd_ascb*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %6 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %7 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %13, align 8
  store %struct.asd_ha_struct* %14, %struct.asd_ha_struct** %4, align 8
  %15 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 2
  %17 = load %struct.asd_ascb*, %struct.asd_ascb** %16, align 8
  store %struct.asd_ascb* %17, %struct.asd_ascb** %5, align 8
  %18 = load i32, i32* @CLEAR_NEXUS_PRE, align 4
  %19 = load i32, i32* @NEXUS_TAG, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** @scb, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** @scb, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(i32 %27, i32 %31, i32 8)
  %33 = load %struct.asd_ascb*, %struct.asd_ascb** %5, align 8
  %34 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @scb, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %41 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %1
  %47 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %48 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @cpu_to_le16(i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** @scb, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %46, %1
  %58 = load i32, i32* @CLEAR_NEXUS_POST, align 4
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
