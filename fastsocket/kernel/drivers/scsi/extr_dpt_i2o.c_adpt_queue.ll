; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i64*, i64*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.adpt_device*, i64, i64, i64, %struct.TYPE_6__* }
%struct.adpt_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_8__ = type { i32 }

@REQUEST_SENSE = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@DPTI_STATE_RESET = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DPTI_DEV_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @adpt_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adpt_queue(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.adpt_device*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store %struct.adpt_device* null, %struct.adpt_device** %7, align 8
  %8 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %8, void (%struct.scsi_cmnd*)** %10, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REQUEST_SENSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @DID_OK, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %31, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %32(%struct.scsi_cmnd* %33)
  store i32 0, i32* %3, align 4
  br label %122

34:                                               ; preds = %18, %2
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %122

49:                                               ; preds = %34
  %50 = call i32 (...) @rmb()
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DPTI_STATE_RESET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %58, i32* %3, align 4
  br label %122

59:                                               ; preds = %49
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.adpt_device*, %struct.adpt_device** %63, align 8
  store %struct.adpt_device* %64, %struct.adpt_device** %7, align 8
  %65 = icmp eq %struct.adpt_device* %64, null
  br i1 %65, label %66, label %103

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call %struct.adpt_device* @adpt_find_device(%struct.TYPE_8__* %67, i32 %73, i32 %79, i32 %85)
  store %struct.adpt_device* %86, %struct.adpt_device** %7, align 8
  %87 = icmp eq %struct.adpt_device* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %66
  %89 = load i32, i32* @DID_NO_CONNECT, align 4
  %90 = shl i32 %89, 16
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %94, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %95(%struct.scsi_cmnd* %96)
  store i32 0, i32* %3, align 4
  br label %122

97:                                               ; preds = %66
  %98 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store %struct.adpt_device* %98, %struct.adpt_device** %102, align 8
  br label %103

103:                                              ; preds = %97, %59
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %108 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %107, i32 0, i32 1
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %108, align 8
  %109 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %110 = getelementptr inbounds %struct.adpt_device, %struct.adpt_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DPTI_DEV_RESET, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @FAILED, align 4
  store i32 %116, i32* %3, align 4
  br label %122

117:                                              ; preds = %103
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %120 = load %struct.adpt_device*, %struct.adpt_device** %7, align 8
  %121 = call i32 @adpt_scsi_to_i2o(%struct.TYPE_8__* %118, %struct.scsi_cmnd* %119, %struct.adpt_device* %120)
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %115, %88, %57, %47, %25
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.adpt_device* @adpt_find_device(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @adpt_scsi_to_i2o(%struct.TYPE_8__*, %struct.scsi_cmnd*, %struct.adpt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
