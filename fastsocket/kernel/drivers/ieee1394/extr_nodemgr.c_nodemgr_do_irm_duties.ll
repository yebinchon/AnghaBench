; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_do_irm_duties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_do_irm_duties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LOCAL_BUS = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_CONFIG_ROM = common dso_local global i64 0, align 8
@CSR_CMC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"The root node is not cycle master capable; selecting a new root node and resetting...\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Stopping reset loop for IRM sanity\00", align 1
@LONG_RESET_FORCE_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32)* @nodemgr_do_irm_duties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodemgr_do_irm_duties(%struct.hpsb_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %9 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %14 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 1, i32* %3, align 4
  br label %96

18:                                               ; preds = %12
  %19 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %20 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, 1073741824
  store i32 %23, i32* %21, align 8
  %24 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %25 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %28, label %83

28:                                               ; preds = %18
  %29 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %30 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %35 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %39 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %33
  %43 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %44 = load i32, i32* @LOCAL_BUS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %48 = call i32 @get_hpsb_generation(%struct.hpsb_host* %47)
  %49 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %50 = load i64, i64* @CSR_CONFIG_ROM, align 8
  %51 = add nsw i64 %49, %50
  %52 = add i64 %51, 8
  %53 = call i32 @hpsb_read(%struct.hpsb_host* %43, i32 %46, i32 %48, i64 %52, i32* %6, i32 4)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = load i32, i32* @CSR_CMC_SHIFT, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55, %33
  %63 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @hpsb_send_phy_config(%struct.hpsb_host* %63, i32 %64, i32 -1)
  br label %82

66:                                               ; preds = %55, %42
  %67 = call i32 @HPSB_DEBUG(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  %69 = icmp sge i32 %68, 5
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @HPSB_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

72:                                               ; preds = %66
  %73 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %74 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %75 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @NODEID_TO_NODE(i32 %76)
  %78 = call i32 @hpsb_send_phy_config(%struct.hpsb_host* %73, i32 %77, i32 -1)
  %79 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %80 = load i32, i32* @LONG_RESET_FORCE_ROOT, align 4
  %81 = call i32 @hpsb_reset_bus(%struct.hpsb_host* %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %96

82:                                               ; preds = %62
  br label %83

83:                                               ; preds = %82, %28, %18
  %84 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %85 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %90 = call i32 @nodemgr_send_resume_packet(%struct.hpsb_host* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %94 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %93, i32 0, i32 3
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %88, %83
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %72, %70, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @hpsb_read(%struct.hpsb_host*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @get_hpsb_generation(%struct.hpsb_host*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @hpsb_send_phy_config(%struct.hpsb_host*, i32, i32) #1

declare dso_local i32 @HPSB_DEBUG(i8*) #1

declare dso_local i32 @NODEID_TO_NODE(i32) #1

declare dso_local i32 @hpsb_reset_bus(%struct.hpsb_host*, i32) #1

declare dso_local i32 @nodemgr_send_resume_packet(%struct.hpsb_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
