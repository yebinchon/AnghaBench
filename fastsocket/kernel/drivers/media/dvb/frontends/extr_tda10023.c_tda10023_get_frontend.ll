; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10023_state* }
%struct.tda10023_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dvb_frontend_parameters = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i64 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"DVB: TDA10023(%d): AFC (%d) %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"DVB: TDA10023(%d): [AFC (%d) %dHz]\0A\00", align 1
@QAM_16 = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @tda10023_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.tda10023_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %10, align 8
  store %struct.tda10023_state* %11, %struct.tda10023_state** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %13 = call i32 @tda10023_readreg(%struct.tda10023_state* %12, i32 17)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %15 = call i32 @tda10023_readreg(%struct.tda10023_state* %14, i32 25)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %17 = call i32 @tda10023_readreg(%struct.tda10023_state* %16, i32 4)
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* @verbose, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)
  %26 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %27 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sub nsw i32 0, %40
  %42 = ashr i32 %41, 10
  %43 = call i32 @printk(i8* %25, i32 %31, i32 %32, i32 %42)
  br label %44

44:                                               ; preds = %20, %2
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 32
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 1
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %53 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 2
  %56 = and i32 %55, 7
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @QAM_16, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* @FEC_NONE, align 4
  %65 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 8
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 31250
  %73 = sdiv i32 %72, 62500
  %74 = mul nsw i32 %73, 62500
  %75 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %44
  %81 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %86, %87
  %89 = ashr i32 %88, 10
  %90 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %91 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %80, %44
  ret i32 0
}

declare dso_local i32 @tda10023_readreg(%struct.tda10023_state*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
