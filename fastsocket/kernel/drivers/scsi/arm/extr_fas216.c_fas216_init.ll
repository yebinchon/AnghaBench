; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_7__, %struct.Scsi_Host*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAGIC = common dso_local global i8* null, align 8
@CNTL1_PERE = common dso_local global i32 0, align 4
@CNTL2_ENF = common dso_local global i32 0, align 4
@CNTL2_S2FE = common dso_local global i32 0, align 4
@CNTL3_ADIDCHK = common dso_local global i32 0, align 4
@CNTL3_QTAG = common dso_local global i32 0, align 4
@CNTL3_G2CB = common dso_local global i32 0, align 4
@CNTL3_LBTM = common dso_local global i32 0, align 4
@fas216_eh_timer = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fas216_init(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load i8*, i8** @MAGIC, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 11
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @MAGIC, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 10
  store i8* %12, i8** %14, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 9
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %17, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CNTL1_PERE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %22, i32* %27, align 4
  %28 = load i32, i32* @CNTL2_ENF, align 4
  %29 = load i32, i32* @CNTL2_S2FE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %30, i32* %35, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CNTL3_ADIDCHK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CNTL3_QTAG, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CNTL3_G2CB, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CNTL3_LBTM, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %47, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fas216_syncperiod(%struct.TYPE_10__* %53, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 7
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 6
  %71 = call i32 @init_timer(%struct.TYPE_11__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = ptrtoint %struct.TYPE_10__* %72 to i64
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load i32, i32* @fas216_eh_timer, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 5
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  %86 = call i32 @memset(i32* %85, i32 0, i32 4)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = call i32 @msgqueue_initialise(i32* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = call i32 @queue_initialise(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %1
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %113

99:                                               ; preds = %1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = call i32 @queue_initialise(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = call i32 @queue_free(i32* %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %105, %96
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @fas216_syncperiod(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @msgqueue_initialise(i32*) #1

declare dso_local i32 @queue_initialise(i32*) #1

declare dso_local i32 @queue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
