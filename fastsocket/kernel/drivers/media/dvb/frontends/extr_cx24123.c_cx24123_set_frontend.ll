; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_9__, %struct.cx24123_state* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.cx24123_state = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.dvb_frontend*)*, i32, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_frontend_parameters = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"it seems I don't have a tuner...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @cx24123_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.cx24123_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %7, align 8
  store %struct.cx24123_state* %8, %struct.cx24123_state** %5, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %11 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.dvb_frontend*, i32)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %18 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %20, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = call i32 %21(%struct.dvb_frontend* %22, i32 0)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %29 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %36 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %38 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cx24123_set_inversion(%struct.cx24123_state* %37, i32 %40)
  %42 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %43 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cx24123_set_fec(%struct.cx24123_state* %42, i32 %47)
  %49 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cx24123_set_symbolrate(%struct.cx24123_state* %49, i32 %54)
  %56 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %57 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %24
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %64 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %65 = call i32 @cx24123_pll_tune(%struct.dvb_frontend* %63, %struct.dvb_frontend_parameters* %64)
  br label %86

66:                                               ; preds = %24
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %70, align 8
  %72 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %77, align 8
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %80 = bitcast %struct.dvb_frontend* %79 to %struct.dvb_frontend.0*
  %81 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %82 = call i32 %78(%struct.dvb_frontend.0* %80, %struct.dvb_frontend_parameters* %81)
  br label %85

83:                                               ; preds = %66
  %84 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %73
  br label %86

86:                                               ; preds = %85, %62
  %87 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %88 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %89 = call i32 @cx24123_readreg(%struct.cx24123_state* %88, i32 3)
  %90 = or i32 %89, 7
  %91 = call i32 @cx24123_writereg(%struct.cx24123_state* %87, i32 3, i32 %90)
  %92 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %93 = call i32 @cx24123_writereg(%struct.cx24123_state* %92, i32 0, i32 16)
  %94 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %95 = call i32 @cx24123_writereg(%struct.cx24123_state* %94, i32 0, i32 0)
  %96 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %97 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %99, align 8
  %101 = icmp ne i32 (%struct.dvb_frontend*)* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %86
  %103 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %104 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %106, align 8
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %109 = call i32 %107(%struct.dvb_frontend* %108)
  br label %110

110:                                              ; preds = %102, %86
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cx24123_set_inversion(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_set_fec(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_set_symbolrate(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_pll_tune(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
