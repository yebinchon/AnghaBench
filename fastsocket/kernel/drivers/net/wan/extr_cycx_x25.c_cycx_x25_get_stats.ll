; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_x25_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cycx_device = type { %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@X25_STATISTIC = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cycx_device*)* @cycx_x25_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cycx_x25_get_stats(%struct.cycx_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cycx_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cycx_device* %0, %struct.cycx_device** %3, align 8
  %5 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %6 = load i32, i32* @X25_STATISTIC, align 4
  %7 = call i32 @x25_exec(%struct.cycx_device* %5, i32 %6, i32 0, i32* null, i32 20, i32* null, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %114

12:                                               ; preds = %1
  %13 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %14 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %13, i32 0, i32 2
  %15 = call i32 @interruptible_sleep_on(i32* %14)
  %16 = load i32, i32* @current, align 4
  %17 = call i64 @signal_pending(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %114

22:                                               ; preds = %12
  %23 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %24 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %30 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 12
  store i32 %28, i32* %32, align 8
  %33 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %34 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %40 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 11
  store i32 %38, i32* %42, align 4
  %43 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %44 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %50 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 10
  store i32 %48, i32* %52, align 8
  %53 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %54 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %58 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %62 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %68 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 7
  store i32 %66, i32* %70, align 8
  %71 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %72 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %76 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %80 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %86 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  store i32 %84, i32* %88, align 4
  %89 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %90 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %96 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store i32 %94, i32* %98, align 8
  %99 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %100 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %104 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %108 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.cycx_device*, %struct.cycx_device** %3, align 8
  %112 = getelementptr inbounds %struct.cycx_device, %struct.cycx_device* %111, i32 0, i32 0
  %113 = call i32 @cycx_x25_dump_devs(%struct.TYPE_10__* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %22, %19, %10
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @x25_exec(%struct.cycx_device*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @cycx_x25_dump_devs(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
