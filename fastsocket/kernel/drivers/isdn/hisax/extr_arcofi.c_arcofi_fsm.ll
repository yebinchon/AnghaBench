; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_arcofi.c_arcofi_fsm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_arcofi.c_arcofi_fsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

@L1_DEB_MONITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"arcofi state %d event %d\00", align 1
@ARCOFI_TIMEOUT = common dso_local global i32 0, align 4
@FLG_ARCOFI_ERROR = common dso_local global i32 0, align 4
@ARCOFI_START = common dso_local global i32 0, align 4
@ARCOFI_TX_END = common dso_local global i32 0, align 4
@FLG_ARCOFI_TIMER = common dso_local global i32 0, align 4
@ARCOFI_RX_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Arcofi unknown state %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arcofi_fsm(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %9 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @L1_DEB_MONITOR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ARCOFI_TIMEOUT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 130, i32* %31, align 8
  %32 = load i32, i32* @FLG_ARCOFI_ERROR, align 4
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 2
  %35 = call i32 @test_and_set_bit(i32 %32, i32* %34)
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @wake_up(i32* %39)
  store i32 1, i32* %4, align 4
  br label %197

41:                                               ; preds = %23
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %188 [
    i32 130, label %47
    i32 128, label %65
    i32 129, label %133
  ]

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ARCOFI_START, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_4__*
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %57, align 8
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 128, i32* %61, align 8
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %63 = call i32 @send_arcofi(%struct.IsdnCardState* %62)
  br label %64

64:                                               ; preds = %51, %47
  br label %196

65:                                               ; preds = %41
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ARCOFI_TX_END, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %132

69:                                               ; preds = %65
  %70 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %71 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %80 = call i32 @add_arcofi_timer(%struct.IsdnCardState* %79)
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 129, i32* %84, align 8
  br label %131

85:                                               ; preds = %69
  %86 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %87 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = icmp ne %struct.TYPE_4__* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %85
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %103 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %105, align 8
  %106 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %107 = call i32 @send_arcofi(%struct.IsdnCardState* %106)
  br label %130

108:                                              ; preds = %85
  %109 = load i32, i32* @FLG_ARCOFI_TIMER, align 4
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %111 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %110, i32 0, i32 2
  %112 = call i32 @test_and_clear_bit(i32 %109, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %116 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = call i32 @del_timer(i32* %118)
  br label %120

120:                                              ; preds = %114, %108
  %121 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %122 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i32 130, i32* %124, align 8
  %125 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %126 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = call i32 @wake_up(i32* %128)
  br label %130

130:                                              ; preds = %120, %94
  br label %131

131:                                              ; preds = %130, %78
  br label %132

132:                                              ; preds = %131, %65
  br label %196

133:                                              ; preds = %41
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @ARCOFI_RX_END, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %187

137:                                              ; preds = %133
  %138 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %139 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = icmp ne %struct.TYPE_4__* %144, null
  br i1 %145, label %146, label %164

146:                                              ; preds = %137
  %147 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %148 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %155 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** %157, align 8
  %158 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %159 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 128, i32* %161, align 8
  %162 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %163 = call i32 @send_arcofi(%struct.IsdnCardState* %162)
  br label %186

164:                                              ; preds = %137
  %165 = load i32, i32* @FLG_ARCOFI_TIMER, align 4
  %166 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %167 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %166, i32 0, i32 2
  %168 = call i32 @test_and_clear_bit(i32 %165, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %172 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = call i32 @del_timer(i32* %174)
  br label %176

176:                                              ; preds = %170, %164
  %177 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %178 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  store i32 130, i32* %180, align 8
  %181 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %182 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = call i32 @wake_up(i32* %184)
  br label %186

186:                                              ; preds = %176, %146
  br label %187

187:                                              ; preds = %186, %133
  br label %196

188:                                              ; preds = %41
  %189 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %190 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %191 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %189, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  store i32 2, i32* %4, align 4
  br label %197

196:                                              ; preds = %187, %132, %64
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %188, %27
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32, ...) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @send_arcofi(%struct.IsdnCardState*) #1

declare dso_local i32 @add_arcofi_timer(%struct.IsdnCardState*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
