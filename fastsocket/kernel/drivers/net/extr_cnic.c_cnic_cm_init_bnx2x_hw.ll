; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_init_bnx2x_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_init_bnx2x_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.bnx2x = type { i32 }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@DEF_MAX_DA_COUNT = common dso_local global i32 0, align 4
@DEF_TTL = common dso_local global i32 0, align 4
@DEF_TOS = common dso_local global i32 0, align 4
@DEF_SWS_TIMER = common dso_local global i32 0, align 4
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@DEF_MAX_CWND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_cm_init_bnx2x_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_init_bnx2x_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %7 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %7, i32 0, i32 1
  %9 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  store %struct.cnic_local* %9, %struct.cnic_local** %3, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.bnx2x* @netdev_priv(i32 %12)
  store %struct.bnx2x* %13, %struct.bnx2x** %4, align 8
  %14 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %15 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %18 = call i32 @CNIC_PORT(%struct.cnic_local* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %20 = call i32 @cnic_init_bnx2x_mac(%struct.cnic_dev* %19)
  %21 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %22 = call i32 @cnic_bnx2x_set_tcp_timestamp(%struct.cnic_dev* %21, i32 1)
  %23 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %24 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @XSTORM_ISCSI_LOCAL_VLAN_OFFSET(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @CNIC_WR16(%struct.cnic_dev* %23, i64 %27, i32 0)
  %29 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %30 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_ENABLED_OFFSET(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @CNIC_WR(%struct.cnic_dev* %29, i64 %33, i32 1)
  %35 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %36 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_MAX_COUNT_OFFSET(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* @DEF_MAX_DA_COUNT, align 4
  %41 = call i32 @CNIC_WR(%struct.cnic_dev* %35, i64 %39, i32 %40)
  %42 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %43 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @XSTORM_ISCSI_TCP_VARS_TTL_OFFSET(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* @DEF_TTL, align 4
  %48 = call i32 @CNIC_WR8(%struct.cnic_dev* %42, i64 %46, i32 %47)
  %49 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %50 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @XSTORM_ISCSI_TCP_VARS_TOS_OFFSET(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = load i32, i32* @DEF_TOS, align 4
  %55 = call i32 @CNIC_WR8(%struct.cnic_dev* %49, i64 %53, i32 %54)
  %56 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %57 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @XSTORM_ISCSI_TCP_VARS_ADV_WND_SCL_OFFSET(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @CNIC_WR8(%struct.cnic_dev* %56, i64 %60, i32 2)
  %62 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %63 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @XSTORM_TCP_TX_SWS_TIMER_VAL_OFFSET(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* @DEF_SWS_TIMER, align 4
  %68 = call i32 @CNIC_WR(%struct.cnic_dev* %62, i64 %66, i32 %67)
  %69 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %70 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @TSTORM_TCP_MAX_CWND_OFFSET(i32 %71)
  %73 = add nsw i64 %70, %72
  %74 = load i32, i32* @DEF_MAX_CWND, align 4
  %75 = call i32 @CNIC_WR(%struct.cnic_dev* %69, i64 %73, i32 %74)
  ret i32 0
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @CNIC_PORT(%struct.cnic_local*) #1

declare dso_local i32 @cnic_init_bnx2x_mac(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_bnx2x_set_tcp_timestamp(%struct.cnic_dev*, i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_VLAN_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_ENABLED_OFFSET(i32) #1

declare dso_local i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_MAX_COUNT_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_TTL_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_TOS_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_ADV_WND_SCL_OFFSET(i32) #1

declare dso_local i64 @XSTORM_TCP_TX_SWS_TIMER_VAL_OFFSET(i32) #1

declare dso_local i64 @TSTORM_TCP_MAX_CWND_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
