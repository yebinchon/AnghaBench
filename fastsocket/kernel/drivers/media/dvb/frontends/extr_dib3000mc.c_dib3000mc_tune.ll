; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { i64 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"SFN workaround is active\0A\00", align 1
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib3000mc_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_tune(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib3000mc_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %7, align 8
  store %struct.dib3000mc_state* %8, %struct.dib3000mc_state** %5, align 8
  %9 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %10 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %11 = call i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state* %9, %struct.dvb_frontend_parameters* %10, i32 0)
  %12 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %13 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %19 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %18, i32 29, i32 4723)
  %20 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %21 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %20, i32 108, i32 16384)
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %24 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %23, i32 29, i32 4211)
  %25 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %26 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %25, i32 108, i32 0)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %29 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state* %28, i32 %34)
  %36 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %45 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %44, i32 26, i32 38528)
  %46 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %47 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %46, i32 33, i32 8)
  br label %53

48:                                               ; preds = %27
  %49 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %50 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %49, i32 26, i32 30336)
  %51 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %52 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %51, i32 33, i32 6)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %55 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %54, i32 509)
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %60 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @BANDWIDTH_TO_KHZ(i32 %69)
  %71 = call i32 @dib3000mc_set_timing(%struct.dib3000mc_state* %59, i32 %64, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %58, %53
  ret i32 0
}

declare dso_local i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state*, %struct.dvb_frontend_parameters*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_timing(%struct.dib3000mc_state*, i32, i32, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
