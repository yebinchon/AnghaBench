; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_setup_transceiver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_setup_transceiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_cb = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Basic transceiver setup error.\00", align 1
@MCS_MODE_REG = common dso_local global i32 0, align 4
@MCS_DRIVER = common dso_local global i32 0, align 4
@MCS_MINRXPW_REG = common dso_local global i32 0, align 4
@MCS_FIR = common dso_local global i32 0, align 4
@MCS_SIR16US = common dso_local global i32 0, align 4
@MCS_BBTG = common dso_local global i32 0, align 4
@MCS_ASK = common dso_local global i32 0, align 4
@MCS_SPEED_MASK = common dso_local global i32 0, align 4
@MCS_SPEED_9600 = common dso_local global i32 0, align 4
@MCS_PLLPWDN = common dso_local global i32 0, align 4
@MCS_DTD = common dso_local global i32 0, align 4
@MCS_SIPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"transceiver model specific setup error.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unknown transceiver type: %d\0A\00", align 1
@MCS_XCVR_REG = common dso_local global i32 0, align 4
@MCS_RXFAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"transceiver reset.\00", align 1
@MCS_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcs_cb*)* @mcs_setup_transceiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_setup_transceiver(%struct.mcs_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcs_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mcs_cb* %0, %struct.mcs_cb** %3, align 8
  store i32 0, i32* %4, align 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %8 = load i32, i32* @MCS_MODE_REG, align 4
  %9 = call i32 @mcs_get_reg(%struct.mcs_cb* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %187

16:                                               ; preds = %1
  %17 = load i32, i32* @MCS_DRIVER, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %21 = load i32, i32* @MCS_MODE_REG, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mcs_set_reg(%struct.mcs_cb* %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %187

28:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  %29 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %30 = load i32, i32* @MCS_MINRXPW_REG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mcs_set_reg(%struct.mcs_cb* %29, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %187

37:                                               ; preds = %28
  %38 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %39 = load i32, i32* @MCS_MODE_REG, align 4
  %40 = call i32 @mcs_get_reg(%struct.mcs_cb* %38, i32 %39, i32* %5)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 2
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %187

47:                                               ; preds = %37
  %48 = load i32, i32* @MCS_FIR, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %53 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @MCS_SIR16US, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %65

60:                                               ; preds = %47
  %61 = load i32, i32* @MCS_SIR16US, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* @MCS_BBTG, align 4
  %67 = load i32, i32* @MCS_ASK, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @MCS_SPEED_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @MCS_SPEED_9600, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %80 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %79, i32 0, i32 0
  store i32 9600, i32* %80, align 8
  %81 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %82 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @MCS_PLLPWDN, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @MCS_DTD, align 4
  %88 = load i32, i32* @MCS_SIPEN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %93 = load i32, i32* @MCS_MODE_REG, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @mcs_set_reg(%struct.mcs_cb* %92, i32 %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %65
  br label %187

100:                                              ; preds = %65
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %101 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %102 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %113 [
    i32 128, label %104
    i32 129, label %107
    i32 130, label %110
  ]

104:                                              ; preds = %100
  %105 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %106 = call i32 @mcs_setup_transceiver_vishay(%struct.mcs_cb* %105)
  store i32 %106, i32* %4, align 4
  br label %118

107:                                              ; preds = %100
  %108 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %109 = call i32 @mcs_setup_transceiver_sharp(%struct.mcs_cb* %108)
  store i32 %109, i32* %4, align 4
  br label %118

110:                                              ; preds = %100
  %111 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %112 = call i32 @mcs_setup_transceiver_agilent(%struct.mcs_cb* %111)
  store i32 %112, i32* %4, align 4
  br label %118

113:                                              ; preds = %100
  %114 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %115 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @IRDA_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  store i32 1, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %110, %107, %104
  %119 = load i32, i32* %4, align 4
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %187

123:                                              ; preds = %118
  %124 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %125 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 129
  br i1 %127, label %128, label %162

128:                                              ; preds = %123
  %129 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %130 = load i32, i32* @MCS_XCVR_REG, align 4
  %131 = call i32 @mcs_get_reg(%struct.mcs_cb* %129, i32 %130, i32* %5)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 2
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %187

138:                                              ; preds = %128
  %139 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %140 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @MCS_RXFAST, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %152

147:                                              ; preds = %138
  %148 = load i32, i32* @MCS_RXFAST, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %147, %143
  %153 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %154 = load i32, i32* @MCS_XCVR_REG, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @mcs_set_reg(%struct.mcs_cb* %153, i32 %154, i32 %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %187

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %123
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %163 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %164 = load i32, i32* @MCS_MODE_REG, align 4
  %165 = call i32 @mcs_get_reg(%struct.mcs_cb* %163, i32 %164, i32* %5)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 2
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %187

172:                                              ; preds = %162
  %173 = load i32, i32* @MCS_RESET, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %5, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %5, align 4
  %177 = load %struct.mcs_cb*, %struct.mcs_cb** %3, align 8
  %178 = load i32, i32* @MCS_MODE_REG, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @mcs_set_reg(%struct.mcs_cb* %177, i32 %178, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %172
  br label %187

185:                                              ; preds = %172
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  br label %191

187:                                              ; preds = %184, %171, %160, %137, %122, %99, %46, %36, %27, %15
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 @IRDA_ERROR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %188)
  %190 = load i32, i32* %4, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %185
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @mcs_get_reg(%struct.mcs_cb*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mcs_set_reg(%struct.mcs_cb*, i32, i32) #1

declare dso_local i32 @mcs_setup_transceiver_vishay(%struct.mcs_cb*) #1

declare dso_local i32 @mcs_setup_transceiver_sharp(%struct.mcs_cb*) #1

declare dso_local i32 @mcs_setup_transceiver_agilent(%struct.mcs_cb*) #1

declare dso_local i32 @IRDA_WARNING(i8*, i32) #1

declare dso_local i32 @IRDA_ERROR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
