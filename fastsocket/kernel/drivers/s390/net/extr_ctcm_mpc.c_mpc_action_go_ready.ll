; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_go_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_go_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.TYPE_4__*, %struct.mpc_group* }
%struct.TYPE_4__ = type { i32 }
%struct.mpc_group = type { i32, i32, i32, i64, i64, i32, i64, i32 (i32, i32, i32)*, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@MPC_ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s(%s): No MPC group\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@MPCG_EVENT_INOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s(%s): fails\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @mpc_action_go_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_action_go_ready(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  %9 = alloca %struct.mpc_group*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %8, align 8
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %16 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %15, i32 0, i32 1
  %17 = load %struct.mpc_group*, %struct.mpc_group** %16, align 8
  store %struct.mpc_group* %17, %struct.mpc_group** %9, align 8
  %18 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %19 = icmp eq %struct.mpc_group* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32, i32* @MPC_ERROR, align 4
  %22 = load i32, i32* @CTC_DBF_ERROR, align 4
  %23 = load i32, i32* @CTCM_FUNTAIL, align 4
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @CTCM_DBF_TEXT_(i32 %21, i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %93

28:                                               ; preds = %3
  %29 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %30 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %29, i32 0, i32 11
  %31 = call i32 @fsm_deltimer(i32* %30)
  %32 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %33 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %32, i32 0, i32 10
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %83

38:                                               ; preds = %28
  %39 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %40 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %44 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %43, i32 0, i32 7
  %45 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %44, align 8
  %46 = icmp ne i32 (i32, i32, i32)* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %38
  %48 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %49 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %48, i32 0, i32 7
  %50 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %49, align 8
  %51 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %52 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %55 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %50(i32 %53, i32 1, i32 %56)
  %58 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %59 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %58, i32 0, i32 7
  store i32 (i32, i32, i32)* null, i32 (i32, i32, i32)** %59, align 8
  br label %69

60:                                               ; preds = %38
  %61 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %62 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %67 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %71 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MPCG_EVENT_INOP, align 4
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = call i32 @fsm_event(i32 %72, i32 %73, %struct.net_device* %74)
  %76 = load i32, i32* @MPC_ERROR, align 4
  %77 = load i32, i32* @CTC_DBF_ERROR, align 4
  %78 = load i32, i32* @CTCM_FUNTAIL, align 4
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @CTCM_DBF_TEXT_(i32 %76, i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  br label %93

83:                                               ; preds = %28
  %84 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %85 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %87 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %89 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %91 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %90, i32 0, i32 2
  %92 = call i32 @tasklet_hi_schedule(i32* %91)
  br label %93

93:                                               ; preds = %83, %69, %20
  ret void
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
