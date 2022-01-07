; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32 }

@STB0899_VSTATUS = common dso_local global i32 0, align 4
@VSTATUS_LOCKEDVIT = common dso_local global i32 0, align 4
@STB0899_NIRM = common dso_local global i32 0, align 4
@stb0899_cn_tab = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\0A\00", align 1
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@UWP_CNTRL1 = common dso_local global i32 0, align 4
@UWP_ESN0_QUANT = common dso_local global i32 0, align 4
@UWP_STAT2 = common dso_local global i32 0, align 4
@ESN0_EST = common dso_local global i32 0, align 4
@stb0899_quant_tab = common dso_local global i32 0, align 4
@stb0899_est_tab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb0899_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %16, align 8
  store %struct.stb0899_state* %17, %struct.stb0899_state** %6, align 8
  %18 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %19 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %18, i32 0, i32 2
  store %struct.stb0899_internal* %19, %struct.stb0899_internal** %7, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  %20 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %21 = load i32, i32* @STB0899_VSTATUS, align 4
  %22 = call i32 @stb0899_read_reg(%struct.stb0899_state* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %24 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %128 [
    i32 129, label %26
    i32 130, label %26
    i32 128, label %68
  ]

26:                                               ; preds = %2, %2
  %27 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %28 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i32, i32* @VSTATUS_LOCKEDVIT, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @STB0899_GETFIELD(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %38 = load i32, i32* @STB0899_NIRM, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %40 = call i32 @stb0899_read_regs(%struct.stb0899_state* %37, i32 %38, i32* %39, i32 2)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MAKEWORD16(i32 %42, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @stb0899_cn_tab, align 4
  %47 = load i32, i32* @stb0899_cn_tab, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @stb0899_table_lookup(i32 %46, i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %55 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FE_DEBUG, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %56, i32 %57, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %36, %31
  br label %67

67:                                               ; preds = %66, %26
  br label %136

68:                                               ; preds = %2
  %69 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %70 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %68
  %74 = load i32, i32* @STB0899_S2DEMOD, align 4
  %75 = load i32, i32* @UWP_CNTRL1, align 4
  %76 = call i32 @STB0899_READ_S2REG(i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* @UWP_ESN0_QUANT, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @STB0899_GETFIELD(i32 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @STB0899_S2DEMOD, align 4
  %81 = load i32, i32* @UWP_STAT2, align 4
  %82 = call i32 @STB0899_READ_S2REG(i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* @ESN0_EST, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @STB0899_GETFIELD(i32 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  store i32 301, i32* %8, align 4
  br label %114

89:                                               ; preds = %73
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 270, i32* %8, align 4
  br label %113

93:                                               ; preds = %89
  %94 = load i32, i32* @stb0899_quant_tab, align 4
  %95 = load i32, i32* @stb0899_quant_tab, align 4
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %9, align 4
  %99 = mul i32 %98, 100
  %100 = call i8* @stb0899_table_lookup(i32 %94, i32 %97, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @stb0899_est_tab, align 4
  %103 = load i32, i32* @stb0899_est_tab, align 4
  %104 = call i32 @ARRAY_SIZE(i32 %103)
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %11, align 4
  %107 = call i8* @stb0899_table_lookup(i32 %102, i32 %105, i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sub i32 %109, %110
  %112 = udiv i32 %111, 10
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %93, %92
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %118 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @FE_DEBUG, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %119, i32 %120, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %114, %68
  br label %136

128:                                              ; preds = %2
  %129 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %130 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @FE_DEBUG, align 4
  %133 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %131, i32 %132, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %137

136:                                              ; preds = %127, %67
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %128
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i8* @stb0899_table_lookup(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
