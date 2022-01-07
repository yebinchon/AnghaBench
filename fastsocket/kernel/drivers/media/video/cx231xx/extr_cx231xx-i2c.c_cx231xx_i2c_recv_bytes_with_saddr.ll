; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_recv_bytes_with_saddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_recv_bytes_with_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx231xx_i2c* }
%struct.cx231xx_i2c = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { i64, i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)* }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32, i32*, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@TUNER_XC5000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"i2c_read: addr 0x%x, len %d, saddr 0x%x, len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, %struct.i2c_msg*)* @cx231xx_i2c_recv_bytes_with_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_i2c_recv_bytes_with_saddr(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, %struct.i2c_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca %struct.cx231xx_i2c*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %2, %struct.i2c_msg** %7, align 8
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 0
  %16 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %15, align 8
  store %struct.cx231xx_i2c* %16, %struct.cx231xx_i2c** %8, align 8
  %17 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %18 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %17, i32 0, i32 1
  %19 = load %struct.cx231xx*, %struct.cx231xx** %18, align 8
  store %struct.cx231xx* %19, %struct.cx231xx** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %30, %35
  store i32 %36, i32* %12, align 4
  br label %49

37:                                               ; preds = %3
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %51 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %120

54:                                               ; preds = %49
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 97
  br i1 %58, label %59, label %120

59:                                               ; preds = %54
  %60 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %61 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TUNER_XC5000, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %120

65:                                               ; preds = %59
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 16
  br i1 %69, label %70, label %119

70:                                               ; preds = %65
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dprintk1(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %77, i32 %80)
  %82 = load i32, i32* %12, align 4
  switch i32 %82, label %85 [
    i32 8, label %83
    i32 4, label %84
  ]

83:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  br label %85

84:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %70, %84, %83
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %85
  %89 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %90 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %89, i32 0, i32 1
  %91 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %90, align 8
  %92 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 %91(%struct.cx231xx* %92, i32 %95, i32* %98, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %104 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %103, i32 0, i32 2
  %105 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %104, align 8
  %106 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %105(%struct.cx231xx* %106, i32 %109, i32* %112, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %4, align 4
  br label %155

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118, %65
  br label %120

120:                                              ; preds = %119, %59, %54, %49
  %121 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %122 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 5
  store i32 %127, i32* %128, align 8
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %12, align 4
  %134 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 4
  store i32* %141, i32** %142, align 8
  %143 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %144 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %143, i32 0, i32 3
  %145 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %144, align 8
  %146 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %147 = call i32 %145(%struct.cx231xx_i2c* %146, %struct.cx231xx_i2c_xfer_data* %10)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %120
  %151 = load i32, i32* %11, align 4
  br label %153

152:                                              ; preds = %120
  br label %153

153:                                              ; preds = %152, %150
  %154 = phi i32 [ %151, %150 ], [ 0, %152 ]
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %88
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @dprintk1(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
