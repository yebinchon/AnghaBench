; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ves1820_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ves1820_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ves1820_state*, i32)* @ves1820_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_set_symbolrate(%struct.ves1820_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ves1820_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ves1820_state* %0, %struct.ves1820_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %16 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 2
  %21 = icmp sgt i32 %14, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %24 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 500000
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 500000, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %36 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 16
  %41 = icmp slt i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %46 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 32
  %51 = icmp slt i32 %44, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 2, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %56 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 64
  %61 = icmp slt i32 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 3, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %65 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 10
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @do_div(i32 %71, i32 123)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @do_div(i32 %79, i32 160)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @do_div(i32 %87, i32 246)
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %85
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @do_div(i32 %95, i32 320)
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %93
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @do_div(i32 %103, i32 492)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 1, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %101
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @do_div(i32 %111, i32 640)
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %109
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @do_div(i32 %119, i32 984)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 1, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %117
  %126 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %127 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 4
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %4, align 4
  %134 = shl i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = shl i32 %135, 4
  %137 = load i32, i32* %10, align 4
  %138 = sdiv i32 %136, %137
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %4, align 4
  %140 = shl i32 %139, 4
  %141 = load i32, i32* %10, align 4
  %142 = srem i32 %140, %141
  %143 = shl i32 %142, 8
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = shl i32 %144, 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sdiv i32 %146, %147
  %149 = add nsw i32 %145, %148
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = srem i32 %150, %151
  %153 = shl i32 %152, 8
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %9, align 4
  %155 = shl i32 %154, 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @DIV_ROUND_CLOSEST(i32 %156, i32 %157)
  %159 = add nsw i32 %155, %158
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %5, align 4
  %161 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %162 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 5
  %167 = load i32, i32* %4, align 4
  %168 = sdiv i32 %166, %167
  %169 = add nsw i32 %168, 1
  %170 = sdiv i32 %169, 2
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp sgt i32 %171, 255
  br i1 %172, label %173, label %174

173:                                              ; preds = %125
  store i32 255, i32* %6, align 4
  br label %174

174:                                              ; preds = %173, %125
  %175 = load i32, i32* %7, align 4
  %176 = shl i32 %175, 4
  %177 = load i32*, i32** @ves1820_inittab, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 14
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %176, %179
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = shl i32 %181, 6
  %183 = load i32*, i32** @ves1820_inittab, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %182, %185
  store i32 %186, i32* %8, align 4
  %187 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @ves1820_writereg(%struct.ves1820_state* %187, i32 3, i32 %188)
  %190 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %191 = load i32, i32* %5, align 4
  %192 = and i32 %191, 255
  %193 = call i32 @ves1820_writereg(%struct.ves1820_state* %190, i32 10, i32 %192)
  %194 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %195 = load i32, i32* %5, align 4
  %196 = ashr i32 %195, 8
  %197 = and i32 %196, 255
  %198 = call i32 @ves1820_writereg(%struct.ves1820_state* %194, i32 11, i32 %197)
  %199 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %200 = load i32, i32* %5, align 4
  %201 = ashr i32 %200, 16
  %202 = and i32 %201, 63
  %203 = call i32 @ves1820_writereg(%struct.ves1820_state* %199, i32 12, i32 %202)
  %204 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @ves1820_writereg(%struct.ves1820_state* %204, i32 13, i32 %205)
  %207 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @ves1820_writereg(%struct.ves1820_state* %207, i32 14, i32 %208)
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ves1820_writereg(%struct.ves1820_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
