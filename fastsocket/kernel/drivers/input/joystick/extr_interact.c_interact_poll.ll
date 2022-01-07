; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_interact.c_interact_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_interact.c_interact_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.interact = type { i64, i32, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@INTERACT_MAX_LENGTH = common dso_local global i32 0, align 4
@interact_abs_hhfx = common dso_local global i32* null, align 8
@ABS_HAT0Y = common dso_local global i32 0, align 4
@interact_btn_hhfx = common dso_local global i32* null, align 8
@interact_abs_pp8d = common dso_local global i32* null, align 8
@interact_btn_pp8d = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @interact_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interact_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.interact*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %7 = load %struct.gameport*, %struct.gameport** %2, align 8
  %8 = call %struct.interact* @gameport_get_drvdata(%struct.gameport* %7)
  store %struct.interact* %8, %struct.interact** %3, align 8
  %9 = load %struct.interact*, %struct.interact** %3, align 8
  %10 = getelementptr inbounds %struct.interact, %struct.interact* %9, i32 0, i32 5
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %4, align 8
  %12 = load %struct.interact*, %struct.interact** %3, align 8
  %13 = getelementptr inbounds %struct.interact, %struct.interact* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.interact*, %struct.interact** %3, align 8
  %17 = getelementptr inbounds %struct.interact, %struct.interact* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.interact*, %struct.interact** %3, align 8
  %20 = getelementptr inbounds %struct.interact, %struct.interact* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %23 = call i64 @interact_read_packet(i32 %18, i64 %21, i32* %22)
  %24 = load %struct.interact*, %struct.interact** %3, align 8
  %25 = getelementptr inbounds %struct.interact, %struct.interact* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.interact*, %struct.interact** %3, align 8
  %30 = getelementptr inbounds %struct.interact, %struct.interact* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %207

33:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* @INTERACT_MAX_LENGTH, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.interact*, %struct.interact** %3, align 8
  %41 = getelementptr inbounds %struct.interact, %struct.interact* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = trunc i64 %43 to i32
  %49 = shl i32 %47, %48
  store i32 %49, i32* %46, align 4
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load %struct.interact*, %struct.interact** %3, align 8
  %55 = getelementptr inbounds %struct.interact, %struct.interact* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %206 [
    i32 129, label %57
    i32 128, label %154
  ]

57:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %63 = load i32*, i32** @interact_abs_hhfx, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = ashr i32 %73, 1
  %75 = shl i32 %74, 3
  %76 = ashr i32 %72, %75
  %77 = and i32 %76, 255
  %78 = call i32 @input_report_abs(%struct.input_dev* %62, i32 %67, i32 %77)
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %58

82:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %107, %82
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %88 = load i32, i32* @ABS_HAT0Y, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %88, %89
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 1
  %95 = add nsw i32 %94, 17
  %96 = ashr i32 %92, %95
  %97 = and i32 %96, 1
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = shl i32 %100, 1
  %102 = add nsw i32 %101, 16
  %103 = ashr i32 %99, %102
  %104 = and i32 %103, 1
  %105 = sub nsw i32 %97, %104
  %106 = call i32 @input_report_abs(%struct.input_dev* %87, i32 %90, i32 %105)
  br label %107

107:                                              ; preds = %86
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %83

110:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %128, %110
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 8
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %116 = load i32*, i32** @interact_btn_hhfx, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 16
  %125 = ashr i32 %122, %124
  %126 = and i32 %125, 1
  %127 = call i32 @input_report_key(%struct.input_dev* %115, i32 %120, i32 %126)
  br label %128

128:                                              ; preds = %114
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %111

131:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %150, %131
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  %136 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %137 = load i32*, i32** @interact_btn_hhfx, align 8
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 20
  %147 = ashr i32 %144, %146
  %148 = and i32 %147, 1
  %149 = call i32 @input_report_key(%struct.input_dev* %136, i32 %142, i32 %148)
  br label %150

150:                                              ; preds = %135
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %132

153:                                              ; preds = %132
  br label %206

154:                                              ; preds = %53
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %181, %154
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 2
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %160 = load i32*, i32** @interact_abs_pp8d, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %6, align 4
  %168 = shl i32 %167, 1
  %169 = add nsw i32 %168, 20
  %170 = ashr i32 %166, %169
  %171 = and i32 %170, 1
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %6, align 4
  %175 = shl i32 %174, 1
  %176 = add nsw i32 %175, 21
  %177 = ashr i32 %173, %176
  %178 = and i32 %177, 1
  %179 = sub nsw i32 %171, %178
  %180 = call i32 @input_report_abs(%struct.input_dev* %159, i32 %164, i32 %179)
  br label %181

181:                                              ; preds = %158
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %155

184:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %202, %184
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 8
  br i1 %187, label %188, label %205

188:                                              ; preds = %185
  %189 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %190 = load i32*, i32** @interact_btn_pp8d, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 16
  %199 = ashr i32 %196, %198
  %200 = and i32 %199, 1
  %201 = call i32 @input_report_key(%struct.input_dev* %189, i32 %194, i32 %200)
  br label %202

202:                                              ; preds = %188
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %185

205:                                              ; preds = %185
  br label %206

206:                                              ; preds = %53, %205, %153
  br label %207

207:                                              ; preds = %206, %28
  %208 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %209 = call i32 @input_sync(%struct.input_dev* %208)
  ret void
}

declare dso_local %struct.interact* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i64 @interact_read_packet(i32, i64, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
