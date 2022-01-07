; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-designware.c_i2c_dw_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-designware.c_i2c_dw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.dw_i2c_dev = type { i32, i64, i32, i64, i32*, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i64, i32, i64, i32* }

@DW_IC_RXFLR = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@STATUS_READ_IN_PROGRESS = common dso_local global i32 0, align 4
@DW_IC_DATA_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @i2c_dw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_read(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %11 = call %struct.dw_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.dw_i2c_dev* %11, %struct.dw_i2c_dev** %3, align 8
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %12, i32 0, i32 6
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  store %struct.i2c_msg* %14, %struct.i2c_msg** %4, align 8
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %19 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %20 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 %21
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DW_IC_RXFLR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readw(i64 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %136, %1
  %32 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %33 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %141

38:                                               ; preds = %31
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %40 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %41 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @I2C_M_RD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %136

50:                                               ; preds = %38
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %52 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %53 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i64 %54
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %141

61:                                               ; preds = %50
  %62 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %63 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @STATUS_READ_IN_PROGRESS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %61
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %70 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %71 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i64 %72
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %77 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %78 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i64 %79
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %9, align 8
  br label %90

83:                                               ; preds = %61
  %84 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %85 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %8, align 8
  %87 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %88 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %9, align 8
  br label %90

90:                                               ; preds = %83, %68
  br label %91

91:                                               ; preds = %108, %90
  %92 = load i64, i64* %8, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %95, 0
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i1 [ false, %91 ], [ %96, %94 ]
  br i1 %98, label %99, label %113

99:                                               ; preds = %97
  %100 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %101 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DW_IC_DATA_CMD, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @readb(i64 %104)
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  br label %108

108:                                              ; preds = %99
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %8, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %7, align 4
  br label %91

113:                                              ; preds = %97
  %114 = load i64, i64* %8, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load i32, i32* @STATUS_READ_IN_PROGRESS, align 4
  %118 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %119 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %124 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %127 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %126, i32 0, i32 4
  store i32* %125, i32** %127, align 8
  br label %141

128:                                              ; preds = %113
  %129 = load i32, i32* @STATUS_READ_IN_PROGRESS, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %132 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %49
  %137 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %138 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %138, align 8
  br label %31

141:                                              ; preds = %60, %116, %31
  ret void
}

declare dso_local %struct.dw_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
