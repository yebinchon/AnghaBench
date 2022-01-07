; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_start_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_start_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.comedi_cmd, i32 }
%struct.comedi_cmd = type { i32, i32* }

@subpriv = common dso_local global %struct.TYPE_9__* null, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@CHANS_PER_PORT = common dso_local global i32 0, align 4
@PAGE_ENAB = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@REG_ENAB0 = common dso_local global i64 0, align 8
@PAGE_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcmuio_start_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_start_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.comedi_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* @COMEDI_CB_EOA, align 4
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  store i32 1, i32* %3, align 4
  br label %223

38:                                               ; preds = %21, %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.comedi_cmd* %42, %struct.comedi_cmd** %13, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %223

50:                                               ; preds = %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CHANS_PER_PORT, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CHANS_PER_PORT, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %130

73:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %126, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %129

80:                                               ; preds = %74
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CR_CHAN(i32 %87)
  %89 = shl i32 1, %88
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @CR_AREF(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %80
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @CR_RANGE(i32 %108)
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %101, %80
  %112 = phi i1 [ true, %80 ], [ %110, %101 ]
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @CR_CHAN(i32 %121)
  %123 = shl i32 %114, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %111
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %74

129:                                              ; preds = %74
  br label %130

130:                                              ; preds = %129, %50
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 1, %134
  %136 = sub nsw i32 %135, 1
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %136, %140
  %142 = load i32, i32* %6, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 8
  %148 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @PAGE_ENAB, align 4
  %151 = call i32 @switch_page(%struct.comedi_device* %148, i32 %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %218, %130
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %155, %156
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %221

159:                                              ; preds = %153
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %10, align 4
  %167 = sub nsw i32 %165, %166
  %168 = mul nsw i32 %167, 8
  %169 = add nsw i32 %164, %168
  %170 = lshr i32 %160, %169
  %171 = and i32 %170, 255
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** @subpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %10, align 4
  %179 = sub nsw i32 %177, %178
  %180 = mul nsw i32 %179, 8
  %181 = add nsw i32 %176, %180
  %182 = lshr i32 %172, %181
  %183 = and i32 %182, 255
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @REG_ENAB0, align 8
  %194 = add nsw i64 %192, %193
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %194, %196
  %198 = call i32 @outb(i32 %184, i64 %197)
  %199 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @PAGE_POL, align 4
  %202 = call i32 @switch_page(%struct.comedi_device* %199, i32 %200, i32 %201)
  %203 = load i32, i32* %15, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @REG_ENAB0, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %213, %215
  %217 = call i32 @outb(i32 %203, i64 %216)
  br label %218

218:                                              ; preds = %159
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %153

221:                                              ; preds = %153
  br label %222

222:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %49, %27
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i32 @switch_page(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
