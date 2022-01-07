; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MPT3_CMD_NOT_USED = common dso_local global i32 0, align 4
@MPT3_CMD_COMPLETE = common dso_local global i32 0, align 4
@MPT3_CMD_REPLY_VALID = common dso_local global i32 0, align 4
@MPT3_CMD_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, i64, i32, i32)* @_scsih_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_done(%struct.MPT3SAS_ADAPTER* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call %struct.TYPE_6__* @mpt3sas_base_get_reply_virt_addr(%struct.MPT3SAS_ADAPTER* %11, i32 %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MPT3_CMD_NOT_USED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %67

29:                                               ; preds = %21
  %30 = load i32, i32* @MPT3_CMD_COMPLETE, align 4
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 4
  %48 = call i32 @memcpy(i32 %42, %struct.TYPE_6__* %43, i32 %47)
  %49 = load i32, i32* @MPT3_CMD_REPLY_VALID, align 4
  %50 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %51 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %38, %29
  %56 = load i32, i32* @MPT3_CMD_PENDING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %59 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %64 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i32 @complete(i32* %65)
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %55, %28, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_6__* @mpt3sas_base_get_reply_virt_addr(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
