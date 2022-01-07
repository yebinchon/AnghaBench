; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ves1820_state* }
%struct.ves1820_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i64 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ves1820: AFC (%d) %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ves1820: [AFC (%d) %dHz]\0A\00", align 1
@INVERSION_ON = common dso_local global i8* null, align 8
@INVERSION_OFF = common dso_local global i8* null, align 8
@QAM_16 = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @ves1820_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.ves1820_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.ves1820_state*, %struct.ves1820_state** %9, align 8
  store %struct.ves1820_state* %10, %struct.ves1820_state** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %12 = call i32 @ves1820_readreg(%struct.ves1820_state* %11, i32 17)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %14 = call i32 @ves1820_readreg(%struct.ves1820_state* %13, i32 25)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 0, %31
  %33 = ashr i32 %32, 10
  %34 = call i32 @printk(i8* %22, i32 %23, i32 %33)
  br label %35

35:                                               ; preds = %17, %2
  %36 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %37 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %35
  %43 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %44 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i8*, i8** @INVERSION_ON, align 8
  br label %52

50:                                               ; preds = %42
  %51 = load i8*, i8** @INVERSION_OFF, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %70

56:                                               ; preds = %35
  %57 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %58 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** @INVERSION_ON, align 8
  br label %66

64:                                               ; preds = %56
  %65 = load i8*, i8** @INVERSION_OFF, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %52
  %71 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %72 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %73, 2
  %75 = and i32 %74, 7
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @QAM_16, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i64 %78, i64* %82, align 8
  %83 = load i32, i32* @FEC_NONE, align 4
  %84 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 8
  %88 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 31250
  %92 = sdiv i32 %91, 62500
  %93 = mul nsw i32 %92, 62500
  %94 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 2
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %70
  %100 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %101 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 %105, %106
  %108 = ashr i32 %107, 10
  %109 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %110 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %99, %70
  ret i32 0
}

declare dso_local i32 @ves1820_readreg(%struct.ves1820_state*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
