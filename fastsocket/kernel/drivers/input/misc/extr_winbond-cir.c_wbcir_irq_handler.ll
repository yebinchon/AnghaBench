; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.wbcir_data = type { i32, i64, i32, i32*, i64 }

@wbcir_lock = common dso_local global i32 0, align 4
@WBCIR_BANK_0 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_EIR = common dso_local global i64 0, align 8
@WBCIR_IRQ_RX = common dso_local global i32 0, align 4
@WBCIR_IRQ_ERR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_RXDATA = common dso_local global i64 0, align 8
@WBCIR_MAX_IDLE_BYTES = common dso_local global i64 0, align 8
@WBCIR_RX_DISABLE = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_ASCR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_LSR = common dso_local global i64 0, align 8
@WBCIR_RX_AVAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"IRDATA:\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%08lX\0A\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4
@protocol = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wbcir_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca %struct.wbcir_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pnp_dev*
  store %struct.pnp_dev* %15, %struct.pnp_dev** %6, align 8
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %17 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %16)
  store %struct.wbcir_data* %17, %struct.wbcir_data** %7, align 8
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %19 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @wbcir_lock, i64 %20)
  %22 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %23 = load i32, i32* @WBCIR_BANK_0, align 4
  %24 = call i32 @wbcir_select_bank(%struct.wbcir_data* %22, i32 %23)
  %25 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %26 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WBCIR_REG_SP3_EIR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @inb(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %33 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @wbcir_lock, i64 %38)
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %176

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %48 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %172

55:                                               ; preds = %49
  %56 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %57 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WBCIR_REG_SP3_RXDATA, align 8
  %60 = add nsw i64 %58, %59
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %62 = call i32 @insb(i64 %60, i32* %61, i32 8)
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %93, %55
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 32
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @hweight8(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ugt i32 %73, 4
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %77 = call i32 @add_irdata_bit(%struct.wbcir_data* %76, i32 0)
  br label %81

78:                                               ; preds = %67
  %79 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %80 = call i32 @add_irdata_bit(%struct.wbcir_data* %79, i32 1)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %86 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %92

89:                                               ; preds = %81
  %90 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %91 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %63

96:                                               ; preds = %63
  %97 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %98 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @WBCIR_MAX_IDLE_BYTES, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %171

102:                                              ; preds = %96
  %103 = load i32, i32* @WBCIR_RX_DISABLE, align 4
  %104 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %105 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outb(i32 %103, i64 %108)
  br label %110

110:                                              ; preds = %120, %102
  %111 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %112 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @WBCIR_REG_SP3_LSR, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @inb(i64 %115)
  %117 = load i32, i32* @WBCIR_RX_AVAIL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %122 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @WBCIR_REG_SP3_RXDATA, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @inb(i64 %125)
  br label %110

127:                                              ; preds = %110
  %128 = load %struct.device*, %struct.device** %8, align 8
  %129 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %148, %127
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %133 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %130
  %137 = load %struct.device*, %struct.device** %8, align 8
  %138 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %139 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @BITS_PER_LONG, align 4
  %143 = sdiv i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* @BITS_PER_LONG, align 4
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %12, align 4
  br label %130

152:                                              ; preds = %130
  %153 = load i32, i32* @protocol, align 4
  switch i32 %153, label %166 [
    i32 129, label %154
    i32 128, label %158
    i32 130, label %162
  ]

154:                                              ; preds = %152
  %155 = load %struct.device*, %struct.device** %8, align 8
  %156 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %157 = call i32 @wbcir_parse_rc5(%struct.device* %155, %struct.wbcir_data* %156)
  br label %166

158:                                              ; preds = %152
  %159 = load %struct.device*, %struct.device** %8, align 8
  %160 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %161 = call i32 @wbcir_parse_rc6(%struct.device* %159, %struct.wbcir_data* %160)
  br label %166

162:                                              ; preds = %152
  %163 = load %struct.device*, %struct.device** %8, align 8
  %164 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %165 = call i32 @wbcir_parse_nec(%struct.device* %163, %struct.wbcir_data* %164)
  br label %166

166:                                              ; preds = %152, %162, %158, %154
  %167 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %168 = call i32 @wbcir_reset_irdata(%struct.wbcir_data* %167)
  %169 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  %170 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %166, %96
  br label %172

172:                                              ; preds = %171, %54
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* @wbcir_lock, i64 %173)
  %175 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %37
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wbcir_select_bank(%struct.wbcir_data*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @insb(i64, i32*, i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @add_irdata_bit(%struct.wbcir_data*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @wbcir_parse_rc5(%struct.device*, %struct.wbcir_data*) #1

declare dso_local i32 @wbcir_parse_rc6(%struct.device*, %struct.wbcir_data*) #1

declare dso_local i32 @wbcir_parse_nec(%struct.device*, %struct.wbcir_data*) #1

declare dso_local i32 @wbcir_reset_irdata(%struct.wbcir_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
