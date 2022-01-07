; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_tm_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_tm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MPT2_CMD_NOT_USED = common dso_local global i32 0, align 4
@MPT2_CMD_COMPLETE = common dso_local global i32 0, align 4
@MPT2_CMD_REPLY_VALID = common dso_local global i32 0, align 4
@MPT2_CMD_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT2SAS_ADAPTER*, i64, i32, i32)* @_scsih_tm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_tm_done(%struct.MPT2SAS_ADAPTER* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %12 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MPT2_CMD_NOT_USED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %69

18:                                               ; preds = %4
  %19 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %20 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %69

26:                                               ; preds = %18
  %27 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %28 = call i32 @mpt2sas_base_flush_reply_queues(%struct.MPT2SAS_ADAPTER* %27)
  %29 = load i32, i32* @MPT2_CMD_COMPLETE, align 4
  %30 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %31 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.TYPE_6__* @mpt2sas_base_get_reply_virt_addr(%struct.MPT2SAS_ADAPTER* %35, i32 %36)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %26
  %41 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %42 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 4
  %50 = call i32 @memcpy(i32 %44, %struct.TYPE_6__* %45, i32 %49)
  %51 = load i32, i32* @MPT2_CMD_REPLY_VALID, align 4
  %52 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %53 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %40, %26
  %58 = load i32, i32* @MPT2_CMD_PENDING, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %61 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %66 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = call i32 @complete(i32* %67)
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %57, %25, %17
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @mpt2sas_base_flush_reply_queues(%struct.MPT2SAS_ADAPTER*) #1

declare dso_local %struct.TYPE_6__* @mpt2sas_base_get_reply_virt_addr(%struct.MPT2SAS_ADAPTER*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
