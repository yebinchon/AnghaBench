; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_fiber_serdes_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_fiber_serdes_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_setup_fiber_serdes_link\00", align 1
@CTRL = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_CTRL_LRST = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_TXCW_FD = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE_MASK = common dso_local global i32 0, align 4
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Auto-negotiation enabled\0A\00", align 1
@TXCW = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Looking for Link\0A\00", align 1
@LINK_UP_TIMEOUT = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Never got a valid link from auto-neg!!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Error while checking for link\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Valid Link Found\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"No Signal Detected\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_fiber_serdes_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_fiber_serdes_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CTRL, align 4
  %12 = call i32 @er32(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_media_type_fiber, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_82544, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %1
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = call i64 @e1000_adjust_serdes_amplitude(%struct.e1000_hw* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %2, align 8
  br label %152

36:                                               ; preds = %29
  %37 = load i32, i32* @E1000_CTRL_LRST, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = call i64 @e1000_set_vco_speed(%struct.e1000_hw* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %2, align 8
  br label %152

47:                                               ; preds = %36
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %48)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %75 [
    i32 130, label %53
    i32 129, label %57
    i32 128, label %63
    i32 131, label %69
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* @E1000_TXCW_ANE, align 4
  %55 = load i32, i32* @E1000_TXCW_FD, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %6, align 4
  br label %79

57:                                               ; preds = %47
  %58 = load i32, i32* @E1000_TXCW_ANE, align 4
  %59 = load i32, i32* @E1000_TXCW_FD, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %6, align 4
  br label %79

63:                                               ; preds = %47
  %64 = load i32, i32* @E1000_TXCW_ANE, align 4
  %65 = load i32, i32* @E1000_TXCW_FD, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %6, align 4
  br label %79

69:                                               ; preds = %47
  %70 = load i32, i32* @E1000_TXCW_ANE, align 4
  %71 = load i32, i32* @E1000_TXCW_FD, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %6, align 4
  br label %79

75:                                               ; preds = %47
  %76 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %2, align 8
  br label %152

79:                                               ; preds = %69, %63, %57, %53
  %80 = call i32 @e_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @TXCW, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ew32(i32 %81, i32 %82)
  %84 = load i32, i32* @CTRL, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ew32(i32 %84, i32 %85)
  %87 = call i32 (...) @E1000_WRITE_FLUSH()
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = call i32 @msleep(i32 1)
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %79
  %98 = load i32, i32* @CTRL, align 4
  %99 = call i32 @er32(i32 %98)
  %100 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %148

104:                                              ; preds = %97, %79
  %105 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %121, %104
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @LINK_UP_TIMEOUT, align 4
  %109 = sdiv i32 %108, 10
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = call i32 @msleep(i32 10)
  %113 = load i32, i32* @STATUS, align 4
  %114 = call i32 @er32(i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @E1000_STATUS_LU, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %124

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %106

124:                                              ; preds = %119, %106
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @LINK_UP_TIMEOUT, align 4
  %127 = sdiv i32 %126, 10
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %132 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %131, i32 0, i32 4
  store i32 1, i32* %132, align 8
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = call i64 @e1000_check_for_link(%struct.e1000_hw* %133)
  store i64 %134, i64* %9, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %139 = load i64, i64* %9, align 8
  store i64 %139, i64* %2, align 8
  br label %152

140:                                              ; preds = %129
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 4
  store i32 0, i32* %142, align 8
  br label %147

143:                                              ; preds = %124
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %145 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %144, i32 0, i32 4
  store i32 0, i32* %145, align 8
  %146 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %140
  br label %150

148:                                              ; preds = %97
  %149 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %147
  %151 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %151, i64* %2, align 8
  br label %152

152:                                              ; preds = %150, %137, %75, %45, %34
  %153 = load i64, i64* %2, align 8
  ret i64 %153
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_adjust_serdes_amplitude(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_set_vco_speed(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1000_check_for_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
