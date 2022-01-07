; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_SetInputFilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_SetInputFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_12__* null, align 8
@APCI1710_INCREMENTAL_COUNTER = common dso_local global i32 0, align 4
@APCI1710_30MHZ = common dso_local global i8 0, align 1
@APCI1710_33MHZ = common dso_local global i8 0, align 1
@APCI1710_40MHZ = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"40MHz quartz not on board\0A\00", align 1
@APCI1710_ENABLE_40MHZ_FILTER = common dso_local global i32 0, align 4
@APCI1710_DISABLE_40MHZ_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"The selected filter value is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"The selected PCI input clock is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"The module is not a counter module\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_SetInputFilter(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %231

14:                                               ; preds = %4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 4294901760
  %25 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %228

28:                                               ; preds = %14
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65535
  %38 = icmp sge i32 %37, 12597
  br i1 %38, label %39, label %225

39:                                               ; preds = %28
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @APCI1710_30MHZ, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @APCI1710_33MHZ, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @APCI1710_40MHZ, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %222

57:                                               ; preds = %51, %45, %39
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %219

61:                                               ; preds = %57
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @APCI1710_40MHZ, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 36
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = mul nsw i32 64, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %72, %76
  %78 = call i32 @inl(i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %67
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %218

88:                                               ; preds = %85
  %89 = load i8, i8* %7, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @APCI1710_40MHZ, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %88
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i8, i8* %6, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @APCI1710_ENABLE_40MHZ_FILTER, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i8, i8* %6, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %107, i32* %117, align 4
  br label %142

118:                                              ; preds = %88
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load i8, i8* %6, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @APCI1710_DISABLE_40MHZ_FILTER, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i8, i8* %6, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %131, i32* %141, align 4
  br label %142

142:                                              ; preds = %118, %94
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = load i8, i8* %6, align 1
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 31
  %155 = load i8, i8* %8, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 7
  %158 = shl i32 %157, 5
  %159 = or i32 %154, %158
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i8, i8* %6, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  store i32 %159, i32* %169, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i8, i8* %6, align 1
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 254
  %182 = load i8, i8* %8, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %183, 8
  %185 = ashr i32 %184, 3
  %186 = or i32 %181, %185
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load i8, i8* %6, align 1
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i32 %186, i32* %196, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = load i8, i8* %6, align 1
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 20
  %212 = load i8, i8* %6, align 1
  %213 = zext i8 %212 to i32
  %214 = mul nsw i32 64, %213
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %211, %215
  %217 = call i32 @outl(i32 %206, i64 %216)
  br label %218

218:                                              ; preds = %142, %85
  br label %221

219:                                              ; preds = %57
  %220 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %221

221:                                              ; preds = %219, %218
  br label %224

222:                                              ; preds = %51
  %223 = call i32 @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 4, i32* %9, align 4
  br label %224

224:                                              ; preds = %222, %221
  br label %227

225:                                              ; preds = %28
  %226 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %227

227:                                              ; preds = %225, %224
  br label %230

228:                                              ; preds = %14
  %229 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %230

230:                                              ; preds = %228, %227
  br label %233

231:                                              ; preds = %4
  %232 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %233

233:                                              ; preds = %231, %230
  %234 = load i32, i32* %9, align 4
  ret i32 %234
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
