; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_SetGPIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_SetGPIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@GPIO_1B = common dso_local global i32 0, align 4
@GPIO_3 = common dso_local global i32 0, align 4
@GPIO_3B = common dso_local global i32 0, align 4
@GPIO_4 = common dso_local global i32 0, align 4
@GPIO_4B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @MXL_SetGPIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MXL_SetGPIO(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = load i32, i32* @GPIO_1B, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  %17 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %11, i32 %12, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %10, %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %80

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %30 = load i32, i32* @GPIO_3, align 4
  %31 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %29, i32 %30, i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %37 = load i32, i32* @GPIO_3B, align 4
  %38 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %36, i32 %37, i32 0)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %28, %25
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %48 = load i32, i32* @GPIO_3, align 4
  %49 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %47, i32 %48, i32 1)
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %55 = load i32, i32* @GPIO_3B, align 4
  %56 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %54, i32 %55, i32 1)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %46, %43
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %66 = load i32, i32* @GPIO_3, align 4
  %67 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %65, i32 %66, i32 0)
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %73 = load i32, i32* @GPIO_3B, align 4
  %74 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %72, i32 %73, i32 1)
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %64, %61
  br label %80

80:                                               ; preds = %79, %22
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %138

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %88 = load i32, i32* @GPIO_4, align 4
  %89 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %87, i32 %88, i32 0)
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %95 = load i32, i32* @GPIO_4B, align 4
  %96 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %94, i32 %95, i32 0)
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %86, %83
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %106 = load i32, i32* @GPIO_4, align 4
  %107 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %105, i32 %106, i32 1)
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %7, align 4
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %113 = load i32, i32* @GPIO_4B, align 4
  %114 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %112, i32 %113, i32 1)
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %104, %101
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %124 = load i32, i32* @GPIO_4, align 4
  %125 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %123, i32 %124, i32 0)
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %7, align 4
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %131 = load i32, i32* @GPIO_4B, align 4
  %132 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %130, i32 %131, i32 1)
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %122, %119
  br label %138

138:                                              ; preds = %137, %80
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @MXL_ControlWrite(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
