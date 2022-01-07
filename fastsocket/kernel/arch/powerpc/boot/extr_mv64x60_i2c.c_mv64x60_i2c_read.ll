; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60_i2c.c_mv64x60_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60_i2c.c_mv64x60_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctlr_base = common dso_local global i32* null, align 8
@MV64x60_I2C_REG_SOFT_RESET = common dso_local global i32 0, align 4
@MV64x60_I2C_REG_SLAVE_ADDR = common dso_local global i32 0, align 4
@MV64x60_I2C_REG_EXT_SLAVE_ADDR = common dso_local global i32 0, align 4
@MV64x60_I2C_REG_BAUD = common dso_local global i32 0, align 4
@MV64x60_I2C_CONTROL_TWSIEN = common dso_local global i32 0, align 4
@MV64x60_I2C_STATUS_NO_STATUS = common dso_local global i32 0, align 4
@MV64x60_I2C_CONTROL_START = common dso_local global i32 0, align 4
@MV64x60_I2C_STATUS_MAST_START = common dso_local global i32 0, align 4
@MV64x60_I2C_STATUS_MAST_WR_ADDR_ACK = common dso_local global i32 0, align 4
@MV64x60_I2C_STATUS_MAST_WR_ACK = common dso_local global i32 0, align 4
@MV64x60_I2C_STATUS_MAST_REPEAT_START = common dso_local global i32 0, align 4
@MV64x60_I2C_STATUS_MAST_RD_ADDR_ACK = common dso_local global i32 0, align 4
@MV64x60_I2C_CONTROL_ACK = common dso_local global i32 0, align 4
@MV64x60_I2C_STATUS_MAST_RD_DATA_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"errors on iteration %d\0A\00", align 1
@MV64x60_I2C_STATUS_MAST_RD_DATA_NO_ACK = common dso_local global i32 0, align 4
@MV64x60_I2C_CONTROL_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv64x60_i2c_read(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** @ctlr_base, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %157

19:                                               ; preds = %5
  %20 = load i32*, i32** @ctlr_base, align 8
  %21 = load i32, i32* @MV64x60_I2C_REG_SOFT_RESET, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @out_le32(i32* %23, i32 0)
  %25 = load i32*, i32** @ctlr_base, align 8
  %26 = load i32, i32* @MV64x60_I2C_REG_SLAVE_ADDR, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @out_le32(i32* %28, i32 0)
  %30 = load i32*, i32** @ctlr_base, align 8
  %31 = load i32, i32* @MV64x60_I2C_REG_EXT_SLAVE_ADDR, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @out_le32(i32* %33, i32 0)
  %35 = load i32*, i32** @ctlr_base, align 8
  %36 = load i32, i32* @MV64x60_I2C_REG_BAUD, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @out_le32(i32* %38, i32 36)
  %40 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  %41 = load i32, i32* @MV64x60_I2C_STATUS_NO_STATUS, align 4
  %42 = call i64 @mv64x60_i2c_control(i32 %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %157

45:                                               ; preds = %19
  %46 = load i32, i32* @MV64x60_I2C_CONTROL_START, align 4
  %47 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @MV64x60_I2C_STATUS_MAST_START, align 4
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i64 @mv64x60_i2c_control(i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %157

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, -2
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @MV64x60_I2C_STATUS_MAST_WR_ADDR_ACK, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @mv64x60_i2c_write_byte(i32 %60, i32 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %157

66:                                               ; preds = %55
  %67 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* @MV64x60_I2C_STATUS_MAST_WR_ACK, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i64 @mv64x60_i2c_write_byte(i32 %73, i32 %74, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %157

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @mv64x60_i2c_write_byte(i32 %81, i32 %82, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 -1, i32* %6, align 4
  br label %157

87:                                               ; preds = %80
  %88 = load i32, i32* @MV64x60_I2C_CONTROL_START, align 4
  %89 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* @MV64x60_I2C_STATUS_MAST_REPEAT_START, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @mv64x60_i2c_control(i32 %92, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 -1, i32* %6, align 4
  br label %157

97:                                               ; preds = %87
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* @MV64x60_I2C_STATUS_MAST_RD_ADDR_ACK, align 4
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i64 @mv64x60_i2c_write_byte(i32 %102, i32 %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 -1, i32* %6, align 4
  br label %157

108:                                              ; preds = %97
  %109 = load i32, i32* @MV64x60_I2C_CONTROL_ACK, align 4
  %110 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* @MV64x60_I2C_STATUS_MAST_RD_DATA_ACK, align 4
  store i32 %112, i32* %15, align 4
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %130, %108
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @mv64x60_i2c_read_byte(i32 %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %124)
  store i32 -1, i32* %6, align 4
  br label %157

126:                                              ; preds = %117
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  br label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %113

133:                                              ; preds = %113
  %134 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* @MV64x60_I2C_STATUS_MAST_RD_DATA_NO_ACK, align 4
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @mv64x60_i2c_read_byte(i32 %136, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store i32 -1, i32* %6, align 4
  br label %157

142:                                              ; preds = %133
  %143 = load i32, i32* %13, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  %146 = load i32, i32* @MV64x60_I2C_CONTROL_STOP, align 4
  %147 = load i32, i32* @MV64x60_I2C_CONTROL_TWSIEN, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* @MV64x60_I2C_STATUS_NO_STATUS, align 4
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i64 @mv64x60_i2c_control(i32 %150, i32 %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  store i32 -1, i32* %6, align 4
  br label %157

155:                                              ; preds = %142
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %155, %154, %141, %123, %107, %96, %86, %78, %65, %54, %44, %18
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i64 @mv64x60_i2c_control(i32, i32) #1

declare dso_local i64 @mv64x60_i2c_write_byte(i32, i32, i32) #1

declare dso_local i32 @mv64x60_i2c_read_byte(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
