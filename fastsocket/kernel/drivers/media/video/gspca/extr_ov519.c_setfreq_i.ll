; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_setfreq_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_setfreq_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SEN_OV7660 = common dso_local global i64 0, align 8
@SEN_OV7670 = common dso_local global i64 0, align 8
@FREQ = common dso_local global i64 0, align 8
@OV7670_R13_COM8 = common dso_local global i32 0, align 4
@OV7670_COM8_BFILT = common dso_local global i32 0, align 4
@OV7670_R3B_COM11 = common dso_local global i32 0, align 4
@OV7670_COM11_HZAUTO = common dso_local global i32 0, align 4
@SEN_OV6620 = common dso_local global i64 0, align 8
@SEN_OV6630 = common dso_local global i64 0, align 8
@SEN_OV66308AF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @setfreq_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfreq_i(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load %struct.sd*, %struct.sd** %2, align 8
  %4 = getelementptr inbounds %struct.sd, %struct.sd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SEN_OV7660, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SEN_OV7670, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %8, %1
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @FREQ, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %55 [
    i32 0, label %22
    i32 1, label %27
    i32 2, label %36
    i32 3, label %45
  ]

22:                                               ; preds = %14
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = load i32, i32* @OV7670_R13_COM8, align 4
  %25 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %26 = call i32 @i2c_w_mask(%struct.sd* %23, i32 %24, i32 0, i32 %25)
  br label %55

27:                                               ; preds = %14
  %28 = load %struct.sd*, %struct.sd** %2, align 8
  %29 = load i32, i32* @OV7670_R13_COM8, align 4
  %30 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %31 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %32 = call i32 @i2c_w_mask(%struct.sd* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = load i32, i32* @OV7670_R3B_COM11, align 4
  %35 = call i32 @i2c_w_mask(%struct.sd* %33, i32 %34, i32 8, i32 24)
  br label %55

36:                                               ; preds = %14
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = load i32, i32* @OV7670_R13_COM8, align 4
  %39 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %40 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %41 = call i32 @i2c_w_mask(%struct.sd* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.sd*, %struct.sd** %2, align 8
  %43 = load i32, i32* @OV7670_R3B_COM11, align 4
  %44 = call i32 @i2c_w_mask(%struct.sd* %42, i32 %43, i32 0, i32 24)
  br label %55

45:                                               ; preds = %14
  %46 = load %struct.sd*, %struct.sd** %2, align 8
  %47 = load i32, i32* @OV7670_R13_COM8, align 4
  %48 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %49 = load i32, i32* @OV7670_COM8_BFILT, align 4
  %50 = call i32 @i2c_w_mask(%struct.sd* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.sd*, %struct.sd** %2, align 8
  %52 = load i32, i32* @OV7670_R3B_COM11, align 4
  %53 = load i32, i32* @OV7670_COM11_HZAUTO, align 4
  %54 = call i32 @i2c_w_mask(%struct.sd* %51, i32 %52, i32 %53, i32 24)
  br label %55

55:                                               ; preds = %14, %45, %36, %27, %22
  br label %128

56:                                               ; preds = %8
  %57 = load %struct.sd*, %struct.sd** %2, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* @FREQ, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %127 [
    i32 0, label %64
    i32 1, label %69
    i32 2, label %98
  ]

64:                                               ; preds = %56
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = call i32 @i2c_w_mask(%struct.sd* %65, i32 45, i32 0, i32 4)
  %67 = load %struct.sd*, %struct.sd** %2, align 8
  %68 = call i32 @i2c_w_mask(%struct.sd* %67, i32 42, i32 0, i32 128)
  br label %127

69:                                               ; preds = %56
  %70 = load %struct.sd*, %struct.sd** %2, align 8
  %71 = call i32 @i2c_w_mask(%struct.sd* %70, i32 45, i32 4, i32 4)
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = call i32 @i2c_w_mask(%struct.sd* %72, i32 42, i32 128, i32 128)
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SEN_OV6620, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %69
  %80 = load %struct.sd*, %struct.sd** %2, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SEN_OV6630, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.sd*, %struct.sd** %2, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SEN_OV66308AF, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %79, %69
  %92 = load %struct.sd*, %struct.sd** %2, align 8
  %93 = call i32 @i2c_w(%struct.sd* %92, i32 43, i32 94)
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.sd*, %struct.sd** %2, align 8
  %96 = call i32 @i2c_w(%struct.sd* %95, i32 43, i32 172)
  br label %97

97:                                               ; preds = %94, %91
  br label %127

98:                                               ; preds = %56
  %99 = load %struct.sd*, %struct.sd** %2, align 8
  %100 = call i32 @i2c_w_mask(%struct.sd* %99, i32 45, i32 4, i32 4)
  %101 = load %struct.sd*, %struct.sd** %2, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SEN_OV6620, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %118, label %106

106:                                              ; preds = %98
  %107 = load %struct.sd*, %struct.sd** %2, align 8
  %108 = getelementptr inbounds %struct.sd, %struct.sd* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SEN_OV6630, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.sd*, %struct.sd** %2, align 8
  %114 = getelementptr inbounds %struct.sd, %struct.sd* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SEN_OV66308AF, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112, %106, %98
  %119 = load %struct.sd*, %struct.sd** %2, align 8
  %120 = call i32 @i2c_w_mask(%struct.sd* %119, i32 42, i32 128, i32 128)
  %121 = load %struct.sd*, %struct.sd** %2, align 8
  %122 = call i32 @i2c_w(%struct.sd* %121, i32 43, i32 168)
  br label %126

123:                                              ; preds = %112
  %124 = load %struct.sd*, %struct.sd** %2, align 8
  %125 = call i32 @i2c_w_mask(%struct.sd* %124, i32 42, i32 0, i32 128)
  br label %126

126:                                              ; preds = %123, %118
  br label %127

127:                                              ; preds = %56, %126, %97, %64
  br label %128

128:                                              ; preds = %127, %55
  ret void
}

declare dso_local i32 @i2c_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
