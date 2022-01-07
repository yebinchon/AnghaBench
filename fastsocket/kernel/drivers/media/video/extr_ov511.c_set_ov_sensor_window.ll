; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_set_ov_sensor_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_set_ov_sensor_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Invalid sensor\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BCL_OV518 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Illegal dimensions\00", align 1
@dump_sensor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32, i32, i32, i32)* @set_ov_sensor_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ov_sensor_window(%struct.usb_ov511* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_ov511*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %24 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %29 [
    i32 130, label %26
    i32 128, label %26
    i32 132, label %27
    i32 131, label %27
    i32 129, label %28
  ]

26:                                               ; preds = %5, %5
  store i32 56, i32* %13, align 4
  store i32 58, i32* %14, align 4
  store i32 5, i32* %16, align 4
  store i32 5, i32* %15, align 4
  br label %33

27:                                               ; preds = %5, %5
  store i32 56, i32* %13, align 4
  store i32 58, i32* %14, align 4
  store i32 5, i32* %15, align 4
  store i32 6, i32* %16, align 4
  br label %33

28:                                               ; preds = %5
  store i32 47, i32* %13, align 4
  store i32 47, i32* %14, align 4
  store i32 5, i32* %16, align 4
  store i32 5, i32* %15, align 4
  br label %33

29:                                               ; preds = %5
  %30 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %223

33:                                               ; preds = %28, %27, %26
  %34 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %35 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 132
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %40 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 131
  br i1 %42, label %43, label %91

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 176
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 144
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %51 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BCL_OV518, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49, %46
  %56 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @mode_init_ov_sensor_regs(%struct.usb_ov511* %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %6, align 4
  br label %223

66:                                               ; preds = %55
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 352, i32* %17, align 4
  store i32 288, i32* %18, align 4
  br label %90

67:                                               ; preds = %49
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 176
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 144
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %67
  %74 = call i32 @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %223

77:                                               ; preds = %70
  %78 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @mode_init_ov_sensor_regs(%struct.usb_ov511* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 1)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %6, align 4
  br label %223

88:                                               ; preds = %77
  store i32 176, i32* %17, align 4
  store i32 144, i32* %18, align 4
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %66
  br label %133

91:                                               ; preds = %38
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 320
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %95, 240
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @mode_init_ov_sensor_regs(%struct.usb_ov511* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %6, align 4
  br label %223

108:                                              ; preds = %97
  store i32 2, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 640, i32* %17, align 4
  store i32 480, i32* %18, align 4
  br label %132

109:                                              ; preds = %94, %91
  %110 = load i32, i32* %8, align 4
  %111 = icmp sgt i32 %110, 320
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %113, 240
  br i1 %114, label %115, label %119

115:                                              ; preds = %112, %109
  %116 = call i32 @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %223

119:                                              ; preds = %112
  %120 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @mode_init_ov_sensor_regs(%struct.usb_ov511* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 1)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %6, align 4
  br label %223

130:                                              ; preds = %119
  store i32 1, i32* %21, align 4
  store i32 320, i32* %17, align 4
  store i32 240, i32* %18, align 4
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %108
  br label %133

133:                                              ; preds = %132, %90
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sdiv i32 %136, 2
  %138 = load i32, i32* %21, align 4
  %139 = ashr i32 %137, %138
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sdiv i32 %142, 2
  %144 = load i32, i32* %22, align 4
  %145 = ashr i32 %143, %144
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %193

148:                                              ; preds = %133
  %149 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %152 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %21, align 4
  %155 = ashr i32 %153, %154
  %156 = add nsw i32 %150, %155
  %157 = call i32 @i2c_w(%struct.usb_ov511* %149, i32 23, i32 %156)
  %158 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %161 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %164 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %162, %165
  %167 = load i32, i32* %21, align 4
  %168 = ashr i32 %166, %167
  %169 = add nsw i32 %159, %168
  %170 = call i32 @i2c_w(%struct.usb_ov511* %158, i32 24, i32 %169)
  %171 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %174 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %22, align 4
  %177 = ashr i32 %175, %176
  %178 = add nsw i32 %172, %177
  %179 = call i32 @i2c_w(%struct.usb_ov511* %171, i32 25, i32 %178)
  %180 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %181 = load i32, i32* %16, align 4
  %182 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %183 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %186 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %184, %187
  %189 = load i32, i32* %22, align 4
  %190 = ashr i32 %188, %189
  %191 = add nsw i32 %181, %190
  %192 = call i32 @i2c_w(%struct.usb_ov511* %180, i32 26, i32 %191)
  br label %222

193:                                              ; preds = %133
  %194 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %195, %196
  %198 = call i32 @i2c_w(%struct.usb_ov511* %194, i32 23, i32 %197)
  %199 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %21, align 4
  %205 = ashr i32 %203, %204
  %206 = add nsw i32 %202, %205
  %207 = call i32 @i2c_w(%struct.usb_ov511* %199, i32 24, i32 %206)
  %208 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 @i2c_w(%struct.usb_ov511* %208, i32 25, i32 %211)
  %213 = load %struct.usb_ov511*, %struct.usb_ov511** %7, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %20, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %22, align 4
  %219 = ashr i32 %217, %218
  %220 = add nsw i32 %216, %219
  %221 = call i32 @i2c_w(%struct.usb_ov511* %213, i32 26, i32 %220)
  br label %222

222:                                              ; preds = %193, %148
  store i32 0, i32* %6, align 4
  br label %223

223:                                              ; preds = %222, %128, %115, %106, %86, %73, %64, %29
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mode_init_ov_sensor_regs(%struct.usb_ov511*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
