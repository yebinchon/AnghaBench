; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_chk_transition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_chk_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_sp_obj = type { i32, i32, i64 }
%struct.bnx2x_func_state_params = type { i32, i64 }

@BNX2X_F_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BNX2X_F_CMD_HW_INIT = common dso_local global i32 0, align 4
@BNX2X_F_CMD_START = common dso_local global i32 0, align 4
@BNX2X_F_CMD_HW_RESET = common dso_local global i32 0, align 4
@BNX2X_F_CMD_STOP = common dso_local global i32 0, align 4
@BNX2X_F_CMD_AFEX_UPDATE = common dso_local global i32 0, align 4
@BNX2X_F_CMD_AFEX_VIFLISTS = common dso_local global i32 0, align 4
@BNX2X_F_CMD_SWITCH_UPDATE = common dso_local global i32 0, align 4
@BNX2X_F_CMD_TX_STOP = common dso_local global i32 0, align 4
@BNX2X_F_CMD_TX_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown state: %d\0A\00", align 1
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Good function state transition: %d(%d)->%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Bad function state transition request: %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_state_params*)* @bnx2x_func_chk_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_chk_transition(%struct.bnx2x* %0, %struct.bnx2x_func_sp_obj* %1, %struct.bnx2x_func_state_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %7 = alloca %struct.bnx2x_func_state_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_func_sp_obj* %1, %struct.bnx2x_func_sp_obj** %6, align 8
  store %struct.bnx2x_func_state_params* %2, %struct.bnx2x_func_state_params** %7, align 8
  %11 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %12 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @BNX2X_F_STATE_MAX, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %19 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %25 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @BNX2X_F_STATE_MAX, align 4
  %27 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %3
  %30 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %146

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %123 [
    i32 130, label %39
    i32 131, label %45
    i32 129, label %57
    i32 128, label %105
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @BNX2X_F_CMD_HW_INIT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 131, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %39
  br label %126

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @BNX2X_F_CMD_START, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 129, i32* %9, align 4
  br label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @BNX2X_F_CMD_HW_RESET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 130, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %50
  br label %56

56:                                               ; preds = %55, %49
  br label %126

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @BNX2X_F_CMD_STOP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 131, i32* %9, align 4
  br label %104

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @BNX2X_F_CMD_AFEX_UPDATE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @BNX2X_F_CMD_STOP, align 4
  %68 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %69 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %68, i32 0, i32 2
  %70 = call i64 @test_bit(i32 %67, i64* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 129, i32* %9, align 4
  br label %103

73:                                               ; preds = %66, %62
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @BNX2X_F_CMD_AFEX_VIFLISTS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32, i32* @BNX2X_F_CMD_STOP, align 4
  %79 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %80 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %79, i32 0, i32 2
  %81 = call i64 @test_bit(i32 %78, i64* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store i32 129, i32* %9, align 4
  br label %102

84:                                               ; preds = %77, %73
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @BNX2X_F_CMD_SWITCH_UPDATE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* @BNX2X_F_CMD_STOP, align 4
  %90 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %91 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %90, i32 0, i32 2
  %92 = call i64 @test_bit(i32 %89, i64* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 129, i32* %9, align 4
  br label %101

95:                                               ; preds = %88, %84
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @BNX2X_F_CMD_TX_STOP, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 128, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %95
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %72
  br label %104

104:                                              ; preds = %103, %61
  br label %126

105:                                              ; preds = %37
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @BNX2X_F_CMD_SWITCH_UPDATE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i32, i32* @BNX2X_F_CMD_STOP, align 4
  %111 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %112 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %111, i32 0, i32 2
  %113 = call i64 @test_bit(i32 %110, i64* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store i32 128, i32* %9, align 4
  br label %122

116:                                              ; preds = %109, %105
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @BNX2X_F_CMD_TX_START, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 129, i32* %9, align 4
  br label %121

121:                                              ; preds = %120, %116
  br label %122

122:                                              ; preds = %121, %115
  br label %126

123:                                              ; preds = %37
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %122, %104, %56, %44
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @BNX2X_F_STATE_MAX, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* @BNX2X_MSG_SP, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %138 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  store i32 0, i32* %4, align 4
  br label %146

139:                                              ; preds = %126
  %140 = load i32, i32* @BNX2X_MSG_SP, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %140, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %139, %130, %34
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
