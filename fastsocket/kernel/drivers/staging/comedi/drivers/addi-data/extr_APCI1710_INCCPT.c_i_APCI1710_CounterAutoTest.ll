; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_CounterAutoTest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_CounterAutoTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI1710_INCREMENTAL_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No counter module found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_CounterAutoTest(%struct.comedi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %5, align 1
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  store i8 0, i8* %8, align 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, 4294901760
  %17 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %56, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, 4294901760
  %29 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %20
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 4294901760
  %41 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %51, 4294901760
  %53 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %155

56:                                               ; preds = %44, %32, %20, %2
  store i8 0, i8* %5, align 1
  br label %57

57:                                               ; preds = %151, %56
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %154

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = and i64 %70, 4294901760
  %72 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %150

75:                                               ; preds = %61
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 16
  %81 = load i8, i8* %5, align 1
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 64, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = call i32 @outl(i32 3, i64 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i8, i8* %5, align 1
  %92 = zext i8 %91 to i32
  %93 = mul nsw i32 64, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %90, %94
  %96 = call i32 @outl(i32 1, i64 %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 4
  %102 = load i8, i8* %5, align 1
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 64, %103
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = call i32 @inl(i64 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 255
  %110 = load i32, i32* %7, align 4
  %111 = lshr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %75
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 255
  %117 = load i32, i32* %7, align 4
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, 255
  %124 = load i32, i32* %7, align 4
  %125 = lshr i32 %124, 24
  %126 = and i32 %125, 255
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load i8*, i8** %4, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* %5, align 1
  %133 = zext i8 %132 to i32
  %134 = shl i32 1, %133
  %135 = or i32 %131, %134
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %4, align 8
  store i8 %136, i8* %137, align 1
  br label %138

138:                                              ; preds = %128, %121, %114, %75
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 16
  %144 = load i8, i8* %5, align 1
  %145 = zext i8 %144 to i32
  %146 = mul nsw i32 64, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %143, %147
  %149 = call i32 @outl(i32 0, i64 %148)
  br label %150

150:                                              ; preds = %138, %61
  br label %151

151:                                              ; preds = %150
  %152 = load i8, i8* %5, align 1
  %153 = add i8 %152, 1
  store i8 %153, i8* %5, align 1
  br label %57

154:                                              ; preds = %57
  br label %157

155:                                              ; preds = %44
  %156 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %6, align 4
  br label %157

157:                                              ; preds = %155, %154
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
