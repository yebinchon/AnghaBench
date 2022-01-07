; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_hw_event_phy_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_hw_event_phy_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_phy*, %struct.pm8001_port* }
%struct.pm8001_phy = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.pm8001_port = type { i64, i32 }
%struct.hw_event_resp = type { i32, i32 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" PortInvalid portID %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" Last phy Down and port invalid\0A\00", align 1
@HW_EVENT_PHY_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c" Port In Reset portID %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" phy Down and PORT_NOT_ESTABLISHED\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c" phy Down and PORT_LOSTCOMM\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c" phy Down and(default) = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @hw_event_phy_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_event_phy_down(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hw_event_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pm8001_port*, align 8
  %12 = alloca %struct.pm8001_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr i8, i8* %13, i64 4
  %15 = bitcast i8* %14 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %15, %struct.hw_event_resp** %5, align 8
  %16 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %17 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 15
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 240
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %28 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 15
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %35 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %34, i32 0, i32 1
  %36 = load %struct.pm8001_port*, %struct.pm8001_port** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %36, i64 %37
  store %struct.pm8001_port* %38, %struct.pm8001_port** %11, align 8
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %39, i32 0, i32 0
  %41 = load %struct.pm8001_phy*, %struct.pm8001_phy** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %41, i64 %42
  store %struct.pm8001_phy* %43, %struct.pm8001_phy** %12, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %46 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %48 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %50 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %53 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.pm8001_phy*, %struct.pm8001_phy** %12, align 8
  %55 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %54, i32 0, i32 0
  %56 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %57 = call i32 @memset(i32* %55, i32 0, i32 %56)
  %58 = load i64, i64* %10, align 8
  switch i64 %58, label %100 [
    i64 128, label %59
    i64 132, label %60
    i64 131, label %75
    i64 129, label %80
    i64 130, label %86
  ]

59:                                               ; preds = %2
  br label %107

60:                                               ; preds = %2
  %61 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %61, i32 %63)
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %65, i32 %66)
  %68 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %69 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  %70 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %71 = load i32, i32* @HW_EVENT_PHY_DOWN, align 4
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %70, i32 0, i32 %71, i64 %72, i64 %73, i32 0, i32 0)
  br label %107

75:                                               ; preds = %2
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %76, i32 %78)
  br label %107

80:                                               ; preds = %2
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %82 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %81, i32 %82)
  %84 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %85 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %84, i32 0, i32 1
  store i32 0, i32* %85, align 8
  br label %107

86:                                               ; preds = %2
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %88 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %87, i32 %88)
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %91 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %90, i32 %91)
  %93 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %94 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %93, i32 0, i32 1
  store i32 0, i32* %94, align 8
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = load i32, i32* @HW_EVENT_PHY_DOWN, align 4
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %95, i32 0, i32 %96, i64 %97, i64 %98, i32 0, i32 0)
  br label %107

100:                                              ; preds = %2
  %101 = load %struct.pm8001_port*, %struct.pm8001_port** %11, align 8
  %102 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %101, i32 0, i32 1
  store i32 0, i32* %102, align 8
  %103 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %104)
  %106 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %103, i32 %105)
  br label %107

107:                                              ; preds = %100, %86, %80, %75, %60, %59
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info*, i32, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
