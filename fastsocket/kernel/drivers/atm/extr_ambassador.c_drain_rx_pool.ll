; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_drain_rx_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_drain_rx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"drain_rx_pool %p %hu\00", align 1
@dead = common dso_local global i32 0, align 4
@SRB_FLUSH_BUFFER_Q = common dso_local global i8 0, align 1
@SRB_POOL_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8)* @drain_rx_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_rx_pool(%struct.TYPE_15__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i64 %11
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  %13 = load i32, i32* @DBG_FLOW, align 4
  %14 = load i32, i32* @DBG_POOL, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @PRINTD(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %16, i8 zeroext %17)
  %19 = load i32, i32* @dead, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %72

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %25
  %34 = load i8, i8* @SRB_FLUSH_BUFFER_Q, align 1
  %35 = call i8* @cpu_to_be32(i8 zeroext %34)
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load i8, i8* %4, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @SRB_POOL_SHIFT, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = call i8* @cpu_to_be32(i8 zeroext %42)
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  br label %47

47:                                               ; preds = %51, %33
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = call i64 @command_do(%struct.TYPE_15__* %48, %struct.TYPE_13__* %6)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (...) @schedule()
  br label %47

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %69, %53
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = load i8, i8* %4, align 1
  %65 = call i64 @rx_take(%struct.TYPE_15__* %63, i8 zeroext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (...) @schedule()
  br label %69

69:                                               ; preds = %67, %62
  br label %54

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %25
  br label %72

72:                                               ; preds = %71, %24
  ret void
}

declare dso_local i32 @PRINTD(i32, i8*, %struct.TYPE_15__*, i8 zeroext) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i8 zeroext) #1

declare dso_local i64 @command_do(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @rx_take(%struct.TYPE_15__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
