; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOFreeDisconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOFreeDisconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { i32 }
%struct.Host = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@RIO_DEBUG_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RIOFreeDisconnect unit %d\0A\00", align 1
@LINKS_PER_UNIT = common dso_local global i32 0, align 4
@ROUTE_DISCONNECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"RioFreedis second slot %d.\0A\00", align 1
@LBOLT = common dso_local global i32 0, align 4
@TentTime = common dso_local global i64* null, align 8
@WAIT_TO_FINISH = common dso_local global i64 0, align 8
@current_time = common dso_local global i64 0, align 8
@elapse_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_info*, %struct.Host*, i32)* @RIOFreeDisconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RIOFreeDisconnected(%struct.rio_info* %0, %struct.Host* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_info*, align 8
  %6 = alloca %struct.Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rio_info* %0, %struct.rio_info** %5, align 8
  store %struct.Host* %1, %struct.Host** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @LINKS_PER_UNIT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.Host*, %struct.Host** %6, align 8
  %19 = getelementptr inbounds %struct.Host, %struct.Host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ROUTE_DISCONNECT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %38

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %13

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LINKS_PER_UNIT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %82

43:                                               ; preds = %38
  %44 = load %struct.Host*, %struct.Host** %6, align 8
  %45 = getelementptr inbounds %struct.Host, %struct.Host* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %43
  %54 = load %struct.Host*, %struct.Host** %6, align 8
  %55 = getelementptr inbounds %struct.Host, %struct.Host* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.Host*, %struct.Host** %6, align 8
  %67 = getelementptr inbounds %struct.Host, %struct.Host* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = call i32 @memset(%struct.TYPE_5__* %71, i32 0, i32 4)
  br label %73

73:                                               ; preds = %53, %43
  %74 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %75 = load %struct.Host*, %struct.Host** %6, align 8
  %76 = getelementptr inbounds %struct.Host, %struct.Host* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = call i32 @RIORemoveFromSavedTable(%struct.rio_info* %74, %struct.TYPE_5__* %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %73, %42
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @RIORemoveFromSavedTable(%struct.rio_info*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
