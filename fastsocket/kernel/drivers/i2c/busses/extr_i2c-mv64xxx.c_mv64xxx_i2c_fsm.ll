; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_fsm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_fsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i64, i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MV64XXX_I2C_STATE_IDLE = common dso_local global i64 0, align 8
@MV64XXX_I2C_ACTION_SEND_STOP = common dso_local global i8* null, align 8
@MV64XXX_I2C_ACTION_SEND_ADDR_1 = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK = common dso_local global i64 0, align 8
@I2C_M_TEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_ACTION_SEND_ADDR_2 = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK = common dso_local global i8* null, align 8
@MV64XXX_I2C_ACTION_SEND_DATA = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK = common dso_local global i64 0, align 8
@MV64XXX_I2C_ACTION_CONTINUE = common dso_local global i8* null, align 8
@MV64XXX_I2C_ACTION_RCV_DATA = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_CONTROL_ACK = common dso_local global i32 0, align 4
@MV64XXX_I2C_ACTION_RCV_DATA_STOP = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"mv64xxx_i2c_fsm: Ctlr Error -- state: 0x%x, status: 0x%x, addr: 0x%x, flags: 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*, i32)* @mv64xxx_i2c_fsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_fsm(%struct.mv64xxx_i2c_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mv64xxx_i2c_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %6 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %12 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %13 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  br label %188

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %160 [
    i32 133, label %16
    i32 134, label %16
    i32 130, label %23
    i32 131, label %41
    i32 132, label %41
    i32 138, label %75
    i32 139, label %93
    i32 136, label %106
    i32 135, label %142
    i32 129, label %149
    i32 128, label %149
    i32 137, label %149
  ]

16:                                               ; preds = %14, %14
  %17 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_ADDR_1, align 8
  %18 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %19 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK, align 8
  %21 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %22 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %188

23:                                               ; preds = %14
  %24 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %25 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I2C_M_TEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_ADDR_2, align 8
  %34 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %35 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %39 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %188

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %14, %14, %40
  %42 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %43 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %48 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %53 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51, %41
  %57 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %58 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %59 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %61 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %62 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %74

63:                                               ; preds = %51, %46
  %64 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_DATA, align 8
  %65 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %66 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* @MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK, align 8
  %68 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %69 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %71 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %63, %56
  br label %188

75:                                               ; preds = %14
  %76 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %77 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %76, i32 0, i32 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @I2C_M_TEN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_ADDR_2, align 8
  %86 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %87 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %91 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %188

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %14, %92
  %94 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %95 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %100 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %101 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %103 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %104 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %188

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %14, %105
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 136
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i8*, i8** @MV64XXX_I2C_ACTION_CONTINUE, align 8
  %111 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %112 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  br label %121

113:                                              ; preds = %106
  %114 = load i8*, i8** @MV64XXX_I2C_ACTION_RCV_DATA, align 8
  %115 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %116 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %118 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %113, %109
  %122 = load i64, i64* @MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA, align 8
  %123 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %124 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %126 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %134, label %129

129:                                              ; preds = %121
  %130 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %131 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129, %121
  %135 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_ACK, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %138 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %134, %129
  br label %188

142:                                              ; preds = %14
  %143 = load i8*, i8** @MV64XXX_I2C_ACTION_RCV_DATA_STOP, align 8
  %144 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %145 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %147 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %148 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %188

149:                                              ; preds = %14, %14, %14
  %150 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %151 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %152 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %154 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %155 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  %158 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %159 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %188

160:                                              ; preds = %14
  %161 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %162 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %165 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %169 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %168, i32 0, i32 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %174 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %173, i32 0, i32 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %166, i32 %167, i32 %172, i32 %177)
  %179 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %180 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %181 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %183 = call i32 @mv64xxx_i2c_hw_init(%struct.mv64xxx_i2c_data* %182)
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  %186 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %187 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %10, %160, %149, %142, %141, %98, %84, %74, %32, %16
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @mv64xxx_i2c_hw_init(%struct.mv64xxx_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
