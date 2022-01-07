; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_handle_kbd_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_handle_kbd_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hil_dev = type { i32, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@HIL_POL_CHARTYPE_MASK = common dso_local global i32 0, align 4
@HIL_KBD_SET1_UPBIT = common dso_local global i32 0, align 4
@hil_kbd_set1 = common dso_local global i32* null, align 8
@HIL_KBD_SET1_SHIFT = common dso_local global i32 0, align 4
@HIL_KBD_SET2_UPBIT = common dso_local global i32 0, align 4
@HIL_KBD_SET2_SHIFT = common dso_local global i32 0, align 4
@HIL_KBD_SET3_UPBIT = common dso_local global i32 0, align 4
@hil_kbd_set3 = common dso_local global i32* null, align 8
@HIL_KBD_SET3_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hil_dev*)* @hil_dev_handle_kbd_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hil_dev_handle_kbd_events(%struct.hil_dev* %0) #0 {
  %2 = alloca %struct.hil_dev*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hil_dev* %0, %struct.hil_dev** %2, align 8
  %12 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %12, i32 0, i32 2
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %3, align 8
  %15 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HIL_POL_CHARTYPE_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %184 [
    i32 133, label %26
    i32 135, label %27
    i32 132, label %48
    i32 131, label %48
    i32 134, label %48
    i32 130, label %68
    i32 129, label %108
    i32 128, label %144
  ]

26:                                               ; preds = %1
  br label %187

27:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %35 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %36 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 127
  %43 = call i32 @input_report_key(%struct.input_dev* %34, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %28

47:                                               ; preds = %28
  br label %184

48:                                               ; preds = %1, %1, %1
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %56 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @input_report_key(%struct.input_dev* %55, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %49

67:                                               ; preds = %49
  br label %184

68:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %104, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %107

74:                                               ; preds = %69
  %75 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %76 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @HIL_KBD_SET1_UPBIT, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @HIL_KBD_SET1_UPBIT, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %86, 255
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32*, i32** @hil_kbd_set1, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @HIL_KBD_SET1_SHIFT, align 4
  %93 = lshr i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %6, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @input_report_key(%struct.input_dev* %97, i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %74
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %69

107:                                              ; preds = %69
  br label %184

108:                                              ; preds = %1
  store i32 1, i32* %5, align 4
  br label %109

109:                                              ; preds = %140, %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %4, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %109
  %115 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %116 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @HIL_KBD_SET2_UPBIT, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @HIL_KBD_SET1_UPBIT, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %126, 255
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @HIL_KBD_SET2_SHIFT, align 4
  %132 = lshr i32 %130, %131
  store i32 %132, i32* %8, align 4
  %133 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @input_report_key(%struct.input_dev* %133, i32 %134, i32 %138)
  br label %140

140:                                              ; preds = %114
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %109

143:                                              ; preds = %109
  br label %184

144:                                              ; preds = %1
  store i32 1, i32* %5, align 4
  br label %145

145:                                              ; preds = %180, %144
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %4, align 4
  %148 = sub nsw i32 %147, 1
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %183

150:                                              ; preds = %145
  %151 = load %struct.hil_dev*, %struct.hil_dev** %2, align 8
  %152 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @HIL_KBD_SET3_UPBIT, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* @HIL_KBD_SET1_UPBIT, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %162, 255
  %164 = load i32, i32* %10, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %10, align 4
  %166 = load i32*, i32** @hil_kbd_set3, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @HIL_KBD_SET3_SHIFT, align 4
  %169 = lshr i32 %167, %168
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %10, align 4
  %173 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @input_report_key(%struct.input_dev* %173, i32 %174, i32 %178)
  br label %180

180:                                              ; preds = %150
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %145

183:                                              ; preds = %145
  br label %184

184:                                              ; preds = %1, %183, %143, %107, %67, %47
  %185 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %186 = call i32 @input_sync(%struct.input_dev* %185)
  br label %187

187:                                              ; preds = %184, %26
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
