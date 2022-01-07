; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_linit.c_aac_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_linit.c_aac_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i64 }
%struct.aac_dev = type { %struct.fib* }
%struct.fib = type { %struct.scsi_cmnd*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@AAC_NUM_MGT_FIB = common dso_local global i64 0, align 8
@AAC_OWNER_FIRMWARE = common dso_local global i64 0, align 8
@AAC_OWNER_LOWLEVEL = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @aac_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.aac_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fib*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %6, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.aac_dev*
  store %struct.aac_dev* %19, %struct.aac_dev** %7, align 8
  store i64 0, i64* %8, align 8
  %20 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %20, void (%struct.scsi_cmnd*)** %22, align 8
  br label %23

23:                                               ; preds = %62, %2
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AAC_NUM_MGT_FIB, align 8
  %29 = add i64 %27, %28
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %23
  %32 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %33 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %32, i32 0, i32 0
  %34 = load %struct.fib*, %struct.fib** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.fib, %struct.fib* %34, i64 %35
  store %struct.fib* %36, %struct.fib** %9, align 8
  %37 = load %struct.fib*, %struct.fib** %9, align 8
  %38 = getelementptr inbounds %struct.fib, %struct.fib* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %31
  %45 = load %struct.fib*, %struct.fib** %9, align 8
  %46 = getelementptr inbounds %struct.fib, %struct.fib* %45, i32 0, i32 0
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %46, align 8
  store %struct.scsi_cmnd* %47, %struct.scsi_cmnd** %10, align 8
  %48 = icmp ne %struct.scsi_cmnd* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = icmp eq %struct.scsi_cmnd* %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AAC_OWNER_FIRMWARE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %78

61:                                               ; preds = %53, %49, %44, %31
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %23

65:                                               ; preds = %23
  %66 = load i64, i64* @AAC_OWNER_LOWLEVEL, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = call i64 @aac_scsi_cmd(%struct.scsi_cmnd* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @FAILED, align 4
  br label %76

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %60
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @aac_scsi_cmd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
