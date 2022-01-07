; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_load_channelgain_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_load_channelgain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@Configuration_Memory_Clear = common dso_local global i32 0, align 4
@CR_ALT_SOURCE = common dso_local global i32 0, align 4
@ni_gainlkup = common dso_local global i32** null, align 8
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CR_ALT_FILTER = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Config_FIFO_Bit = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Cal_Sel_Pos_Mask = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Cal_Sel_Neg_Mask = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Mode_Mux_Mask = common dso_local global i32 0, align 4
@MSeries_AO_Bypass_AO_Cal_Sel_Mask = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Dither_Bit = common dso_local global i32 0, align 4
@MSeries_AI_Bypass_Polarity_Bit = common dso_local global i32 0, align 4
@M_Offset_AI_Config_FIFO_Bypass = common dso_local global i32 0, align 4
@MSeries_AI_Config_Channel_Type_Differential_Bits = common dso_local global i32 0, align 4
@MSeries_AI_Config_Channel_Type_Common_Ref_Bits = common dso_local global i32 0, align 4
@MSeries_AI_Config_Channel_Type_Ground_Ref_Bits = common dso_local global i32 0, align 4
@MSeries_AI_Config_Last_Channel_Bit = common dso_local global i32 0, align 4
@MSeries_AI_Config_Dither_Bit = common dso_local global i32 0, align 4
@MSeries_AI_Config_Polarity_Bit = common dso_local global i32 0, align 4
@M_Offset_AI_Config_FIFO_Data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32*)* @ni_m_series_load_channelgain_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_m_series_load_channelgain_list(%struct.comedi_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %17, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = load i32, i32* @Configuration_Memory_Clear, align 4
  %21 = call i32 %18(%struct.comedi_device* %19, i32 1, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CR_ALT_SOURCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CR_CHAN(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CR_RANGE(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32**, i32*** @ni_gainlkup, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CR_ALT_FILTER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* @MSeries_AI_Bypass_Config_FIFO_Bit, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MSeries_AI_Bypass_Cal_Sel_Pos_Mask, align 4
  %60 = load i32, i32* @MSeries_AI_Bypass_Cal_Sel_Neg_Mask, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MSeries_AI_Bypass_Mode_Mux_Mask, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MSeries_AO_Bypass_AO_Cal_Sel_Mask, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %58, %65
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @MSeries_AI_Bypass_Gain_Bits(i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %28
  %76 = load i32, i32* @MSeries_AI_Bypass_Dither_Bit, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %28
  %80 = load i32, i32* @MSeries_AI_Bypass_Polarity_Bit, align 4
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @M_Offset_AI_Config_FIFO_Bypass, align 4
  %85 = call i32 @ni_writel(i32 %83, i32 %84)
  br label %89

86:                                               ; preds = %3
  %87 = load i32, i32* @M_Offset_AI_Config_FIFO_Bypass, align 4
  %88 = call i32 @ni_writel(i32 0, i32 %87)
  br label %89

89:                                               ; preds = %86, %79
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %187, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %190

94:                                               ; preds = %90
  store i32 0, i32* %15, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CR_CHAN(i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @CR_AREF(i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @CR_RANGE(i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CR_ALT_FILTER, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %12, align 4
  %122 = load i32**, i32*** @ni_gainlkup, align 8
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  switch i32 %137, label %151 [
    i32 130, label %138
    i32 131, label %142
    i32 129, label %146
    i32 128, label %150
  ]

138:                                              ; preds = %94
  %139 = load i32, i32* @MSeries_AI_Config_Channel_Type_Differential_Bits, align 4
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %15, align 4
  br label %151

142:                                              ; preds = %94
  %143 = load i32, i32* @MSeries_AI_Config_Channel_Type_Common_Ref_Bits, align 4
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %15, align 4
  br label %151

146:                                              ; preds = %94
  %147 = load i32, i32* @MSeries_AI_Config_Channel_Type_Ground_Ref_Bits, align 4
  %148 = load i32, i32* %15, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %15, align 4
  br label %151

150:                                              ; preds = %94
  br label %151

151:                                              ; preds = %94, %150, %146, %142, %138
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @MSeries_AI_Config_Channel_Bits(i32 %152)
  %154 = load i32, i32* %15, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @MSeries_AI_Config_Bank_Bits(i32 %156, i32 %157)
  %159 = load i32, i32* %15, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @MSeries_AI_Config_Gain_Bits(i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %5, align 4
  %167 = sub i32 %166, 1
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %151
  %170 = load i32, i32* @MSeries_AI_Config_Last_Channel_Bit, align 4
  %171 = load i32, i32* %15, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %169, %151
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* @MSeries_AI_Config_Dither_Bit, align 4
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %176, %173
  %181 = load i32, i32* @MSeries_AI_Config_Polarity_Bit, align 4
  %182 = load i32, i32* %15, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* @M_Offset_AI_Config_FIFO_Data, align 4
  %186 = call i32 @ni_writew(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %10, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %90

190:                                              ; preds = %90
  %191 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %192 = call i32 @ni_prime_channelgain_list(%struct.comedi_device* %191)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @MSeries_AI_Bypass_Gain_Bits(i32) #1

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @MSeries_AI_Config_Channel_Bits(i32) #1

declare dso_local i32 @MSeries_AI_Config_Bank_Bits(i32, i32) #1

declare dso_local i32 @MSeries_AI_Config_Gain_Bits(i32) #1

declare dso_local i32 @ni_writew(i32, i32) #1

declare dso_local i32 @ni_prime_channelgain_list(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
