; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StuffFifoBypass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StuffFifoBypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i16, i16, i8*, i32 }

@NEED_BYPASS = common dso_local global i32 0, align 4
@CBUF_SIZE = common dso_local global i16 0, align 2
@ITRC_ERROR = common dso_local global i32 0, align 4
@ITRC_NO_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @i2StuffFifoBypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2StuffFifoBypass(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i16 1, i16* %8, align 2
  store i32 1000, i32* %10, align 4
  br label %11

11:                                               ; preds = %97, %1
  %12 = load i32, i32* %10, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = load i32, i32* @NEED_BYPASS, align 4
  %22 = call %struct.TYPE_10__* @i2DeQueueNeeds(%struct.TYPE_9__* %20, i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %3, align 8
  %23 = icmp ne %struct.TYPE_10__* null, %22
  br label %24

24:                                               ; preds = %19, %15, %11
  %25 = phi i1 [ false, %15 ], [ false, %11 ], [ %23, %19 ]
  br i1 %25, label %26, label %105

26:                                               ; preds = %24
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @write_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 8
  store i16 %33, i16* %5, align 2
  br label %34

34:                                               ; preds = %96, %26
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %97

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @CMD_COUNT_OF(i8* %49)
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = trunc i64 %52 to i16
  store i16 %53, i16* %6, align 2
  %54 = load i16, i16* %6, align 2
  %55 = call zeroext i16 @roundup(i16 zeroext %54, i32 2)
  store i16 %55, i16* %7, align 2
  %56 = load i16, i16* %7, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %42
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i16, i16* %7, align 2
  %63 = call i64 @i2Write2Fifo(%struct.TYPE_9__* %60, i8* %61, i16 zeroext %62, i32 0)
  %64 = icmp eq i64 0, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  store i16 0, i16* %8, align 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = load i32, i32* @NEED_BYPASS, align 4
  %69 = call i32 @i2QueueNeeds(%struct.TYPE_9__* %66, %struct.TYPE_10__* %67, i32 %68)
  br label %97

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %42
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i16, i16* %6, align 2
  %77 = zext i16 %76 to i32
  %78 = load i8*, i8** %4, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %4, align 8
  %81 = load i16, i16* %6, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* %5, align 2
  %84 = zext i16 %83 to i32
  %85 = add nsw i32 %84, %82
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %5, align 2
  %87 = load i16, i16* %5, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* @CBUF_SIZE, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp sge i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %71
  store i16 0, i16* %5, align 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %92, %71
  br label %34

97:                                               ; preds = %65, %34
  %98 = load i16, i16* %5, align 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i16 %98, i16* %100, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @write_unlock_irqrestore(i32* %102, i64 %103)
  br label %11

105:                                              ; preds = %24
  ret void
}

declare dso_local %struct.TYPE_10__* @i2DeQueueNeeds(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CMD_COUNT_OF(i8*) #1

declare dso_local zeroext i16 @roundup(i16 zeroext, i32) #1

declare dso_local i64 @i2Write2Fifo(%struct.TYPE_9__*, i8*, i16 zeroext, i32) #1

declare dso_local i32 @i2QueueNeeds(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
