; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_adc_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_adc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i32 }

@LABPC_TIMER_BASE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @labpc_adc_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_adc_timing(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  store i32 65536, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %11 = call i32 @labpc_ai_convert_period(%struct.comedi_cmd* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %152

13:                                               ; preds = %2
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %15 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %152

17:                                               ; preds = %13
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %19 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %18)
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @LABPC_TIMER_BASE, align 4
  %22 = mul nsw i32 %21, 65536
  %23 = sdiv i32 %20, %22
  %24 = add nsw i32 %23, 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 2, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %17
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 65536
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 65536, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* @LABPC_TIMER_BASE, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %53 [
    i32 129, label %54
    i32 128, label %73
    i32 130, label %92
  ]

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %42, %53
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %56 = call i32 @labpc_ai_convert_period(%struct.comedi_cmd* %55)
  %57 = load i32, i32* %7, align 4
  %58 = udiv i32 %57, 2
  %59 = add i32 %56, %58
  %60 = load i32, i32* %7, align 4
  %61 = udiv i32 %59, %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %65 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %64)
  %66 = load i32, i32* %7, align 4
  %67 = udiv i32 %66, 2
  %68 = add i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = udiv i32 %68, %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %105

73:                                               ; preds = %42
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %75 = call i32 @labpc_ai_convert_period(%struct.comedi_cmd* %74)
  %76 = load i32, i32* %7, align 4
  %77 = sub i32 %76, 1
  %78 = add i32 %75, %77
  %79 = load i32, i32* %7, align 4
  %80 = udiv i32 %78, %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %84 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %83)
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, 1
  %87 = add i32 %84, %86
  %88 = load i32, i32* %7, align 4
  %89 = udiv i32 %87, %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %105

92:                                               ; preds = %42
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %94 = call i32 @labpc_ai_convert_period(%struct.comedi_cmd* %93)
  %95 = load i32, i32* %7, align 4
  %96 = udiv i32 %94, %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %100 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %99)
  %101 = load i32, i32* %7, align 4
  %102 = udiv i32 %100, %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %92, %73, %54
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ult i32 %108, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 2, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ugt i32 %116, 65536
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 65536, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ult i32 %124, 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i32 2, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ugt i32 %132, 65536
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  store i32 65536, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul i32 %139, %142
  %144 = call i32 @labpc_set_ai_convert_period(%struct.comedi_cmd* %138, i32 %143)
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = mul i32 %146, %149
  %151 = call i32 @labpc_set_ai_scan_period(%struct.comedi_cmd* %145, i32 %150)
  br label %196

152:                                              ; preds = %13, %2
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %154 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %158 = call i32 @labpc_ai_scan_period(%struct.comedi_cmd* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* @LABPC_TIMER_BASE, align 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %165 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %168 = and i32 %166, %167
  %169 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %159, i32* %161, i32* %163, i32* %8, i32 %168)
  %170 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @labpc_set_ai_scan_period(%struct.comedi_cmd* %170, i32 %171)
  br label %195

173:                                              ; preds = %152
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %175 = call i32 @labpc_ai_convert_period(%struct.comedi_cmd* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %173
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %179 = call i32 @labpc_ai_convert_period(%struct.comedi_cmd* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* @LABPC_TIMER_BASE, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %186 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %189 = and i32 %187, %188
  %190 = call i32 @i8253_cascade_ns_to_timer_2div(i32 %180, i32* %182, i32* %184, i32* %9, i32 %189)
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @labpc_set_ai_convert_period(%struct.comedi_cmd* %191, i32 %192)
  br label %194

194:                                              ; preds = %177, %173
  br label %195

195:                                              ; preds = %194, %156
  br label %196

196:                                              ; preds = %195, %137
  ret void
}

declare dso_local i32 @labpc_ai_convert_period(%struct.comedi_cmd*) #1

declare dso_local i32 @labpc_ai_scan_period(%struct.comedi_cmd*) #1

declare dso_local i32 @labpc_set_ai_convert_period(%struct.comedi_cmd*, i32) #1

declare dso_local i32 @labpc_set_ai_scan_period(%struct.comedi_cmd*, i32) #1

declare dso_local i32 @i8253_cascade_ns_to_timer_2div(i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
