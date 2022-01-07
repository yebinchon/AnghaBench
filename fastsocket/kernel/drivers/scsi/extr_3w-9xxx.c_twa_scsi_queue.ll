; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_scsi_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_scsi_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32*, %struct.scsi_cmnd**, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }

@TW_IN_RESET = common dso_local global i32 0, align 4
@TW_FW_SRL_LUNS_SUPPORTED = common dso_local global i64 0, align 8
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@TW_PHASE_INITIAL = common dso_local global i32 0, align 4
@TW_S_COMPLETED = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @twa_scsi_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_scsi_queue(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 3
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %7, align 8
  %16 = load i32, i32* @TW_IN_RESET, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 128, i32* %6, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TW_FW_SRL_LUNS_SUPPORTED, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @DID_BAD_TARGET, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %41(%struct.scsi_cmnd* %42)
  store i32 0, i32* %6, align 4
  br label %86

43:                                               ; preds = %29, %22
  %44 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %44, void (%struct.scsi_cmnd*)** %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = call i32 @twa_get_request_id(%struct.TYPE_13__* %47, i32* %5)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %52, i64 %54
  store %struct.scsi_cmnd* %49, %struct.scsi_cmnd** %55, align 8
  %56 = load i32, i32* @TW_PHASE_INITIAL, align 4
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @twa_scsiop_execute_scsi(%struct.TYPE_13__* %60, i32 %61, i32* null, i32 0, i32* null)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %85 [
    i32 128, label %64
    i32 1, label %68
  ]

64:                                               ; preds = %43
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @twa_free_request_id(%struct.TYPE_13__* %65, i32 %66)
  br label %85

68:                                               ; preds = %43
  %69 = load i32, i32* @TW_S_COMPLETED, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @twa_free_request_id(%struct.TYPE_13__* %76, i32 %77)
  %79 = load i32, i32* @DID_ERROR, align 4
  %80 = shl i32 %79, 16
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %83(%struct.scsi_cmnd* %84)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %68, %43, %64
  br label %86

86:                                               ; preds = %85, %36, %21
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @twa_get_request_id(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @twa_scsiop_execute_scsi(%struct.TYPE_13__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @twa_free_request_id(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
