; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rotary_encoder = type { i32, i32, i32, i32, %struct.rotary_encoder_platform_data* }
%struct.rotary_encoder_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rotary_encoder_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotary_encoder_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rotary_encoder*, align 8
  %6 = alloca %struct.rotary_encoder_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.rotary_encoder*
  store %struct.rotary_encoder* %12, %struct.rotary_encoder** %5, align 8
  %13 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %13, i32 0, i32 4
  %15 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %14, align 8
  store %struct.rotary_encoder_platform_data* %15, %struct.rotary_encoder_platform_data** %6, align 8
  %16 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %17 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpio_get_value(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %25 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpio_get_value(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %33 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %159 [
    i32 0, label %47
    i32 1, label %145
    i32 2, label %145
    i32 3, label %156
  ]

47:                                               ; preds = %2
  %48 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %49 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %159

53:                                               ; preds = %47
  %54 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %55 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %60 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %63 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %66 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 -1, i32 1
  %71 = call i32 @input_report_rel(i32 %61, i32 %64, i32 %70)
  br label %138

72:                                               ; preds = %53
  %73 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %74 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  %76 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %77 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %72
  %81 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %82 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %87 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, -1
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %113

98:                                               ; preds = %72
  %99 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %100 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %106 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %115 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %120 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = urem i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %118, %113
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %127 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %129 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rotary_encoder_platform_data*, %struct.rotary_encoder_platform_data** %6, align 8
  %132 = getelementptr inbounds %struct.rotary_encoder_platform_data, %struct.rotary_encoder_platform_data* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %135 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @input_report_abs(i32 %130, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %124, %58
  %139 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %140 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @input_sync(i32 %141)
  %143 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %144 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %159

145:                                              ; preds = %2, %2
  %146 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %147 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %154 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %145
  br label %159

156:                                              ; preds = %2
  %157 = load %struct.rotary_encoder*, %struct.rotary_encoder** %5, align 8
  %158 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %2, %156, %155, %138, %52
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %160
}

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
