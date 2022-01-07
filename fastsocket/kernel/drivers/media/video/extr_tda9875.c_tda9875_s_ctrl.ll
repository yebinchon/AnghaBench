; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.tda9875 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tda9875_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9875_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tda9875*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.tda9875* @to_state(%struct.v4l2_subdev* %12)
  store %struct.tda9875* %13, %struct.tda9875** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %123 [
    i32 128, label %17
    i32 131, label %56
    i32 130, label %73
    i32 129, label %98
  ]

17:                                               ; preds = %2
  %18 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %19 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 84
  %22 = mul nsw i32 %21, 606
  store i32 %22, i32* %10, align 4
  %23 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %24 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 84
  %27 = mul nsw i32 %26, 606
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @max(i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @min(i32 %31, i32 %32)
  %34 = mul nsw i32 32768, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* %8, align 4
  br label %40

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 1, %39 ]
  %42 = sdiv i32 %34, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 65535, %47
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ %48, %46 ], [ %50, %49 ]
  store i32 %52, i32* %9, align 4
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %126

56:                                               ; preds = %2
  %57 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %58 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 84
  %61 = mul nsw i32 %60, 606
  store i32 %61, i32* %10, align 4
  %62 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %63 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 84
  %66 = mul nsw i32 %65, 606
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @max(i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %126

73:                                               ; preds = %2
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 2400
  %78 = sub nsw i32 %77, 12
  %79 = and i32 %78, 255
  %80 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %81 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %83 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 15
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %88 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %87, i32 0, i32 2
  store i32 15, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %73
  %90 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %91 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, -12
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %96 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %95, i32 0, i32 2
  store i32 244, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %89
  br label %126

98:                                               ; preds = %2
  %99 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 2700
  %103 = sub nsw i32 %102, 12
  %104 = and i32 %103, 255
  %105 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %106 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %108 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 12
  br i1 %110, label %111, label %114

111:                                              ; preds = %98
  %112 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %113 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %112, i32 0, i32 3
  store i32 12, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %98
  %115 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %116 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, -12
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %121 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %120, i32 0, i32 3
  store i32 244, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %114
  br label %126

123:                                              ; preds = %2
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %188

126:                                              ; preds = %122, %97, %56, %51
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %185

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 65536, %130
  %132 = call i32 @min(i32 %131, i32 32768)
  %133 = load i32, i32* %8, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sdiv i32 %134, 32768
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @min(i32 %136, i32 32768)
  %138 = load i32, i32* %8, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sdiv i32 %139, 32768
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %10, align 4
  %142 = sdiv i32 %141, 606
  %143 = sub nsw i32 %142, 84
  %144 = and i32 %143, 255
  %145 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %146 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %148 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 24
  br i1 %150, label %151, label %154

151:                                              ; preds = %129
  %152 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %153 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %152, i32 0, i32 0
  store i32 24, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %129
  %155 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %156 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, -84
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %161 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %160, i32 0, i32 0
  store i32 172, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %11, align 4
  %164 = sdiv i32 %163, 606
  %165 = sub nsw i32 %164, 84
  %166 = and i32 %165, 255
  %167 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %168 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %170 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 24
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %175 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %174, i32 0, i32 1
  store i32 24, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %162
  %177 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %178 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %179, -84
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.tda9875*, %struct.tda9875** %6, align 8
  %183 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %182, i32 0, i32 1
  store i32 172, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %176
  br label %185

185:                                              ; preds = %184, %126
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %187 = call i32 @tda9875_set(%struct.v4l2_subdev* %186)
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %185, %123
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.tda9875* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tda9875_set(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
