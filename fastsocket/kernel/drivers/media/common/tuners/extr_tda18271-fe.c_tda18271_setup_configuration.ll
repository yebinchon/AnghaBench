; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_setup_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_setup_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i32, i32, i32, i32, i32 }
%struct.tda18271_config = type { i32, i32, i32, i32, i32 }

@TDA18271_GATE_AUTO = common dso_local global i32 0, align 4
@TDA18271_MASTER = common dso_local global i32 0, align 4
@TDA18271_39_BYTE_CHUNK_INIT = common dso_local global i32 0, align 4
@TDA18271_OUTPUT_LT_XT_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.tda18271_config*)* @tda18271_setup_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_setup_configuration(%struct.dvb_frontend* %0, %struct.tda18271_config* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda18271_config*, align 8
  %5 = alloca %struct.tda18271_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.tda18271_config* %1, %struct.tda18271_config** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  store %struct.tda18271_priv* %8, %struct.tda18271_priv** %5, align 8
  %9 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %10 = icmp ne %struct.tda18271_config* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %13 = getelementptr inbounds %struct.tda18271_config, %struct.tda18271_config* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @TDA18271_GATE_AUTO, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %14, %11 ], [ %16, %15 ]
  %19 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %20 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %22 = icmp ne %struct.tda18271_config* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %25 = getelementptr inbounds %struct.tda18271_config, %struct.tda18271_config* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @TDA18271_MASTER, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  %31 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %32 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %34 = icmp ne %struct.tda18271_config* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %37 = getelementptr inbounds %struct.tda18271_config, %struct.tda18271_config* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  %42 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %43 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %45 = icmp ne %struct.tda18271_config* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %48 = getelementptr inbounds %struct.tda18271_config, %struct.tda18271_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @TDA18271_39_BYTE_CHUNK_INIT, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  %54 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %55 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %57 = icmp ne %struct.tda18271_config* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.tda18271_config*, %struct.tda18271_config** %4, align 8
  %60 = getelementptr inbounds %struct.tda18271_config, %struct.tda18271_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @TDA18271_OUTPUT_LT_XT_ON, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %61, %58 ], [ %63, %62 ]
  %66 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %67 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
