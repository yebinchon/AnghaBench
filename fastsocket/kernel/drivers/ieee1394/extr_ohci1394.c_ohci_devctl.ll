; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_devctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_devctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.ti_ohci* }
%struct.ti_ohci = type { i32, i32 }

@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"devctl command SET_BUS_ID err\00", align 1
@OHCI1394_NodeID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cycle master enabled\00", align 1
@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_CycleTimerEnable = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_CycleMaster = common dso_local global i32 0, align 4
@OHCI1394_LinkControlClear = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_CycleSource = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Cancel request received\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"ohci_devctl cmd %d not implemented yet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32, i32)* @ohci_devctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_devctl(%struct.hpsb_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_ohci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 0
  %13 = load %struct.ti_ohci*, %struct.ti_ohci** %12, align 8
  store %struct.ti_ohci* %13, %struct.ti_ohci** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %146 [
    i32 133, label %15
    i32 137, label %93
    i32 131, label %97
    i32 132, label %102
    i32 139, label %105
    i32 138, label %138
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %91 [
    i32 130, label %17
    i32 136, label %25
    i32 128, label %33
    i32 134, label %53
    i32 129, label %63
    i32 135, label %83
  ]

17:                                               ; preds = %15
  %18 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %19 = call i32 @get_phy_reg(%struct.ti_ohci* %18, i32 5)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, 64
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @set_phy_reg(%struct.ti_ohci* %22, i32 5, i32 %23)
  br label %92

25:                                               ; preds = %15
  %26 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %27 = call i32 @get_phy_reg(%struct.ti_ohci* %26, i32 1)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, 64
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @set_phy_reg(%struct.ti_ohci* %30, i32 1, i32 %31)
  br label %92

33:                                               ; preds = %15
  %34 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %35 = call i32 @get_phy_reg(%struct.ti_ohci* %34, i32 1)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, -129
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @set_phy_reg(%struct.ti_ohci* %42, i32 1, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %47 = call i32 @get_phy_reg(%struct.ti_ohci* %46, i32 5)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, 64
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @set_phy_reg(%struct.ti_ohci* %50, i32 5, i32 %51)
  br label %92

53:                                               ; preds = %15
  %54 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %55 = call i32 @get_phy_reg(%struct.ti_ohci* %54, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, -129
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, 64
  store i32 %59, i32* %9, align 4
  %60 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @set_phy_reg(%struct.ti_ohci* %60, i32 1, i32 %61)
  br label %92

63:                                               ; preds = %15
  %64 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %65 = call i32 @get_phy_reg(%struct.ti_ohci* %64, i32 1)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, 128
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @set_phy_reg(%struct.ti_ohci* %72, i32 1, i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %77 = call i32 @get_phy_reg(%struct.ti_ohci* %76, i32 5)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, 64
  store i32 %79, i32* %9, align 4
  %80 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @set_phy_reg(%struct.ti_ohci* %80, i32 5, i32 %81)
  br label %92

83:                                               ; preds = %15
  %84 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %85 = call i32 @get_phy_reg(%struct.ti_ohci* %84, i32 1)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, 192
  store i32 %87, i32* %9, align 4
  %88 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @set_phy_reg(%struct.ti_ohci* %88, i32 1, i32 %89)
  br label %92

91:                                               ; preds = %15
  store i32 -1, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %83, %75, %53, %45, %25, %17
  br label %150

93:                                               ; preds = %3
  %94 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %95 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %96 = call i32 @reg_read(%struct.ti_ohci* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  br label %150

97:                                               ; preds = %3
  %98 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %99 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @reg_write(%struct.ti_ohci* %98, i32 %99, i32 %100)
  br label %150

102:                                              ; preds = %3
  %103 = load i32, i32* @KERN_ERR, align 4
  %104 = call i32 @PRINT(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %150

105:                                              ; preds = %3
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %110 = load i32, i32* @OHCI1394_NodeID, align 4
  %111 = call i32 @reg_read(%struct.ti_ohci* %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, 1073741824
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, 63
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = call i32 @DBGMSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %121 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %122 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %123 = load i32, i32* @OHCI1394_LinkControl_CycleTimerEnable, align 4
  %124 = load i32, i32* @OHCI1394_LinkControl_CycleMaster, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @reg_write(%struct.ti_ohci* %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %119, %115, %108
  br label %137

128:                                              ; preds = %105
  %129 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %130 = load i32, i32* @OHCI1394_LinkControlClear, align 4
  %131 = load i32, i32* @OHCI1394_LinkControl_CycleTimerEnable, align 4
  %132 = load i32, i32* @OHCI1394_LinkControl_CycleMaster, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @OHCI1394_LinkControl_CycleSource, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @reg_write(%struct.ti_ohci* %129, i32 %130, i32 %135)
  br label %137

137:                                              ; preds = %128, %127
  br label %150

138:                                              ; preds = %3
  %139 = call i32 @DBGMSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %141 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %140, i32 0, i32 1
  %142 = call i32 @dma_trm_reset(i32* %141)
  %143 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %144 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %143, i32 0, i32 0
  %145 = call i32 @dma_trm_reset(i32* %144)
  br label %150

146:                                              ; preds = %3
  %147 = load i32, i32* @KERN_ERR, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @PRINT_G(i32 %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %138, %137, %102, %97, %93, %92
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @get_phy_reg(%struct.ti_ohci*, i32) #1

declare dso_local i32 @set_phy_reg(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @PRINT(i32, i8*) #1

declare dso_local i32 @DBGMSG(i8*) #1

declare dso_local i32 @dma_trm_reset(i32*) #1

declare dso_local i32 @PRINT_G(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
