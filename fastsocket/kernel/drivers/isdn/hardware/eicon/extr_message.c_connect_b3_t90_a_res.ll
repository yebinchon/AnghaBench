; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_b3_t90_a_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_b3_t90_a_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }
%struct.TYPE_6__ = type { i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"connect_b3_t90_a_res\00", align 1
@INC_ACT_PENDING = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i8* null, align 8
@INC_CON_PENDING = common dso_local global i64 0, align 8
@N_CONNECT_ACK = common dso_local global i32 0, align 4
@N_D_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_5__*, i32*, i32*, %struct.TYPE_6__*)* @connect_b3_t90_a_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_b3_t90_a_res(i32 %0, i64 %1, %struct.TYPE_5__* %2, i32* %3, i32* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %17 = call i32 @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @dbug(i32 1, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 16
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %107

24:                                               ; preds = %6
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INC_ACT_PENDING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load i8*, i8** @CONNECTED, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %38, i64* %43, align 8
  br label %106

44:                                               ; preds = %27
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INC_CON_PENDING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %105

53:                                               ; preds = %44
  %54 = load i8*, i8** @CONNECTED, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %55, i64* %60, align 8
  %61 = load i32, i32* @N_CONNECT_ACK, align 4
  store i32 %61, i32* %16, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %99

67:                                               ; preds = %53
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 1
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %15, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %98

74:                                               ; preds = %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @N_CONNECT_ACK, align 4
  %84 = load i32, i32* @N_D_BIT, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i32*, i32** %11, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = call i32 @add_d(i32* %87, i64 %92, i32* %96)
  br label %98

98:                                               ; preds = %86, %67
  br label %99

99:                                               ; preds = %98, %53
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i64, i64* %14, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @nl_req_ncci(i32* %100, i32 %101, i32 %103)
  store i32 1, i32* %7, align 4
  br label %108

105:                                              ; preds = %44
  br label %106

106:                                              ; preds = %105, %36
  br label %107

107:                                              ; preds = %106, %24, %6
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %99
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @add_d(i32*, i64, i32*) #1

declare dso_local i32 @nl_req_ncci(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
