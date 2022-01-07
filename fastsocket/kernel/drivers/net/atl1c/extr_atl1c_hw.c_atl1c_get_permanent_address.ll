; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_get_permanent_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_get_permanent_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i64, i32 }

@REG_OTP_CTRL = common dso_local global i32 0, align 4
@athr_l1c = common dso_local global i64 0, align 8
@athr_l2c = common dso_local global i64 0, align 8
@OTP_CTRL_CLK_EN = common dso_local global i64 0, align 8
@athr_l2c_b = common dso_local global i64 0, align 8
@athr_l2c_b2 = common dso_local global i64 0, align 8
@MIIDBG_ANACTRL = common dso_local global i32 0, align 4
@ANACTRL_HB_EN = common dso_local global i32 0, align 4
@MIIDBG_VOLT_CTRL = common dso_local global i32 0, align 4
@VOLT_CTRL_SWLOWEST = common dso_local global i32 0, align 4
@REG_TWSI_CTRL = common dso_local global i32 0, align 4
@TWSI_CTRL_SW_LDSTART = common dso_local global i64 0, align 8
@AT_TWSI_EEPROM_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_hw*)* @atl1c_get_permanent_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_get_permanent_address(%struct.atl1c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %10 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %11 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @atl1c_read_current_addr(%struct.atl1c_hw* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %179

16:                                               ; preds = %1
  %17 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %18 = load i32, i32* @REG_OTP_CTRL, align 4
  %19 = call i32 @AT_READ_REG(%struct.atl1c_hw* %17, i32 %18, i64* %5)
  %20 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %21 = call i64 @atl1c_check_eeprom_exist(%struct.atl1c_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %122

23:                                               ; preds = %16
  %24 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @athr_l1c, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %31 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @athr_l2c, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29, %23
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @OTP_CTRL_CLK_EN, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @OTP_CTRL_CLK_EN, align 8
  %42 = load i64, i64* %5, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %45 = load i32, i32* @REG_OTP_CTRL, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %44, i32 %45, i64 %46)
  %48 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %49 = call i32 @AT_WRITE_FLUSH(%struct.atl1c_hw* %48)
  %50 = call i32 @msleep(i32 1)
  br label %51

51:                                               ; preds = %40, %35
  br label %52

52:                                               ; preds = %51, %29
  %53 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %54 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @athr_l2c_b, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %60 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @athr_l2c_b2, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %58, %52
  %65 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %66 = load i32, i32* @MIIDBG_ANACTRL, align 4
  %67 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %65, i32 %66, i32* %7)
  %68 = load i32, i32* @ANACTRL_HB_EN, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %73 = load i32, i32* @MIIDBG_ANACTRL, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %72, i32 %73, i32 %74)
  %76 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %77 = load i32, i32* @MIIDBG_VOLT_CTRL, align 4
  %78 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %76, i32 %77, i32* %7)
  %79 = load i32, i32* @VOLT_CTRL_SWLOWEST, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %83 = load i32, i32* @MIIDBG_VOLT_CTRL, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %82, i32 %83, i32 %84)
  %86 = call i32 @udelay(i32 20)
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %64, %58
  %88 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %89 = load i32, i32* @REG_TWSI_CTRL, align 4
  %90 = call i32 @AT_READ_REG(%struct.atl1c_hw* %88, i32 %89, i64* %6)
  %91 = load i64, i64* @TWSI_CTRL_SW_LDSTART, align 8
  %92 = load i64, i64* %6, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %6, align 8
  %94 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %95 = load i32, i32* @REG_TWSI_CTRL, align 4
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %94, i32 %95, i64 %96)
  store i64 0, i64* %4, align 8
  br label %98

98:                                               ; preds = %113, %87
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @AT_TWSI_EEPROM_TIMEOUT, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = call i32 @msleep(i32 10)
  %104 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %105 = load i32, i32* @REG_TWSI_CTRL, align 4
  %106 = call i32 @AT_READ_REG(%struct.atl1c_hw* %104, i32 %105, i64* %6)
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @TWSI_CTRL_SW_LDSTART, align 8
  %109 = and i64 %107, %108
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %116

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %4, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %4, align 8
  br label %98

116:                                              ; preds = %111, %98
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @AT_TWSI_EEPROM_TIMEOUT, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 -1, i32* %2, align 4
  br label %179

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %16
  %123 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %124 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @athr_l1c, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %130 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @athr_l2c, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128, %122
  %135 = load i64, i64* @OTP_CTRL_CLK_EN, align 8
  %136 = xor i64 %135, -1
  %137 = load i64, i64* %5, align 8
  %138 = and i64 %137, %136
  store i64 %138, i64* %5, align 8
  %139 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %140 = load i32, i32* @REG_OTP_CTRL, align 4
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %139, i32 %140, i64 %141)
  %143 = call i32 @msleep(i32 1)
  br label %144

144:                                              ; preds = %134, %128
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %144
  %148 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %149 = load i32, i32* @MIIDBG_ANACTRL, align 4
  %150 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %148, i32 %149, i32* %7)
  %151 = load i32, i32* @ANACTRL_HB_EN, align 4
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %155 = load i32, i32* @MIIDBG_ANACTRL, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %154, i32 %155, i32 %156)
  %158 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %159 = load i32, i32* @MIIDBG_VOLT_CTRL, align 4
  %160 = call i32 @atl1c_read_phy_dbg(%struct.atl1c_hw* %158, i32 %159, i32* %7)
  %161 = load i32, i32* @VOLT_CTRL_SWLOWEST, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %7, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %7, align 4
  %165 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %166 = load i32, i32* @MIIDBG_VOLT_CTRL, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %165, i32 %166, i32 %167)
  %169 = call i32 @udelay(i32 20)
  br label %170

170:                                              ; preds = %147, %144
  %171 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %172 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %173 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @atl1c_read_current_addr(%struct.atl1c_hw* %171, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %179

178:                                              ; preds = %170
  store i32 -1, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %177, %120, %15
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i64 @atl1c_read_current_addr(%struct.atl1c_hw*, i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i64*) #1

declare dso_local i64 @atl1c_check_eeprom_exist(%struct.atl1c_hw*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i64) #1

declare dso_local i32 @AT_WRITE_FLUSH(%struct.atl1c_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1c_read_phy_dbg(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @atl1c_write_phy_dbg(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
