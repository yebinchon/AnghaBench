; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_mad_iu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_mad_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { i32 }
%union.viosrp_iu = type { %struct.TYPE_18__, [16 x i8] }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.viosrp_adapter_info = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.viosrp_host_config = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.viosrp_host_config, %struct.viosrp_adapter_info, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unsupported EMPTY MAD IU\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported ERROR LOG MAD IU\00", align 1
@VIOSRP_MAD_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Unknown type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iu_entry*)* @process_mad_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_mad_iu(%struct.iu_entry* %0) #0 {
  %2 = alloca %struct.iu_entry*, align 8
  %3 = alloca %union.viosrp_iu*, align 8
  %4 = alloca %struct.viosrp_adapter_info*, align 8
  %5 = alloca %struct.viosrp_host_config*, align 8
  store %struct.iu_entry* %0, %struct.iu_entry** %2, align 8
  %6 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %7 = call %union.viosrp_iu* @vio_iu(%struct.iu_entry* %6)
  store %union.viosrp_iu* %7, %union.viosrp_iu** %3, align 8
  %8 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %9 = bitcast %union.viosrp_iu* %8 to %struct.TYPE_15__*
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %55 [
    i32 130, label %14
    i32 129, label %16
    i32 131, label %26
    i32 128, label %45
  ]

14:                                               ; preds = %1
  %15 = call i32 @eprintk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %62

16:                                               ; preds = %1
  %17 = call i32 @eprintk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %19 = bitcast %union.viosrp_iu* %18 to %struct.TYPE_15__*
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %24 = load i32, i32* @VIOSRP_MAD_FORMAT, align 4
  %25 = call i32 @send_iu(%struct.iu_entry* %23, i32 4, i32 %24)
  br label %62

26:                                               ; preds = %1
  %27 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %28 = bitcast %union.viosrp_iu* %27 to %struct.TYPE_15__*
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store %struct.viosrp_adapter_info* %29, %struct.viosrp_adapter_info** %4, align 8
  %30 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %31 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %4, align 8
  %32 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %4, align 8
  %35 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @send_adapter_info(%struct.iu_entry* %30, i32 %33, i32 %37)
  %39 = load %struct.viosrp_adapter_info*, %struct.viosrp_adapter_info** %4, align 8
  %40 = getelementptr inbounds %struct.viosrp_adapter_info, %struct.viosrp_adapter_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %43 = load i32, i32* @VIOSRP_MAD_FORMAT, align 4
  %44 = call i32 @send_iu(%struct.iu_entry* %42, i32 12, i32 %43)
  br label %62

45:                                               ; preds = %1
  %46 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %47 = bitcast %union.viosrp_iu* %46 to %struct.TYPE_15__*
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store %struct.viosrp_host_config* %48, %struct.viosrp_host_config** %5, align 8
  %49 = load %struct.viosrp_host_config*, %struct.viosrp_host_config** %5, align 8
  %50 = getelementptr inbounds %struct.viosrp_host_config, %struct.viosrp_host_config* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %53 = load i32, i32* @VIOSRP_MAD_FORMAT, align 4
  %54 = call i32 @send_iu(%struct.iu_entry* %52, i32 4, i32 %53)
  br label %62

55:                                               ; preds = %1
  %56 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %57 = bitcast %union.viosrp_iu* %56 to %struct.TYPE_18__*
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @eprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %55, %45, %26, %16, %14
  ret i32 1
}

declare dso_local %union.viosrp_iu* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @eprintk(i8*, i8*) #1

declare dso_local i32 @send_iu(%struct.iu_entry*, i32, i32) #1

declare dso_local i32 @send_adapter_info(%struct.iu_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
