; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ai_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ai_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i64, i64, i32, i64, %struct.timeval }
%struct.timeval = type { i32, i64 }
%struct.comedi_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @waveform_ai_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waveform_ai_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %3, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %4, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 1
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %5, align 8
  %20 = call i32 @do_gettimeofday(%struct.timeval* %10)
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %22, %26
  %28 = mul nsw i32 1000000, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %29, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %32, %36
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 8
  %40 = bitcast %struct.timeval* %39 to i8*
  %41 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %44, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = udiv i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = urem i64 %56, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %64 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %146, %1
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %149

69:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %118, %69
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %70
  %77 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CR_CHAN(i32 %87)
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @CR_RANGE(i32 %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = zext i32 %99 to i64
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = mul i64 %102, %105
  %107 = add i64 %100, %106
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = mul i32 %108, %111
  %113 = zext i32 %112 to i64
  %114 = add i64 %107, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @fake_waveform(%struct.comedi_device* %80, i32 %88, i32 %96, i32 %115)
  %117 = call i32 @cfc_write_to_buffer(%struct.TYPE_5__* %79, i32 %116)
  br label %118

118:                                              ; preds = %76
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %70

121:                                              ; preds = %70
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TRIG_COUNT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %121
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load i32, i32* @COMEDI_CB_EOA, align 4
  %141 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %142 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %149

145:                                              ; preds = %131, %121
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %6, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %65

149:                                              ; preds = %139, %65
  %150 = load i64, i64* %8, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = zext i32 %153 to i64
  %155 = add i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = zext i32 %162 to i64
  %164 = urem i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 8
  %166 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %167 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @COMEDI_CB_EOA, align 4
  %170 = and i32 %168, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %149
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 7
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 6
  %180 = load i64, i64* @jiffies, align 8
  %181 = add nsw i64 %180, 1
  %182 = call i32 @mod_timer(i32* %179, i64 %181)
  br label %187

183:                                              ; preds = %172, %149
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 6
  %186 = call i32 @del_timer(i32* %185)
  br label %187

187:                                              ; preds = %183, %177
  %188 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %189 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %190 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %189, i32 0, i32 0
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = call i32 @comedi_event(%struct.comedi_device* %188, %struct.TYPE_5__* %191)
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfc_write_to_buffer(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fake_waveform(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
