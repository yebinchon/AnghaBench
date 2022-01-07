; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_update_std_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_update_std_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { %struct.tda18271_std_map }
%struct.tda18271_std_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@fm_radio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@atv_b = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"atv b\00", align 1
@atv_dk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"atv dk\00", align 1
@atv_gh = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"atv gh\00", align 1
@atv_i = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"atv i\00", align 1
@atv_l = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"atv l\00", align 1
@atv_lc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"atv l'\00", align 1
@atv_mn = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"atv mn\00", align 1
@atsc_6 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"atsc 6\00", align 1
@dvbt_6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"dvbt 6\00", align 1
@dvbt_7 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"dvbt 7\00", align 1
@dvbt_8 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"dvbt 8\00", align 1
@qam_6 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"qam 6\00", align 1
@qam_8 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"qam 8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.tda18271_std_map*)* @tda18271_update_std_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_update_std_map(%struct.dvb_frontend* %0, %struct.tda18271_std_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.tda18271_std_map*, align 8
  %6 = alloca %struct.tda18271_priv*, align 8
  %7 = alloca %struct.tda18271_std_map*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.tda18271_std_map* %1, %struct.tda18271_std_map** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  store %struct.tda18271_priv* %10, %struct.tda18271_priv** %6, align 8
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %12 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %11, i32 0, i32 0
  store %struct.tda18271_std_map* %12, %struct.tda18271_std_map** %7, align 8
  %13 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %5, align 8
  %14 = icmp ne %struct.tda18271_std_map* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load i32, i32* @fm_radio, align 4
  %20 = call i32 @tda18271_update_std(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @atv_b, align 4
  %22 = call i32 @tda18271_update_std(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @atv_dk, align 4
  %24 = call i32 @tda18271_update_std(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @atv_gh, align 4
  %26 = call i32 @tda18271_update_std(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @atv_i, align 4
  %28 = call i32 @tda18271_update_std(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @atv_l, align 4
  %30 = call i32 @tda18271_update_std(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32, i32* @atv_lc, align 4
  %32 = call i32 @tda18271_update_std(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %33 = load i32, i32* @atv_mn, align 4
  %34 = call i32 @tda18271_update_std(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i32, i32* @atsc_6, align 4
  %36 = call i32 @tda18271_update_std(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %37 = load i32, i32* @dvbt_6, align 4
  %38 = call i32 @tda18271_update_std(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %39 = load i32, i32* @dvbt_7, align 4
  %40 = call i32 @tda18271_update_std(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %41 = load i32, i32* @dvbt_8, align 4
  %42 = call i32 @tda18271_update_std(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %43 = load i32, i32* @qam_6, align 4
  %44 = call i32 @tda18271_update_std(i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %45 = load i32, i32* @qam_8, align 4
  %46 = call i32 @tda18271_update_std(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %18, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @tda18271_update_std(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
