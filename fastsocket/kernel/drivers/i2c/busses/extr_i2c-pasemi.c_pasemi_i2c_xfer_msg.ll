; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.pasemi_smbus* }
%struct.pasemi_smbus = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@I2C_M_RD = common dso_local global i32 0, align 4
@MTXFIFO_START = common dso_local global i32 0, align 4
@MTXFIFO_READ = common dso_local global i32 0, align 4
@MTXFIFO_STOP = common dso_local global i32 0, align 4
@MRXFIFO_EMPTY = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@MRXFIFO_DATA_M = common dso_local global i32 0, align 4
@REG_CTL = common dso_local global i32 0, align 4
@CTL_MTR = common dso_local global i32 0, align 4
@CTL_MRR = common dso_local global i32 0, align 4
@CLK_100K_DIV = common dso_local global i32 0, align 4
@CTL_CLK_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @pasemi_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_i2c_xfer_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pasemi_smbus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %14, align 8
  store %struct.pasemi_smbus* %15, %struct.pasemi_smbus** %8, align 8
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I2C_M_RD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %25 = load i32, i32* @MTXFIFO_START, align 4
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 1
  %30 = or i32 %25, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %24, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %3
  %37 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MTXFIFO_READ, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @MTXFIFO_STOP, align 4
  br label %48

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %42, %49
  %51 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %37, i32 %50)
  %52 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %53 = call i32 @pasemi_smb_waitready(%struct.pasemi_smbus* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %131

57:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %84, %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %58
  %65 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %66 = call i32 @RXFIFO_RD(%struct.pasemi_smbus* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @MRXFIFO_EMPTY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @ENODATA, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %131

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @MRXFIFO_DATA_M, align 4
  %77 = and i32 %75, %76
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %58

87:                                               ; preds = %58
  br label %130

88:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %97, i32 %104)
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %89

109:                                              ; preds = %89
  %110 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = load i32, i32* @MTXFIFO_STOP, align 4
  br label %126

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = or i32 %120, %127
  %129 = call i32 @TXFIFO_WR(%struct.pasemi_smbus* %110, i32 %128)
  br label %130

130:                                              ; preds = %126, %87
  store i32 0, i32* %4, align 4
  br label %143

131:                                              ; preds = %71, %56
  %132 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %8, align 8
  %133 = load i32, i32* @REG_CTL, align 4
  %134 = load i32, i32* @CTL_MTR, align 4
  %135 = load i32, i32* @CTL_MRR, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CLK_100K_DIV, align 4
  %138 = load i32, i32* @CTL_CLK_M, align 4
  %139 = and i32 %137, %138
  %140 = or i32 %136, %139
  %141 = call i32 @reg_write(%struct.pasemi_smbus* %132, i32 %133, i32 %140)
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %131, %130
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @TXFIFO_WR(%struct.pasemi_smbus*, i32) #1

declare dso_local i32 @pasemi_smb_waitready(%struct.pasemi_smbus*) #1

declare dso_local i32 @RXFIFO_RD(%struct.pasemi_smbus*) #1

declare dso_local i32 @reg_write(%struct.pasemi_smbus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
