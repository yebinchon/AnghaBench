; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_setup_link_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_setup_link_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.1 = type opaque

@e1000_fc_default = common dso_local global i64 0, align 8
@e1000_pchlan = common dso_local global i64 0, align 8
@e1000_fc_rx_pause = common dso_local global i64 0, align 8
@e1000_fc_full = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@FCTTV = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@e1000_phy_82579 = common dso_local global i64 0, align 8
@e1000_phy_i217 = common dso_local global i64 0, align 8
@e1000_phy_82577 = common dso_local global i64 0, align 8
@FCRTV_PCH = common dso_local global i32 0, align 4
@BM_PORT_CTRL_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_link_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_link_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %8, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = bitcast %struct.e1000_hw* %10 to %struct.e1000_hw.0*
  %12 = call i64 %9(%struct.e1000_hw.0* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %122

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_fc_default, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_pchlan, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i64, i64* @e1000_fc_rx_pause, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  br label %39

34:                                               ; preds = %22
  %35 = load i64, i64* @e1000_fc_full, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %56, align 8
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = bitcast %struct.e1000_hw* %58 to %struct.e1000_hw.1*
  %60 = call i64 %57(%struct.e1000_hw.1* %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %40
  %64 = load i64, i64* %4, align 8
  store i64 %64, i64* %2, align 8
  br label %122

65:                                               ; preds = %40
  %66 = load i32, i32* @FCTTV, align 4
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ew32(i32 %66, i32 %70)
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @e1000_phy_82578, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %99, label %78

78:                                               ; preds = %65
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @e1000_phy_82579, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %78
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @e1000_phy_i217, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @e1000_phy_82577, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %92, %85, %78, %65
  %100 = load i32, i32* @FCRTV_PCH, align 4
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ew32(i32 %100, i32 %104)
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %108 = call i32 @PHY_REG(i32 %107, i32 27)
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @e1e_wphy(%struct.e1000_hw* %106, i32 %108, i32 %112)
  store i64 %113, i64* %4, align 8
  %114 = load i64, i64* %4, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %99
  %117 = load i64, i64* %4, align 8
  store i64 %117, i64* %2, align 8
  br label %122

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %92
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = call i64 @e1000e_set_fc_watermarks(%struct.e1000_hw* %120)
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %119, %116, %63, %14
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

declare dso_local i32 @e_dbg(i8*, i64) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i64 @e1000e_set_fc_watermarks(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
