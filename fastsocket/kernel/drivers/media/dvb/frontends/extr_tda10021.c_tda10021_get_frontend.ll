; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10021.c_tda10021_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10021.c_tda10021_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10021_state* }
%struct.tda10021_state = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i64 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"DVB: TDA10021(%d): AFC (%d) %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"DVB: TDA10021(%d): [AFC (%d) %dHz]\0A\00", align 1
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @tda10021_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10021_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.tda10021_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda10021_state*, %struct.tda10021_state** %9, align 8
  store %struct.tda10021_state* %10, %struct.tda10021_state** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %12 = call i32 @tda10021_readreg(%struct.tda10021_state* %11, i32 17)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %14 = call i32 @tda10021_readreg(%struct.tda10021_state* %13, i32 25)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)
  %23 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %24 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 0, %37
  %39 = ashr i32 %38, 10
  %40 = call i32 @printk(i8* %22, i32 %28, i32 %29, i32 %39)
  br label %41

41:                                               ; preds = %17, %2
  %42 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %43 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 32
  %46 = icmp eq i32 %45, 32
  %47 = zext i1 %46 to i32
  %48 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %49 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = xor i32 %47, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* @INVERSION_ON, align 4
  br label %61

59:                                               ; preds = %41
  %60 = load i32, i32* @INVERSION_OFF, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %66 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 2
  %69 = and i32 %68, 7
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @QAM_16, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i64 %72, i64* %76, align 8
  %77 = load i32, i32* @FEC_NONE, align 4
  %78 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 8
  %82 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 31250
  %86 = sdiv i32 %85, 62500
  %87 = mul nsw i32 %86, 62500
  %88 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %61
  %94 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %99, %100
  %102 = ashr i32 %101, 10
  %103 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %104 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %93, %61
  ret i32 0
}

declare dso_local i32 @tda10021_readreg(%struct.tda10021_state*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
