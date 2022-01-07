; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptscsih.c_mptscsih_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptscsih.c_mptscsih_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.scsi_target = type { %struct.TYPE_7__* }

@SCSI_QDEPTH_DEFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SPI = common dso_local global i64 0, align 8
@MPT_TARGET_FLAGS_Q_YES = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@MPT_ULTRA160 = common dso_local global i64 0, align 8
@MPT_SCSI_CMD_PER_DEV_HIGH = common dso_local global i32 0, align 4
@MPT_SCSI_CMD_PER_DEV_LOW = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptscsih_change_queue_depth(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.scsi_target*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_8__* @shost_priv(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %13, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %22 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %21)
  store %struct.scsi_target* %22, %struct.scsi_target** %10, align 8
  %23 = load %struct.scsi_target*, %struct.scsi_target** %10, align 8
  %24 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SCSI_QDEPTH_DEFAULT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %96

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPI, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MPT_TARGET_FLAGS_Q_YES, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %63

46:                                               ; preds = %38
  %47 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TYPE_DISK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MPT_ULTRA160, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @MPT_SCSI_CMD_PER_DEV_HIGH, align 4
  store i32 %59, i32* %11, align 4
  br label %62

60:                                               ; preds = %52, %46
  %61 = load i32, i32* @MPT_SCSI_CMD_PER_DEV_LOW, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %45
  br label %70

64:                                               ; preds = %32
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %64, %63
  %71 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %89, i32 %90, i32 %91)
  %93 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %94 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %88, %29
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_8__* @shost_priv(i32) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
