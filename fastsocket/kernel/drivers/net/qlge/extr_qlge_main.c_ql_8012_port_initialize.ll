; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_8012_port_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_8012_port_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Another function has the semaphore, so wait for the port init bit to come ready.\0A\00", align 1
@STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Port initialize timed out.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Got xgmac semaphore!.\0A\00", align 1
@GLOBAL_CFG = common dso_local global i32 0, align 4
@GLOBAL_CFG_RESET = common dso_local global i32 0, align 4
@GLOBAL_CFG_JUMBO = common dso_local global i32 0, align 4
@GLOBAL_CFG_TX_STAT_EN = common dso_local global i32 0, align 4
@GLOBAL_CFG_RX_STAT_EN = common dso_local global i32 0, align 4
@TX_CFG = common dso_local global i32 0, align 4
@TX_CFG_RESET = common dso_local global i32 0, align 4
@TX_CFG_EN = common dso_local global i32 0, align 4
@RX_CFG = common dso_local global i32 0, align 4
@RX_CFG_RESET = common dso_local global i32 0, align 4
@RX_CFG_EN = common dso_local global i32 0, align 4
@MAC_TX_PARAMS = common dso_local global i32 0, align 4
@MAC_TX_PARAMS_JUMBO = common dso_local global i32 0, align 4
@MAC_RX_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_8012_port_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_8012_port_initialize(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ql_sem_trylock(%struct.ql_adapter* %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %14 = load i32, i32* @link, align 4
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_info(%struct.ql_adapter* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load i32, i32* @STS, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %19, i32 %20, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %12
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = load i32, i32* @link, align 4
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netif_crit(%struct.ql_adapter* %28, i32 %29, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %27, %12
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %160

36:                                               ; preds = %1
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = load i32, i32* @link, align 4
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netif_info(%struct.ql_adapter* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = load i32, i32* @GLOBAL_CFG, align 4
  %45 = call i32 @ql_read_xgmac_reg(%struct.ql_adapter* %43, i32 %44, i32* %5)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %153

49:                                               ; preds = %36
  %50 = load i32, i32* @GLOBAL_CFG_RESET, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %54 = load i32, i32* @GLOBAL_CFG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ql_write_xgmac_reg(%struct.ql_adapter* %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %153

60:                                               ; preds = %49
  %61 = load i32, i32* @GLOBAL_CFG_RESET, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @GLOBAL_CFG_JUMBO, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @GLOBAL_CFG_TX_STAT_EN, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @GLOBAL_CFG_RX_STAT_EN, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %75 = load i32, i32* @GLOBAL_CFG, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ql_write_xgmac_reg(%struct.ql_adapter* %74, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  br label %153

81:                                               ; preds = %60
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %83 = load i32, i32* @TX_CFG, align 4
  %84 = call i32 @ql_read_xgmac_reg(%struct.ql_adapter* %82, i32 %83, i32* %5)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %153

88:                                               ; preds = %81
  %89 = load i32, i32* @TX_CFG_RESET, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @TX_CFG_EN, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %97 = load i32, i32* @TX_CFG, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ql_write_xgmac_reg(%struct.ql_adapter* %96, i32 %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %153

103:                                              ; preds = %88
  %104 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %105 = load i32, i32* @RX_CFG, align 4
  %106 = call i32 @ql_read_xgmac_reg(%struct.ql_adapter* %104, i32 %105, i32* %5)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %153

110:                                              ; preds = %103
  %111 = load i32, i32* @RX_CFG_RESET, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* @RX_CFG_EN, align 4
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  %118 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %119 = load i32, i32* @RX_CFG, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @ql_write_xgmac_reg(%struct.ql_adapter* %118, i32 %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %153

125:                                              ; preds = %110
  %126 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %127 = load i32, i32* @MAC_TX_PARAMS, align 4
  %128 = load i32, i32* @MAC_TX_PARAMS_JUMBO, align 4
  %129 = or i32 %128, 629145600
  %130 = call i32 @ql_write_xgmac_reg(%struct.ql_adapter* %126, i32 %127, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %153

134:                                              ; preds = %125
  %135 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %136 = load i32, i32* @MAC_RX_PARAMS, align 4
  %137 = call i32 @ql_write_xgmac_reg(%struct.ql_adapter* %135, i32 %136, i32 9600)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %153

141:                                              ; preds = %134
  %142 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %143 = load i32, i32* @STS, align 4
  %144 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 16
  %148 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %147, %150
  %152 = call i32 @ql_write32(%struct.ql_adapter* %142, i32 %143, i32 %151)
  br label %153

153:                                              ; preds = %141, %140, %133, %124, %109, %102, %87, %80, %59, %48
  %154 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %155 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ql_sem_unlock(%struct.ql_adapter* %154, i32 %157)
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %153, %34
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @ql_sem_trylock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_wait_reg_rdy(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @netif_crit(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_read_xgmac_reg(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_write_xgmac_reg(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
