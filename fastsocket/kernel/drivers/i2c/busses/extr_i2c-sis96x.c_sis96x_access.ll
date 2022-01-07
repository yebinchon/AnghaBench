; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }

@SMB_ADDR = common dso_local global i32 0, align 4
@SIS96x_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMB_CMD = common dso_local global i32 0, align 4
@SMB_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @sis96x_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis96x_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %17 = load i32, i32* %14, align 4
  switch i32 %17, label %112 [
    i32 133, label %18
    i32 136, label %29
    i32 135, label %49
    i32 134, label %74
    i32 132, label %74
  ]

18:                                               ; preds = %7
  %19 = load i32, i32* @SMB_ADDR, align 4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 127
  %22 = shl i32 %21, 1
  %23 = load i8, i8* %12, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 1
  %26 = or i32 %22, %25
  %27 = call i32 @sis96x_write(i32 %19, i32 %26)
  %28 = load i32, i32* @SIS96x_QUICK, align 4
  store i32 %28, i32* %14, align 4
  br label %119

29:                                               ; preds = %7
  %30 = load i32, i32* @SMB_ADDR, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 127
  %33 = shl i32 %32, 1
  %34 = load i8, i8* %12, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 1
  %37 = or i32 %33, %36
  %38 = call i32 @sis96x_write(i32 %30, i32 %37)
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i32, i32* @SMB_CMD, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @sis96x_write(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %29
  store i32 131, i32* %14, align 4
  br label %119

49:                                               ; preds = %7
  %50 = load i32, i32* @SMB_ADDR, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 127
  %53 = shl i32 %52, 1
  %54 = load i8, i8* %12, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 1
  %57 = or i32 %53, %56
  %58 = call i32 @sis96x_write(i32 %50, i32 %57)
  %59 = load i32, i32* @SMB_CMD, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @sis96x_write(i32 %59, i32 %60)
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %49
  %68 = load i32, i32* @SMB_BYTE, align 4
  %69 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %70 = bitcast %union.i2c_smbus_data* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sis96x_write(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %49
  store i32 130, i32* %14, align 4
  br label %119

74:                                               ; preds = %7, %7
  %75 = load i32, i32* @SMB_ADDR, align 4
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 127
  %78 = shl i32 %77, 1
  %79 = load i8, i8* %12, align 1
  %80 = sext i8 %79 to i32
  %81 = and i32 %80, 1
  %82 = or i32 %78, %81
  %83 = call i32 @sis96x_write(i32 %75, i32 %82)
  %84 = load i32, i32* @SMB_CMD, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @sis96x_write(i32 %84, i32 %85)
  %87 = load i8, i8* %12, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %74
  %93 = load i32, i32* @SMB_BYTE, align 4
  %94 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %95 = bitcast %union.i2c_smbus_data* %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 255
  %98 = call i32 @sis96x_write(i32 %93, i32 %97)
  %99 = load i32, i32* @SMB_BYTE, align 4
  %100 = add nsw i32 %99, 1
  %101 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %102 = bitcast %union.i2c_smbus_data* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 65280
  %105 = ashr i32 %104, 8
  %106 = call i32 @sis96x_write(i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %92, %74
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, 134
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 129, i32 128
  store i32 %111, i32* %14, align 4
  br label %119

112:                                              ; preds = %7
  %113 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %114 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %113, i32 0, i32 0
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @dev_warn(i32* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EOPNOTSUPP, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %8, align 4
  br label %158

119:                                              ; preds = %107, %73, %48, %18
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @sis96x_transaction(i32 %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %8, align 4
  br label %158

126:                                              ; preds = %119
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 129
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i8, i8* %12, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @SIS96x_QUICK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %129
  store i32 0, i32* %8, align 4
  br label %158

140:                                              ; preds = %135, %126
  %141 = load i32, i32* %14, align 4
  switch i32 %141, label %157 [
    i32 131, label %142
    i32 130, label %142
    i32 128, label %147
    i32 129, label %147
  ]

142:                                              ; preds = %140, %140
  %143 = load i32, i32* @SMB_BYTE, align 4
  %144 = call i32 @sis96x_read(i32 %143)
  %145 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %146 = bitcast %union.i2c_smbus_data* %145 to i32*
  store i32 %144, i32* %146, align 4
  br label %157

147:                                              ; preds = %140, %140
  %148 = load i32, i32* @SMB_BYTE, align 4
  %149 = call i32 @sis96x_read(i32 %148)
  %150 = load i32, i32* @SMB_BYTE, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @sis96x_read(i32 %151)
  %153 = shl i32 %152, 8
  %154 = add nsw i32 %149, %153
  %155 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %156 = bitcast %union.i2c_smbus_data* %155 to i32*
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %140, %147, %142
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %157, %139, %124, %112
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i32 @sis96x_write(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @sis96x_transaction(i32) #1

declare dso_local i32 @sis96x_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
