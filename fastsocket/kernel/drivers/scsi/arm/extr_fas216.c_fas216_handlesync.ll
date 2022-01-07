; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_handlesync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_handlesync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.fas216_device* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i8*, i32 }
%struct.TYPE_10__ = type { i8, i32, i32 }
%struct.fas216_device = type { i32, i8, i8, i32 }

@CMD_SETATN = common dso_local global i32 0, align 4
@PHASE_MSGOUT_EXPECT = common dso_local global i8* null, align 8
@EXTENDED_SDTR = common dso_local global i32 0, align 4
@neg_complete = common dso_local global i32 0, align 4
@neg_targcomplete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8*)* @fas216_handlesync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_handlesync(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fas216_device*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %9 = load %struct.fas216_device*, %struct.fas216_device** %8, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.fas216_device, %struct.fas216_device* %9, i64 %16
  store %struct.fas216_device* %17, %struct.fas216_device** %5, align 8
  store i32 2, i32* %6, align 4
  store i32 3, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %92 [
    i32 0, label %19
    i32 3, label %49
    i32 1, label %65
    i32 2, label %91
  ]

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.fas216_device*, %struct.fas216_device** %5, align 8
  %24 = getelementptr inbounds %struct.fas216_device, %struct.fas216_device* %23, i32 0, i32 1
  store i8 %22, i8* %24, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  %27 = load i8, i8* %26, align 1
  %28 = load %struct.fas216_device*, %struct.fas216_device** %5, align 8
  %29 = getelementptr inbounds %struct.fas216_device, %struct.fas216_device* %28, i32 0, i32 2
  store i8 %27, i8* %29, align 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = mul nsw i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = call i32 @fas216_syncperiod(%struct.TYPE_14__* %30, i8 signext %36)
  %38 = load %struct.fas216_device*, %struct.fas216_device** %5, align 8
  %39 = getelementptr inbounds %struct.fas216_device, %struct.fas216_device* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @fas216_set_sync(%struct.TYPE_14__* %40, i64 %47)
  br label %92

49:                                               ; preds = %2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = load i32, i32* @CMD_SETATN, align 4
  %52 = call i32 @fas216_cmd(%struct.TYPE_14__* %50, i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = call i32 @msgqueue_flush(i32* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = call i32 (i32*, i32, i32, ...) @msgqueue_addmsg(i32* %59, i32 1, i32 130)
  %61 = load i8*, i8** @PHASE_MSGOUT_EXPECT, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %2, %49
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = load %struct.fas216_device*, %struct.fas216_device** %5, align 8
  %73 = getelementptr inbounds %struct.fas216_device, %struct.fas216_device* %72, i32 0, i32 1
  store i8 %71, i8* %73, align 4
  %74 = load %struct.fas216_device*, %struct.fas216_device** %5, align 8
  %75 = getelementptr inbounds %struct.fas216_device, %struct.fas216_device* %74, i32 0, i32 2
  store i8 0, i8* %75, align 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.fas216_device*, %struct.fas216_device** %5, align 8
  %81 = getelementptr inbounds %struct.fas216_device, %struct.fas216_device* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @fas216_set_sync(%struct.TYPE_14__* %82, i64 %89)
  br label %92

91:                                               ; preds = %2
  br label %92

92:                                               ; preds = %2, %91, %65, %19
  ret void
}

declare dso_local i32 @fas216_syncperiod(%struct.TYPE_14__*, i8 signext) #1

declare dso_local i32 @fas216_set_sync(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @msgqueue_flush(i32*) #1

declare dso_local i32 @msgqueue_addmsg(i32*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
