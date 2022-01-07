; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_sleep_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_sleep_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@UNI_N_HWINIT_STATE = common dso_local global i32 0, align 4
@UNI_N_HWINIT_STATE_SLEEPING = common dso_local global i32 0, align 4
@UNI_N_POWER_MGT = common dso_local global i32 0, align 4
@UNI_N_POWER_MGT_IDLE2 = common dso_local global i32 0, align 4
@UNI_N_POWER_MGT_NORMAL = common dso_local global i32 0, align 4
@UNI_N_HWINIT_STATE_RUNNING = common dso_local global i32 0, align 4
@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PMAC_MB_CAN_SLEEP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_sleep_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_sleep_state(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* @UNI_N_HWINIT_STATE, align 4
  %15 = load i32, i32* @UNI_N_HWINIT_STATE_SLEEPING, align 4
  %16 = call i32 @UN_OUT(i32 %14, i32 %15)
  %17 = load i32, i32* @UNI_N_POWER_MGT, align 4
  %18 = load i32, i32* @UNI_N_POWER_MGT_IDLE2, align 4
  %19 = call i32 @UN_OUT(i32 %17, i32 %18)
  br label %29

20:                                               ; preds = %10
  %21 = load i32, i32* @UNI_N_POWER_MGT, align 4
  %22 = load i32, i32* @UNI_N_POWER_MGT_NORMAL, align 4
  %23 = call i32 @UN_OUT(i32 %21, i32 %22)
  %24 = call i32 @udelay(i32 10)
  %25 = load i32, i32* @UNI_N_HWINIT_STATE, align 4
  %26 = load i32, i32* @UNI_N_HWINIT_STATE_RUNNING, align 4
  %27 = call i32 @UN_OUT(i32 %25, i32 %26)
  %28 = call i32 @udelay(i32 10)
  br label %29

29:                                               ; preds = %20, %13
  store i64 0, i64* %4, align 8
  br label %39

30:                                               ; preds = %3
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 4
  %32 = load i32, i32* @PMAC_MB_CAN_SLEEP, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* @EPERM, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %39

38:                                               ; preds = %30
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %38, %35, %29
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i32 @UN_OUT(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
