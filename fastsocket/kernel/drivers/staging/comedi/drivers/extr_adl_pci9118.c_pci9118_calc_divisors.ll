; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_calc_divisors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_calc_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [78 x i8] c"adl_pci9118 EDBG: BGN: pci9118_calc_divisors(%d,%d,.,%u,%u,%u,%d,.,.,,%u,%u)\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"OSC base=%u div1=%u div2=%u timer1=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"1 div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"2 div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"3 div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"4 div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"5 div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"6 div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"7 div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"OSC base=%u div1=%u div2=%u timer1=%u timer2=%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"adl_pci9118 EDBG: END: pci9118_calc_divisors(%u,%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32*, i32, i32, i32*, i32*, i8, i32)* @pci9118_calc_divisors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_calc_divisors(i8 signext %0, %struct.comedi_device* %1, %struct.comedi_subdevice* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32* %7, i32* %8, i8 signext %9, i32 %10) #0 {
  %12 = alloca i8, align 1
  %13 = alloca %struct.comedi_device*, align 8
  %14 = alloca %struct.comedi_subdevice*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  store i8 %0, i8* %12, align 1
  store %struct.comedi_device* %1, %struct.comedi_device** %13, align 8
  store %struct.comedi_subdevice* %2, %struct.comedi_subdevice** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i8 %9, i8* %21, align 1
  store i32 %10, i32* %22, align 4
  %23 = load i8, i8* %12, align 1
  %24 = sext i8 %23 to i32
  %25 = load %struct.comedi_device*, %struct.comedi_device** %13, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i8, i8* %21, align 1
  %35 = sext i8 %34 to i32
  %36 = load i32, i32* %22, align 4
  %37 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %29, i32 %31, i32 %32, i32 %33, i32 %35, i32 %36)
  %38 = load i8, i8* %12, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %237 [
    i32 1, label %40
    i32 4, label %40
    i32 2, label %73
  ]

40:                                               ; preds = %11, %11
  %41 = load i32*, i32** %16, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %16, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @i8253_cascade_ns_to_timer(i32 %55, i32* %56, i32* %57, i32* %58, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %20, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %67, i32 %69, i32 %71)
  br label %237

73:                                               ; preds = %11
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %16, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %20, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %89, i32 %91, i32 %93)
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = udiv i32 %96, %99
  %101 = load i32*, i32** %19, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %20, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %105, i32 %107, i32 %109)
  %111 = load i32*, i32** %19, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %85
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %19, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %85
  %123 = load i32*, i32** %19, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %20, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %15, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %126, i32 %128, i32 %130)
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = udiv i32 %133, %136
  %138 = load i32*, i32** %20, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %20, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %142, i32 %144, i32 %146)
  %148 = load i32*, i32** %20, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %19, align 8
  %151 = load i32, i32* %150, align 4
  %152 = udiv i32 %149, %151
  %153 = load i32*, i32** %20, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32*, i32** %19, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %20, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %16, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %155, i32 %157, i32 %159, i32 %161)
  %163 = load i32*, i32** %20, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %122
  %168 = load i32, i32* %18, align 4
  %169 = load i32*, i32** %20, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %122
  %171 = load i32*, i32** %19, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %16, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %172, i32 %174, i32 %176, i32 %178)
  %180 = load i32*, i32** %19, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = mul i32 %181, %184
  %186 = load i32*, i32** %16, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i8, i8* %21, align 1
  %188 = sext i8 %187 to i32
  %189 = load i32, i32* %22, align 4
  %190 = icmp eq i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %170
  %195 = load i32*, i32** %20, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 2
  %199 = icmp ult i32 %196, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, 2
  %203 = load i32*, i32** %20, align 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %200, %194
  br label %205

205:                                              ; preds = %204, %170
  %206 = load i32*, i32** %19, align 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %20, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %16, align 8
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %207, i32 %209, i32 %211, i32 %213)
  %215 = load i32*, i32** %19, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %20, align 8
  %218 = load i32, i32* %217, align 4
  %219 = mul i32 %216, %218
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = mul i32 %219, %222
  %224 = load i32*, i32** %15, align 8
  store i32 %223, i32* %224, align 4
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %19, align 8
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %20, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %15, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %16, align 8
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %227, i32 %229, i32 %231, i32 %233, i32 %235)
  br label %237

237:                                              ; preds = %11, %205, %52
  %238 = load i32*, i32** %19, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %20, align 8
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %239, i32 %241)
  ret void
}

declare dso_local i32 @DPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
