; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_get_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_get_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irb = type { i8*, %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.tsb = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.tcw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dasd_get_sense(%struct.irb* %0) #0 {
  %2 = alloca %struct.irb*, align 8
  %3 = alloca %struct.tsb*, align 8
  %4 = alloca i8*, align 8
  store %struct.irb* %0, %struct.irb** %2, align 8
  store %struct.tsb* null, %struct.tsb** %3, align 8
  store i8* null, i8** %4, align 8
  %5 = load %struct.irb*, %struct.irb** %2, align 8
  %6 = getelementptr inbounds %struct.irb, %struct.irb* %5, i32 0, i32 2
  %7 = call i64 @scsw_is_tm(%struct.TYPE_16__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = load %struct.irb*, %struct.irb** %2, align 8
  %11 = getelementptr inbounds %struct.irb, %struct.irb* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %64

16:                                               ; preds = %9
  %17 = load %struct.irb*, %struct.irb** %2, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.irb*, %struct.irb** %2, align 8
  %25 = getelementptr inbounds %struct.irb, %struct.irb* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.tcw*
  %30 = call %struct.tsb* @tcw_get_tsb(%struct.tcw* %29)
  store %struct.tsb* %30, %struct.tsb** %3, align 8
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.tsb*, %struct.tsb** %3, align 8
  %33 = icmp ne %struct.tsb* %32, null
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = load %struct.tsb*, %struct.tsb** %3, align 8
  %36 = getelementptr inbounds %struct.tsb, %struct.tsb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.tsb*, %struct.tsb** %3, align 8
  %41 = getelementptr inbounds %struct.tsb, %struct.tsb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.tsb*, %struct.tsb** %3, align 8
  %46 = getelementptr inbounds %struct.tsb, %struct.tsb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 7
  switch i32 %48, label %61 [
    i32 1, label %49
    i32 2, label %55
  ]

49:                                               ; preds = %44
  %50 = load %struct.tsb*, %struct.tsb** %3, align 8
  %51 = getelementptr inbounds %struct.tsb, %struct.tsb* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %4, align 8
  br label %62

55:                                               ; preds = %44
  %56 = load %struct.tsb*, %struct.tsb** %3, align 8
  %57 = getelementptr inbounds %struct.tsb, %struct.tsb* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %4, align 8
  br label %62

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %55, %49
  br label %63

63:                                               ; preds = %62, %39, %34, %31
  br label %77

64:                                               ; preds = %9, %1
  %65 = load %struct.irb*, %struct.irb** %2, align 8
  %66 = getelementptr inbounds %struct.irb, %struct.irb* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.irb*, %struct.irb** %2, align 8
  %74 = getelementptr inbounds %struct.irb, %struct.irb* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %72, %64
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i8*, i8** %4, align 8
  ret i8* %78
}

declare dso_local i64 @scsw_is_tm(%struct.TYPE_16__*) #1

declare dso_local %struct.tsb* @tcw_get_tsb(%struct.tcw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
