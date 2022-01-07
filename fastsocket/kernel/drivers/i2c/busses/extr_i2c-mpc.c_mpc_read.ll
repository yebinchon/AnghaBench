; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CCR_RSTA = common dso_local global i32 0, align 4
@CCR_MIEN = common dso_local global i32 0, align 4
@CCR_MEN = common dso_local global i32 0, align 4
@CCR_MSTA = common dso_local global i32 0, align 4
@CCR_MTX = common dso_local global i32 0, align 4
@MPC_I2C_DR = common dso_local global i64 0, align 8
@CCR_TXAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc_i2c*, i32, i32*, i32, i32)* @mpc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_read(%struct.mpc_i2c* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpc_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mpc_i2c* %0, %struct.mpc_i2c** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %17 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @CCR_RSTA, align 4
  br label %25

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %15, align 4
  %27 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %28 = load i32, i32* @CCR_MIEN, align 4
  %29 = load i32, i32* @CCR_MEN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CCR_MSTA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CCR_MTX, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %15, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @writeccr(%struct.mpc_i2c* %27, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 1
  %40 = or i32 %39, 1
  %41 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %42 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MPC_I2C_DR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writeb(i32 %40, i64 %45)
  %47 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @i2c_wait(%struct.mpc_i2c* %47, i32 %48, i32 1)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %25
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %144

54:                                               ; preds = %25
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %62 = load i32, i32* @CCR_MIEN, align 4
  %63 = load i32, i32* @CCR_MEN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CCR_MSTA, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CCR_TXAK, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @writeccr(%struct.mpc_i2c* %61, i32 %68)
  br label %78

70:                                               ; preds = %57
  %71 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %72 = load i32, i32* @CCR_MIEN, align 4
  %73 = load i32, i32* @CCR_MEN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CCR_MSTA, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @writeccr(%struct.mpc_i2c* %71, i32 %76)
  br label %78

78:                                               ; preds = %70, %60
  %79 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %80 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MPC_I2C_DR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readb(i64 %83)
  br label %85

85:                                               ; preds = %78, %54
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %139, %85
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %142

90:                                               ; preds = %86
  %91 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @i2c_wait(%struct.mpc_i2c* %91, i32 %92, i32 0)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %6, align 4
  br label %144

98:                                               ; preds = %90
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 2
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %105 = load i32, i32* @CCR_MIEN, align 4
  %106 = load i32, i32* @CCR_MEN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @CCR_MSTA, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @CCR_TXAK, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @writeccr(%struct.mpc_i2c* %104, i32 %111)
  br label %113

113:                                              ; preds = %103, %98
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %120 = load i32, i32* @CCR_MIEN, align 4
  %121 = load i32, i32* @CCR_MEN, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @CCR_MSTA, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @CCR_MTX, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @writeccr(%struct.mpc_i2c* %119, i32 %126)
  br label %128

128:                                              ; preds = %118, %113
  %129 = load %struct.mpc_i2c*, %struct.mpc_i2c** %7, align 8
  %130 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MPC_I2C_DR, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @readb(i64 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %86

142:                                              ; preds = %86
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %142, %96, %52
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @i2c_wait(%struct.mpc_i2c*, i32, i32) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
