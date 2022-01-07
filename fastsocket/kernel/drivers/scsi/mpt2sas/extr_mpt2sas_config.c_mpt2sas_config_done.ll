; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@MPT2_CMD_NOT_USED = common dso_local global i32 0, align 4
@MPT2_CMD_COMPLETE = common dso_local global i32 0, align 4
@MPT2_CMD_REPLY_VALID = common dso_local global i32 0, align 4
@MPT2_CMD_PENDING = common dso_local global i32 0, align 4
@USHORT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt2sas_config_done(%struct.MPT2SAS_ADAPTER* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %12 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MPT2_CMD_NOT_USED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %20 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %71

26:                                               ; preds = %18
  %27 = load i32, i32* @MPT2_CMD_COMPLETE, align 4
  %28 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %29 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.TYPE_7__* @mpt2sas_base_get_reply_virt_addr(%struct.MPT2SAS_ADAPTER* %33, i32 %34)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %26
  %39 = load i32, i32* @MPT2_CMD_REPLY_VALID, align 4
  %40 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %41 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %46 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 4
  %54 = call i32 @memcpy(i32 %48, %struct.TYPE_7__* %49, i32 %53)
  br label %55

55:                                               ; preds = %38, %26
  %56 = load i32, i32* @MPT2_CMD_PENDING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %59 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i64, i64* @USHORT_MAX, align 8
  %64 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %65 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %68 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = call i32 @complete(i32* %69)
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %55, %25, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_7__* @mpt2sas_base_get_reply_virt_addr(%struct.MPT2SAS_ADAPTER*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
