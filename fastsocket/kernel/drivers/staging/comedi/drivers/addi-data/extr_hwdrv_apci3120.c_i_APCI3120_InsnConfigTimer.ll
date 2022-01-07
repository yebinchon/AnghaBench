; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_InsnConfigTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_InsnConfigTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"config:No timer constant !\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI3120_RD_STATUS = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"apci3001\00", align 1
@APCI3120_DISABLE_TIMER2 = common dso_local global i32 0, align 4
@APCI3120_WR_ADDRESS = common dso_local global i64 0, align 8
@APCI3120_DISABLE_TIMER_INT = common dso_local global i32 0, align 4
@APCI3120_DISABLE_EOC_INT = common dso_local global i32 0, align 4
@APCI3120_DISABLE_EOS_INT = common dso_local global i32 0, align 4
@APCI3120_WRITE_MODE_SELECT = common dso_local global i64 0, align 8
@APCI3120_TIMER = common dso_local global i32 0, align 4
@APCI3120_TIMER_2_MODE_2 = common dso_local global i32 0, align 4
@APCI3120_TIMER_CRT1 = common dso_local global i64 0, align 8
@APCI3120_SELECT_TIMER_2_LOW_WORD = common dso_local global i32 0, align 4
@APCI3120_TIMER_CRT0 = common dso_local global i64 0, align 8
@APCI3120_TIMER_VALUE = common dso_local global i64 0, align 8
@APCI3120_SELECT_TIMER_2_HIGH_WORD = common dso_local global i32 0, align 4
@APCI3120_TIMER_2_MODE_5 = common dso_local global i32 0, align 4
@APCI3120_WATCHDOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_InsnConfigTimer(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = call i32 @comedi_error(%struct.comedi_device* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8 %23, i8* %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = udiv i32 %28, 1000
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @APCI3120_RD_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @inw(i64 %34)
  %36 = trunc i64 %35 to i16
  store i16 %36, i16* %10, align 2
  %37 = load i16, i16* %10, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 176
  %40 = icmp eq i32 %39, 176
  br i1 %40, label %47, label %41

41:                                               ; preds = %19
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcmp(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41, %19
  %48 = load i32, i32* %9, align 4
  %49 = udiv i32 %48, 50
  store i32 %49, i32* %9, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = udiv i32 %51, 70
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @APCI3120_DISABLE_TIMER2, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @APCI3120_WR_ADDRESS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outw(i32 %63, i64 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @APCI3120_DISABLE_TIMER_INT, align 4
  %74 = and i32 %72, %73
  %75 = and i32 %74, 239
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @APCI3120_DISABLE_EOC_INT, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @APCI3120_DISABLE_EOS_INT, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = trunc i32 %89 to i8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @APCI3120_WRITE_MODE_SELECT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i8 zeroext %90, i64 %95)
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @APCI3120_TIMER, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %168

102:                                              ; preds = %53
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 15
  %107 = load i32, i32* @APCI3120_TIMER_2_MODE_2, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = trunc i32 %113 to i8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @APCI3120_TIMER_CRT1, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outb(i8 zeroext %114, i64 %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 240
  %125 = load i32, i32* @APCI3120_SELECT_TIMER_2_LOW_WORD, align 4
  %126 = or i32 %124, %125
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %11, align 1
  %128 = load i8, i8* %11, align 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @APCI3120_TIMER_CRT0, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @outb(i8 zeroext %128, i64 %133)
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @LOWORD(i32 %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @APCI3120_TIMER_VALUE, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @outw(i32 %136, i64 %141)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 240
  %147 = load i32, i32* @APCI3120_SELECT_TIMER_2_HIGH_WORD, align 4
  %148 = or i32 %146, %147
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %11, align 1
  %150 = load i8, i8* %11, align 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @APCI3120_TIMER_CRT0, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @outb(i8 zeroext %150, i64 %155)
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @HIWORD(i32 %157)
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @APCI3120_TIMER_VALUE, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @outw(i32 %158, i64 %163)
  %165 = load i32, i32* @APCI3120_TIMER, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  br label %234

168:                                              ; preds = %53
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 15
  %173 = load i32, i32* @APCI3120_TIMER_2_MODE_5, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = trunc i32 %179 to i8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @APCI3120_TIMER_CRT1, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i8 zeroext %180, i64 %185)
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, 240
  %191 = load i32, i32* @APCI3120_SELECT_TIMER_2_LOW_WORD, align 4
  %192 = or i32 %190, %191
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %11, align 1
  %194 = load i8, i8* %11, align 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @APCI3120_TIMER_CRT0, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @outb(i8 zeroext %194, i64 %199)
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @LOWORD(i32 %201)
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @APCI3120_TIMER_VALUE, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @outw(i32 %202, i64 %207)
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 240
  %213 = load i32, i32* @APCI3120_SELECT_TIMER_2_HIGH_WORD, align 4
  %214 = or i32 %212, %213
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %11, align 1
  %216 = load i8, i8* %11, align 1
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @APCI3120_TIMER_CRT0, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @outb(i8 zeroext %216, i64 %221)
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @HIWORD(i32 %223)
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @APCI3120_TIMER_VALUE, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @outw(i32 %224, i64 %229)
  %231 = load i32, i32* @APCI3120_WATCHDOG, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %168, %102
  %235 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %236 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  ret i32 %237
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i64 @inw(i64) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @HIWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
