; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_dm04_lme2510_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_dm04_lme2510_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.lme2510_state* }
%struct.lme2510_state = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TDA8263\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"IX2505V\00", align 1
@__const.dm04_lme2510_tuner.tun_msg = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)], align 16
@tda826x_attach = common dso_local global i32 0, align 4
@ix2505v_attach = common dso_local global i32 0, align 4
@lme_tuner = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"TUN Found %s tuner\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"TUN No tuner found --- reseting device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dm04_lme2510_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm04_lme2510_tuner(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.lme2510_state*, align 8
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.lme2510_state*, %struct.lme2510_state** %10, align 8
  store %struct.lme2510_state* %11, %struct.lme2510_state** %4, align 8
  %12 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([3 x i8*]* @__const.dm04_lme2510_tuner.tun_msg to i8*), i64 24, i1 false)
  store i32 0, i32* %6, align 4
  %13 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %14 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %48 [
    i32 129, label %16
    i32 128, label %32
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @tda826x_attach, align 4
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 (i32, i32, i32, i32*, ...) @dvb_attach(i32 %17, i32 %20, i32 192, i32* %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %29 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %16
  br label %49

32:                                               ; preds = %1
  %33 = load i32, i32* @ix2505v_attach, align 4
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 (i32, i32, i32, i32*, ...) @dvb_attach(i32 %33, i32 %36, i32 ptrtoint (i32* @lme_tuner to i32), i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %45 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %32
  br label %49

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %48, %47, %31
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %68

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @lme_coldreset(i32 %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %72

68:                                               ; preds = %52
  %69 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %70 = call i32 @lme2510_int_service(%struct.dvb_usb_adapter* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dvb_attach(i32, i32, i32, i32*, ...) #2

declare dso_local i32 @info(i8*, ...) #2

declare dso_local i32 @lme_coldreset(i32) #2

declare dso_local i32 @lme2510_int_service(%struct.dvb_usb_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
