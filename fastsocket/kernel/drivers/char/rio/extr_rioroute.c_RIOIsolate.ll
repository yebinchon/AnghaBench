; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOIsolate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOIsolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { i64 }
%struct.Host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_RUP = common dso_local global i32 0, align 4
@BEEN_HERE = common dso_local global i32 0, align 4
@DO_PRINT = common dso_local global i64 0, align 8
@RIO_DEBUG_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RIOMesgIsolated %s\00", align 1
@LINKS_PER_UNIT = common dso_local global i32 0, align 4
@ROUTE_DISCONNECT = common dso_local global i32 0, align 4
@NO_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_info*, %struct.Host*, i32)* @RIOIsolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RIOIsolate(%struct.rio_info* %0, %struct.Host* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_info*, align 8
  %6 = alloca %struct.Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rio_info* %0, %struct.rio_info** %5, align 8
  store %struct.Host* %1, %struct.Host** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @MAX_RUP, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

16:                                               ; preds = %3
  %17 = load %struct.Host*, %struct.Host** %6, align 8
  %18 = getelementptr inbounds %struct.Host, %struct.Host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BEEN_HERE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %120

29:                                               ; preds = %16
  %30 = load i32, i32* @BEEN_HERE, align 4
  %31 = load %struct.Host*, %struct.Host** %6, align 8
  %32 = getelementptr inbounds %struct.Host, %struct.Host* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %30
  store i32 %39, i32* %37, align 8
  %40 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %41 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DO_PRINT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %29
  %46 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %47 = load %struct.Host*, %struct.Host** %6, align 8
  %48 = getelementptr inbounds %struct.Host, %struct.Host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @rio_dprintk(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %45, %29
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %105, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @LINKS_PER_UNIT, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %108

61:                                               ; preds = %57
  %62 = load %struct.Host*, %struct.Host** %6, align 8
  %63 = getelementptr inbounds %struct.Host, %struct.Host* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @ROUTE_DISCONNECT, align 4
  %76 = load %struct.Host*, %struct.Host** %6, align 8
  %77 = getelementptr inbounds %struct.Host, %struct.Host* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %75, i32* %87, align 4
  %88 = load i32, i32* @NO_LINK, align 4
  %89 = load %struct.Host*, %struct.Host** %6, align 8
  %90 = getelementptr inbounds %struct.Host, %struct.Host* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %88, i32* %100, align 4
  %101 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %102 = load %struct.Host*, %struct.Host** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @RIOIsolate(%struct.rio_info* %101, %struct.Host* %102, i32 %103)
  br label %105

105:                                              ; preds = %61
  %106 = load i32, i32* %8, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %57

108:                                              ; preds = %57
  %109 = load i32, i32* @BEEN_HERE, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.Host*, %struct.Host** %6, align 8
  %112 = getelementptr inbounds %struct.Host, %struct.Host* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %110
  store i32 %119, i32* %117, align 8
  store i32 1, i32* %4, align 4
  br label %120

120:                                              ; preds = %108, %28, %15
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @rio_dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
