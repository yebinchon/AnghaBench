; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_start_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_start_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i64, %struct.TYPE_11__, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.ccw1 = type { i32 }
%union.orb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { %union.orb }

@.str = private unnamed_addr constant [5 x i8] c"stIO\00", align 1
@SCSW_ACTL_START_PEND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_start_key(%struct.subchannel* %0, %struct.ccw1* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.orb*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %6, align 8
  store %struct.ccw1* %1, %struct.ccw1** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i32 @CIO_TRACE_EVENT(i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 4
  %15 = call i8* @dev_name(i32* %14)
  %16 = call i32 @CIO_TRACE_EVENT(i32 5, i8* %15)
  %17 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %18 = call %struct.TYPE_12__* @to_io_private(%struct.subchannel* %17)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store %union.orb* %19, %union.orb** %11, align 8
  %20 = load %union.orb*, %union.orb** %11, align 8
  %21 = call i32 @memset(%union.orb* %20, i32 0, i32 64)
  %22 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %23 = ptrtoint %struct.subchannel* %22 to i64
  %24 = load %union.orb*, %union.orb** %11, align 8
  %25 = bitcast %union.orb* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 9
  store i64 %23, i64* %26, align 8
  %27 = load %union.orb*, %union.orb** %11, align 8
  %28 = bitcast %union.orb* %27 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %31 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %union.orb*, %union.orb** %11, align 8
  %37 = bitcast %union.orb* %36 to %struct.TYPE_8__*
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %union.orb*, %union.orb** %11, align 8
  %44 = bitcast %union.orb* %43 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 8
  store i64 %42, i64* %45, align 8
  %46 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %47 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %4
  %52 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %53 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %51, %4
  %58 = phi i1 [ false, %4 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = load %union.orb*, %union.orb** %11, align 8
  %61 = bitcast %union.orb* %60 to %struct.TYPE_8__*
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %69 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi i64 [ %66, %65 ], [ %70, %67 ]
  %73 = load %union.orb*, %union.orb** %11, align 8
  %74 = bitcast %union.orb* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 7
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = ashr i64 %76, 4
  %78 = load %union.orb*, %union.orb** %11, align 8
  %79 = bitcast %union.orb* %78 to %struct.TYPE_8__*
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  store i64 %77, i64* %80, align 8
  %81 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %82 = call i64 @__pa(%struct.ccw1* %81)
  %83 = load %union.orb*, %union.orb** %11, align 8
  %84 = bitcast %union.orb* %83 to %struct.TYPE_8__*
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  store i64 %82, i64* %85, align 8
  %86 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %87 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %union.orb*, %union.orb** %11, align 8
  %90 = call i32 @ssch(i32 %88, %union.orb* %89)
  store i32 %90, i32* %10, align 4
  %91 = call i32 @CIO_HEX_EVENT(i32 5, i32* %10, i32 4)
  %92 = load i32, i32* %10, align 4
  switch i32 %92, label %109 [
    i32 0, label %93
    i32 1, label %102
    i32 2, label %102
    i32 3, label %105
  ]

93:                                               ; preds = %71
  %94 = load i32, i32* @SCSW_ACTL_START_PEND, align 4
  %95 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %96 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %94
  store i32 %101, i32* %99, align 8
  store i32 0, i32* %5, align 4
  br label %111

102:                                              ; preds = %71, %71
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %111

105:                                              ; preds = %71
  %106 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @cio_start_handle_notoper(%struct.subchannel* %106, i64 %107)
  store i32 %108, i32* %5, align 4
  br label %111

109:                                              ; preds = %71
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %105, %102, %93
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local %struct.TYPE_12__* @to_io_private(%struct.subchannel*) #1

declare dso_local i32 @memset(%union.orb*, i32, i32) #1

declare dso_local i64 @__pa(%struct.ccw1*) #1

declare dso_local i32 @ssch(i32, %union.orb*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @cio_start_handle_notoper(%struct.subchannel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
