; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_set_imr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_set_imr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64 }

@AR5K_INT_GLOBAL = common dso_local global i32 0, align 4
@AR5K_IER_DISABLE = common dso_local global i32 0, align 4
@AR5K_IER = common dso_local global i32 0, align 4
@AR5K_INT_COMMON = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_SIMR2 = common dso_local global i32 0, align 4
@AR5K_SIMR2_QCU_TXURN = common dso_local global i32 0, align 4
@AR5K_INT_FATAL = common dso_local global i32 0, align 4
@AR5K_IMR_HIUERR = common dso_local global i32 0, align 4
@AR5K_SIMR2_MCABT = common dso_local global i32 0, align 4
@AR5K_SIMR2_SSERR = common dso_local global i32 0, align 4
@AR5K_SIMR2_DPERR = common dso_local global i32 0, align 4
@AR5K_INT_TIM = common dso_local global i32 0, align 4
@AR5K_IMR_TIM = common dso_local global i32 0, align 4
@AR5K_SISR2_TIM = common dso_local global i32 0, align 4
@AR5K_INT_DTIM = common dso_local global i32 0, align 4
@AR5K_SISR2_DTIM = common dso_local global i32 0, align 4
@AR5K_INT_DTIM_SYNC = common dso_local global i32 0, align 4
@AR5K_SISR2_DTIM_SYNC = common dso_local global i32 0, align 4
@AR5K_INT_BCN_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_SISR2_BCN_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_INT_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_SISR2_CAB_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_INT_BNR = common dso_local global i32 0, align 4
@AR5K_PIMR = common dso_local global i32 0, align 4
@AR5K_IMR_SSERR = common dso_local global i32 0, align 4
@AR5K_IMR_MCABT = common dso_local global i32 0, align 4
@AR5K_IMR_DPERR = common dso_local global i32 0, align 4
@AR5K_IMR = common dso_local global i32 0, align 4
@AR5K_INT_RXNOFRM = common dso_local global i32 0, align 4
@AR5K_RXNOFRM = common dso_local global i32 0, align 4
@AR5K_IER_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_imr(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AR5K_INT_GLOBAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = load i32, i32* @AR5K_IER_DISABLE, align 4
  %18 = load i32, i32* @AR5K_IER, align 4
  %19 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %16, i32 %17, i32 %18)
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %21 = load i32, i32* @AR5K_IER, align 4
  %22 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AR5K_INT_COMMON, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AR5K_AR5210, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %125

32:                                               ; preds = %23
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = load i32, i32* @AR5K_SIMR2, align 4
  %35 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %33, i32 %34)
  %36 = load i32, i32* @AR5K_SIMR2_QCU_TXURN, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AR5K_INT_FATAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32, i32* @AR5K_IMR_HIUERR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @AR5K_SIMR2_MCABT, align 4
  %47 = load i32, i32* @AR5K_SIMR2_SSERR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AR5K_SIMR2_DPERR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %42, %32
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @AR5K_INT_TIM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @AR5K_IMR_TIM, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @AR5K_INT_TIM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @AR5K_SISR2_TIM, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @AR5K_INT_DTIM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @AR5K_SISR2_DTIM, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @AR5K_INT_DTIM_SYNC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @AR5K_SISR2_DTIM_SYNC, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @AR5K_INT_BCN_TIMEOUT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @AR5K_SISR2_BCN_TIMEOUT, align 4
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @AR5K_INT_CAB_TIMEOUT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @AR5K_SISR2_CAB_TIMEOUT, align 4
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @AR5K_INT_BNR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @AR5K_INT_BNR, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @AR5K_PIMR, align 4
  %120 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %117, i32 %118, i32 %119)
  %121 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @AR5K_SIMR2, align 4
  %124 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %121, i32 %122, i32 %123)
  br label %145

125:                                              ; preds = %23
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @AR5K_INT_FATAL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load i32, i32* @AR5K_IMR_SSERR, align 4
  %132 = load i32, i32* @AR5K_IMR_MCABT, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @AR5K_IMR_HIUERR, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @AR5K_IMR_DPERR, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %130, %125
  %141 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @AR5K_IMR, align 4
  %144 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %116
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @AR5K_INT_RXNOFRM, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %152 = load i32, i32* @AR5K_RXNOFRM, align 4
  %153 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %151, i32 0, i32 %152)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %157 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @AR5K_INT_GLOBAL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %154
  %163 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %164 = load i32, i32* @AR5K_IER_ENABLE, align 4
  %165 = load i32, i32* @AR5K_IER, align 4
  %166 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %163, i32 %164, i32 %165)
  %167 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %168 = load i32, i32* @AR5K_IER, align 4
  %169 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %167, i32 %168)
  br label %170

170:                                              ; preds = %162, %154
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
