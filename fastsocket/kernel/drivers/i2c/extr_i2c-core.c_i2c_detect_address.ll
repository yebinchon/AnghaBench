; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_detect_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_detect_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_client.0*, i32, %struct.i2c_board_info*)*, i32, %struct.TYPE_2__ }
%struct.i2c_client.0 = type opaque
%struct.i2c_board_info = type opaque
%struct.TYPE_2__ = type { i8* }
%struct.i2c_board_info.1 = type { i32, i8* }

@.str = private unnamed_addr constant [30 x i8] c"Invalid probe address 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_SMBUS_QUICK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s detection function provided no name for 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Creating %s at 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed creating %s at 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_driver*)* @i2c_detect_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_detect_address(%struct.i2c_client* %0, i32 %1, %struct.i2c_driver* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_driver*, align 8
  %8 = alloca %struct.i2c_board_info.1, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_driver* %2, %struct.i2c_driver** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 119
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %3
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %125

31:                                               ; preds = %21
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @i2c_check_addr(%struct.i2c_adapter* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %125

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %44 = call i64 @i2c_smbus_xfer(%struct.i2c_adapter* %41, i32 %42, i32 0, i32 0, i32 0, i32 %43, i32* null)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %125

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, -16
  %50 = icmp eq i32 %49, 80
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %55 = call i64 @i2c_smbus_xfer(%struct.i2c_adapter* %52, i32 %53, i32 0, i32 0, i32 0, i32 %54, i32* null)
  br label %56

56:                                               ; preds = %51, %47
  br label %57

57:                                               ; preds = %56, %37
  %58 = call i32 @memset(%struct.i2c_board_info.1* %8, i32 0, i32 16)
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %62 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %61, i32 0, i32 0
  %63 = load i32 (%struct.i2c_client.0*, i32, %struct.i2c_board_info*)*, i32 (%struct.i2c_client.0*, i32, %struct.i2c_board_info*)** %62, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = bitcast %struct.i2c_client* %64 to %struct.i2c_client.0*
  %66 = load i32, i32* %6, align 4
  %67 = bitcast %struct.i2c_board_info.1* %8 to %struct.i2c_board_info*
  %68 = call i32 %63(%struct.i2c_client.0* %65, i32 %66, %struct.i2c_board_info* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %57
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 0, %76 ], [ %78, %77 ]
  store i32 %80, i32* %4, align 4
  br label %125

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %8, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %90 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %89, i32 0, i32 0
  %91 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %92 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %94, i32 %95)
  br label %124

97:                                               ; preds = %81
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %8, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_dbg(i32* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %101, i32 %103)
  %105 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %106 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %105, %struct.i2c_board_info.1* %8)
  store %struct.i2c_client* %106, %struct.i2c_client** %12, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %108 = icmp ne %struct.i2c_client* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %97
  %110 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 1
  %112 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %113 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %112, i32 0, i32 1
  %114 = call i32 @list_add_tail(i32* %111, i32* %113)
  br label %123

115:                                              ; preds = %97
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %117 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %8, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds %struct.i2c_board_info.1, %struct.i2c_board_info.1* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %119, i32 %121)
  br label %123

123:                                              ; preds = %115, %109
  br label %124

124:                                              ; preds = %123, %88
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %79, %46, %36, %24
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @i2c_check_addr(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @i2c_smbus_xfer(%struct.i2c_adapter*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.i2c_board_info.1*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info.1*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
