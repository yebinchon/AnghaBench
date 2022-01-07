; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.vp702x_fe_state* }
%struct.vp702x_fe_state = type { i64, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\0A\00", align 1
@SEC_VOLTAGE_18 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"tuning failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tuning succeeded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @vp702x_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_fe_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.vp702x_fe_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca [10 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %11, align 8
  store %struct.vp702x_fe_state* %12, %struct.vp702x_fe_state** %5, align 8
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000
  store i32 %16, i32* %6, align 4
  %17 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 32, i1 false)
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 127
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 1000
  %32 = shl i32 %31, 20
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @do_div(i32 %33, i32 88000)
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 12
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 255
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 %41, i32* %42, align 16
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 4
  %45 = and i32 %44, 240
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 %45, i32* %46, align 4
  %47 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 (i8*, ...) @deb_fe(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 %56, i64 %58, i64 %60)
  %62 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %5, align 8
  %63 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SEC_VOLTAGE_18, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %2
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, 64
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %67, %2
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %73 = call i32 @vp702x_chksum(i32* %72, i32 0, i32 7)
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  store i32 %73, i32* %74, align 4
  %75 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %5, align 8
  %76 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %75, i32 0, i32 1
  store i32 250, i32* %76, align 8
  %77 = load i32, i32* @jiffies, align 4
  %78 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %5, align 8
  %79 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %5, align 8
  %81 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %85 = call i32 @vp702x_usb_inout_op(i32 %82, i32* %83, i32 8, i32* %84, i32 10, i32 100)
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %71
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @deb_fe(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %97

95:                                               ; preds = %89, %71
  %96 = call i32 (i8*, ...) @deb_fe(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %93
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @do_div(i32, i32) #2

declare dso_local i32 @deb_fe(i8*, ...) #2

declare dso_local i32 @vp702x_chksum(i32*, i32, i32) #2

declare dso_local i32 @vp702x_usb_inout_op(i32, i32*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
