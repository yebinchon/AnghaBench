; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_check_irm_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_check_irm_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32, i64 }

@hpsb_disable_irm = common dso_local global i64 0, align 8
@LOCAL_BUS = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@CSR_BROADCAST_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Current remote IRM is not 1394a-2000 compliant, resetting...\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Stopping reset loop for IRM sanity\00", align 1
@LONG_RESET_FORCE_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32)* @nodemgr_check_irm_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodemgr_check_irm_capability(%struct.hpsb_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @hpsb_disable_irm, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i32 1, i32* %3, align 4
  br label %53

16:                                               ; preds = %10
  %17 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %18 = load i32, i32* @LOCAL_BUS, align 4
  %19 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %20 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %18, %21
  %23 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %24 = call i32 @get_hpsb_generation(%struct.hpsb_host* %23)
  %25 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %26 = load i32, i32* @CSR_BROADCAST_CHANNEL, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @hpsb_read(%struct.hpsb_host* %17, i32 %22, i32 %24, i32 %27, i32* %6, i32 4)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = and i32 %33, -2147483648
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %31, %16
  %37 = call i32 @HPSB_DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 5
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @HPSB_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %53

42:                                               ; preds = %36
  %43 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %44 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %45 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @NODEID_TO_NODE(i32 %46)
  %48 = call i32 @hpsb_send_phy_config(%struct.hpsb_host* %43, i32 %47, i32 -1)
  %49 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %50 = load i32, i32* @LONG_RESET_FORCE_ROOT, align 4
  %51 = call i32 @hpsb_reset_bus(%struct.hpsb_host* %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %42, %40, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @hpsb_read(%struct.hpsb_host*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @get_hpsb_generation(%struct.hpsb_host*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @HPSB_DEBUG(i8*) #1

declare dso_local i32 @hpsb_send_phy_config(%struct.hpsb_host*, i32, i32) #1

declare dso_local i32 @NODEID_TO_NODE(i32) #1

declare dso_local i32 @hpsb_reset_bus(%struct.hpsb_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
