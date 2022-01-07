; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_w83791d_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_w83791d_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i16, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83791D_REG_CONFIG = common dso_local global i32 0, align 4
@W83791D_REG_BANK = common dso_local global i32 0, align 4
@W83791D_REG_CHIPMAN = common dso_local global i32 0, align 4
@W83791D_REG_I2C_ADDR = common dso_local global i32 0, align 4
@W83791D_REG_WCHIPID = common dso_local global i32 0, align 4
@w83791d = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"w83791d: Ignoring 'force' parameter for unknown chip at adapter %d, address 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"w83791d\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @w83791d_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83791d_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  store i16 %17, i16* %11, align 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %125

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @W83791D_REG_CONFIG, align 4
  %31 = call i32 @w83791d_read(%struct.i2c_client* %29, i32 %30)
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %125

37:                                               ; preds = %28
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = load i32, i32* @W83791D_REG_BANK, align 4
  %40 = call i32 @w83791d_read(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load i32, i32* @W83791D_REG_CHIPMAN, align 4
  %43 = call i32 @w83791d_read(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 7
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 163
  br i1 %53, label %61, label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 92
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %51
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %125

64:                                               ; preds = %58, %54
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %67 = load i32, i32* @W83791D_REG_I2C_ADDR, align 4
  %68 = call i32 @w83791d_read(%struct.i2c_client* %66, i32 %67)
  %69 = load i16, i16* %11, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %125

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %25
  %77 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %78 = load i32, i32* @W83791D_REG_BANK, align 4
  %79 = call i32 @w83791d_read(%struct.i2c_client* %77, i32 %78)
  %80 = and i32 %79, 120
  store i32 %80, i32* %9, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %82 = load i32, i32* @W83791D_REG_BANK, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, 128
  %85 = call i32 @w83791d_write(%struct.i2c_client* %81, i32 %82, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %76
  %89 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %90 = load i32, i32* @W83791D_REG_CHIPMAN, align 4
  %91 = call i32 @w83791d_read(%struct.i2c_client* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %125

97:                                               ; preds = %88
  %98 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %99 = load i32, i32* @W83791D_REG_WCHIPID, align 4
  %100 = call i32 @w83791d_read(%struct.i2c_client* %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 113
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @w83791d, align 4
  store i32 %104, i32* %6, align 4
  br label %118

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %110 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %109, i32 0, i32 0
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %112 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %111)
  %113 = load i16, i16* %11, align 2
  %114 = call i32 @dev_warn(i32* %110, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %112, i16 zeroext %113)
  br label %115

115:                                              ; preds = %108, %105
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %125

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118, %76
  %120 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %121 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @I2C_NAME_SIZE, align 4
  %124 = call i32 @strlcpy(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %119, %115, %94, %72, %61, %34, %22
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i16 zeroext) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
