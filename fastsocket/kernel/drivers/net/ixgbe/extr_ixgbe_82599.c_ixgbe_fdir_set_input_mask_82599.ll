; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_set_input_mask_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_set_input_mask_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%union.ixgbe_atr_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i64 }

@IXGBE_FDIRM_DIPv6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c" bucket hash should always be 0 in mask\0A\00", align 1
@IXGBE_FDIRM_POOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c" Error on vm pool mask\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_FDIRM_L4P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c" Error on src/dst port mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c" Error on flow type mask\0A\00", align 1
@IXGBE_FDIRM_VLANID = common dso_local global i32 0, align 4
@IXGBE_FDIRM_VLANP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c" Error on VLAN mask\0A\00", align 1
@IXGBE_FDIRM_FLEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c" Error on flexible byte mask\0A\00", align 1
@IXGBE_FDIRM = common dso_local global i32 0, align 4
@IXGBE_FDIRTCPM = common dso_local global i32 0, align 4
@IXGBE_FDIRUDPM = common dso_local global i32 0, align 4
@IXGBE_FDIRSIP4M = common dso_local global i32 0, align 4
@IXGBE_FDIRDIP4M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fdir_set_input_mask_82599(%struct.ixgbe_hw* %0, %union.ixgbe_atr_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %union.ixgbe_atr_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %5, align 8
  %8 = load i32, i32* @IXGBE_FDIRM_DIPv6, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %10 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = call i32 @hw_dbg(%struct.ixgbe_hw* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %19 = bitcast %union.ixgbe_atr_input* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 127
  switch i32 %22, label %28 [
    i32 0, label %23
    i32 127, label %27
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* @IXGBE_FDIRM_POOL, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %17, %23
  br label %32

28:                                               ; preds = %17
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = call i32 @hw_dbg(%struct.ixgbe_hw* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %31, i32* %3, align 4
  br label %139

32:                                               ; preds = %27
  %33 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %34 = bitcast %union.ixgbe_atr_input* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  switch i32 %37, label %59 [
    i32 0, label %38
    i32 128, label %58
  ]

38:                                               ; preds = %32
  %39 = load i32, i32* @IXGBE_FDIRM_L4P, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %43 = bitcast %union.ixgbe_atr_input* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %49 = bitcast %union.ixgbe_atr_input* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47, %38
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = call i32 @hw_dbg(%struct.ixgbe_hw* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %56, i32* %3, align 4
  br label %139

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %32, %57
  br label %63

59:                                               ; preds = %32
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %61 = call i32 @hw_dbg(%struct.ixgbe_hw* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %62, i32* %3, align 4
  br label %139

63:                                               ; preds = %58
  %64 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %65 = bitcast %union.ixgbe_atr_input* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ntohs(i32 %67)
  %69 = and i32 %68, 61439
  switch i32 %69, label %83 [
    i32 0, label %70
    i32 4095, label %74
    i32 57344, label %78
    i32 61439, label %82
  ]

70:                                               ; preds = %63
  %71 = load i32, i32* @IXGBE_FDIRM_VLANID, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %63, %70
  %75 = load i32, i32* @IXGBE_FDIRM_VLANP, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %87

78:                                               ; preds = %63
  %79 = load i32, i32* @IXGBE_FDIRM_VLANID, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %63, %78
  br label %87

83:                                               ; preds = %63
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %85 = call i32 @hw_dbg(%struct.ixgbe_hw* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %86, i32* %3, align 4
  br label %139

87:                                               ; preds = %82, %74
  %88 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %89 = bitcast %union.ixgbe_atr_input* %88 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 65535
  switch i32 %92, label %98 [
    i32 0, label %93
    i32 65535, label %97
  ]

93:                                               ; preds = %87
  %94 = load i32, i32* @IXGBE_FDIRM_FLEX, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %87, %93
  br label %102

98:                                               ; preds = %87
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %100 = call i32 @hw_dbg(%struct.ixgbe_hw* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %101, i32* %3, align 4
  br label %139

102:                                              ; preds = %97
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %104 = load i32, i32* @IXGBE_FDIRM, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %103, i32 %104, i32 %105)
  %107 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %108 = call i32 @ixgbe_get_fdirtcpm_82599(%union.ixgbe_atr_input* %107)
  store i32 %108, i32* %7, align 4
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %110 = load i32, i32* @IXGBE_FDIRTCPM, align 4
  %111 = load i32, i32* %7, align 4
  %112 = xor i32 %111, -1
  %113 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %109, i32 %110, i32 %112)
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %115 = load i32, i32* @IXGBE_FDIRUDPM, align 4
  %116 = load i32, i32* %7, align 4
  %117 = xor i32 %116, -1
  %118 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %114, i32 %115, i32 %117)
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %120 = load i32, i32* @IXGBE_FDIRSIP4M, align 4
  %121 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %122 = bitcast %union.ixgbe_atr_input* %121 to %struct.TYPE_2__*
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = xor i32 %126, -1
  %128 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %119, i32 %120, i32 %127)
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %130 = load i32, i32* @IXGBE_FDIRDIP4M, align 4
  %131 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %132 = bitcast %union.ixgbe_atr_input* %131 to %struct.TYPE_2__*
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, -1
  %138 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %129, i32 %130, i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %102, %98, %83, %59, %53, %28
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_get_fdirtcpm_82599(%union.ixgbe_atr_input*) #1

declare dso_local i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
