; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_20__*, %struct.TYPE_16__, i32, %struct.scsi_cmnd*, %struct.scsi_cmnd*, %struct.scsi_cmnd* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }

@CMD_ENABLESEL = common dso_local global i32 0, align 4
@CMD_DISABLESEL = common dso_local global i32 0, align 4
@LOG_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"moved command for %d to disconnected queue\00", align 1
@LOG_MESSAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"starting\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"select: data pointers [%p, %X]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @fas216_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_kick(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = call i32 @fas216_checkmagic(%struct.TYPE_19__* %5)
  br label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 6
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %11 = icmp ne %struct.scsi_cmnd* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 6
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %3, align 8
  store i32 1, i32* %4, align 4
  br label %50

16:                                               ; preds = %7
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %18, align 8
  %20 = icmp ne %struct.scsi_cmnd* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 5
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %3, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 5
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %26, align 8
  br label %50

27:                                               ; preds = %16
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 4
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %29, align 8
  %31 = icmp ne %struct.scsi_cmnd* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %34, align 8
  store %struct.scsi_cmnd* %35, %struct.scsi_cmnd** %3, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 4
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %37, align 8
  br label %50

38:                                               ; preds = %27
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = icmp ne %struct.scsi_cmnd* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.scsi_cmnd* @queue_remove_exclude(i32* %44, i32 %47)
  store %struct.scsi_cmnd* %48, %struct.scsi_cmnd** %3, align 8
  store i32 2, i32* %4, align 4
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %41, %32, %21, %12
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = icmp ne %struct.scsi_cmnd* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %55 = load i32, i32* @CMD_ENABLESEL, align 4
  %56 = call i32 @fas216_cmd(%struct.TYPE_19__* %54, i32 %55)
  br label %128

57:                                               ; preds = %50
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %59 = load i32, i32* @CMD_DISABLESEL, align 4
  %60 = call i32 @fas216_cmd(%struct.TYPE_19__* %58, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %57
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = icmp ne %struct.TYPE_20__* %69, null
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = load i32, i32* @LOG_CONNECT, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.TYPE_19__*, i32, i8*, i32, ...) @fas216_log(%struct.TYPE_19__* %72, i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = call i32 @queue_add_cmd_tail(i32* %84, %struct.TYPE_20__* %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %93, align 8
  br label %94

94:                                               ; preds = %71, %66, %57
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %96 = load i32, i32* @LOG_CONNECT, align 4
  %97 = load i32, i32* @LOG_MESSAGES, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %100 = call i32 @fas216_log_command(%struct.TYPE_19__* %95, i32 %98, %struct.scsi_cmnd* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %4, align 4
  switch i32 %101, label %114 [
    i32 2, label %102
    i32 0, label %106
    i32 1, label %110
  ]

102:                                              ; preds = %94
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %105 = call i32 @fas216_allocate_tag(%struct.TYPE_19__* %103, %struct.scsi_cmnd* %104)
  br label %106

106:                                              ; preds = %94, %102
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %109 = call i32 @fas216_start_command(%struct.TYPE_19__* %107, %struct.scsi_cmnd* %108)
  br label %114

110:                                              ; preds = %94
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %113 = call i32 @fas216_do_bus_device_reset(%struct.TYPE_19__* %111, %struct.scsi_cmnd* %112)
  br label %114

114:                                              ; preds = %94, %110, %106
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %116 = load i32, i32* @LOG_CONNECT, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.TYPE_19__*, i32, i8*, i32, ...) @fas216_log(%struct.TYPE_19__* %115, i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %114, %53
  ret void
}

declare dso_local i32 @fas216_checkmagic(%struct.TYPE_19__*) #1

declare dso_local %struct.scsi_cmnd* @queue_remove_exclude(i32*, i32) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @fas216_log(%struct.TYPE_19__*, i32, i8*, i32, ...) #1

declare dso_local i32 @queue_add_cmd_tail(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @fas216_log_command(%struct.TYPE_19__*, i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @fas216_allocate_tag(%struct.TYPE_19__*, %struct.scsi_cmnd*) #1

declare dso_local i32 @fas216_start_command(%struct.TYPE_19__*, %struct.scsi_cmnd*) #1

declare dso_local i32 @fas216_do_bus_device_reset(%struct.TYPE_19__*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
