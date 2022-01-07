; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_queue_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_queue_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scsi_sense_data = type { i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: device overrun (status %x) on %d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scsi_cmnd*)* @ahd_linux_queue_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_queue_cmd_complete(%struct.ahd_softc* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sense_data*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load i32, i32* @DID_OK, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = call i32 @ahd_cmd_get_transaction_status(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %74 [
    i32 141, label %14
    i32 143, label %14
    i32 154, label %16
    i32 136, label %18
    i32 144, label %54
    i32 152, label %56
    i32 140, label %58
    i32 147, label %58
    i32 135, label %60
    i32 137, label %62
    i32 153, label %62
    i32 132, label %64
    i32 150, label %66
    i32 142, label %68
    i32 131, label %68
    i32 149, label %68
    i32 133, label %70
    i32 148, label %70
    i32 134, label %70
    i32 151, label %70
    i32 146, label %70
    i32 139, label %70
    i32 130, label %70
    i32 138, label %70
    i32 145, label %72
  ]

14:                                               ; preds = %2, %2
  %15 = load i32, i32* @DID_OK, align 4
  store i32 %15, i32* %6, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load i32, i32* @DID_ERROR, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %2, %16
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = call i32 @ahd_cmd_get_scsi_status(%struct.scsi_cmnd* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %52 [
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %18, %18
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 24
  %27 = load i32, i32* @DRIVER_SENSE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %51

30:                                               ; preds = %22
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.scsi_sense_data*
  store %struct.scsi_sense_data* %34, %struct.scsi_sense_data** %9, align 8
  %35 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %36 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 5
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %41 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 71
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %46 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 72
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %44, %30
  br label %51

51:                                               ; preds = %50, %29
  br label %53

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %52, %51
  br label %76

54:                                               ; preds = %2
  %55 = load i32, i32* @DID_ABORT, align 4
  store i32 %55, i32* %6, align 4
  br label %76

56:                                               ; preds = %2
  %57 = load i32, i32* @DID_BUS_BUSY, align 4
  store i32 %57, i32* %6, align 4
  br label %76

58:                                               ; preds = %2, %2
  %59 = load i32, i32* @DID_BAD_TARGET, align 4
  store i32 %59, i32* %6, align 4
  br label %76

60:                                               ; preds = %2
  %61 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %61, i32* %6, align 4
  br label %76

62:                                               ; preds = %2, %2
  %63 = load i32, i32* @DID_RESET, align 4
  store i32 %63, i32* %6, align 4
  br label %76

64:                                               ; preds = %2
  %65 = load i32, i32* @DID_PARITY, align 4
  store i32 %65, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %76

66:                                               ; preds = %2
  %67 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %67, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %76

68:                                               ; preds = %2, %2, %2
  %69 = load i32, i32* @DID_ERROR, align 4
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %76

70:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %71 = load i32, i32* @DID_ERROR, align 4
  store i32 %71, i32* %6, align 4
  br label %76

72:                                               ; preds = %2
  %73 = load i32, i32* @DID_REQUEUE, align 4
  store i32 %73, i32* %6, align 4
  br label %76

74:                                               ; preds = %2
  %75 = load i32, i32* @DID_ERROR, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %53, %14
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %81 = call i8* @ahd_name(%struct.ahd_softc* %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %81, i32 %82, i32 %87, i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %79, %76
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ahd_cmd_set_transaction_status(%struct.scsi_cmnd* %100, i32 %101)
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 1
  %105 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %104, align 8
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %107 = call i32 %105(%struct.scsi_cmnd* %106)
  ret void
}

declare dso_local i32 @ahd_cmd_get_transaction_status(%struct.scsi_cmnd*) #1

declare dso_local i32 @ahd_cmd_get_scsi_status(%struct.scsi_cmnd*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_cmd_set_transaction_status(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
