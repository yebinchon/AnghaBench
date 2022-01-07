; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-eeprom.c_pvr2_eeprom_fetch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-eeprom.c_pvr2_eeprom_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to allocate memory required to read eeprom\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Value for eeprom addr from controller was 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Examining %d byte eeprom at location 0x%x using %d bit addressing\00", align 1
@I2C_M_RD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"eeprom fetch set offs err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pvr2_hdw*)* @pvr2_eeprom_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pvr2_eeprom_fetch(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca [2 x %struct.i2c_msg], align 16
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @EEPROM_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %21 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, ...) @trace_eeprom(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %28 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 4096, i32 256
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 16, i32 8
  %49 = call i32 (i8*, i32, ...) @trace_eeprom(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 16
  %53 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 3
  store i64 0, i64* %54, align 16
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 1
  %59 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %62 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* @I2C_M_RD, align 8
  %68 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @EEPROM_SIZE, align 4
  %72 = call i32 @memset(i32* %70, i32 0, i32 %71)
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %128, %36
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @EEPROM_SIZE, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %73
  store i32 16, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %78, %79
  %81 = load i32, i32* @EEPROM_SIZE, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @EEPROM_SIZE, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @EEPROM_SIZE, align 4
  %91 = sub i32 %89, %90
  %92 = add i32 %88, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = lshr i32 %96, 8
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %99, i32* %100, align 4
  br label %104

101:                                              ; preds = %87
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = load i32, i32* %12, align 4
  %106 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %115 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %114, i32 0, i32 1
  %116 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %117 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %118 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %117)
  %119 = call i32 @i2c_transfer(i32* %115, %struct.i2c_msg* %116, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = icmp ne i32 %119, 2
  br i1 %120, label %121, label %127

121:                                              ; preds = %104
  %122 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @kfree(i32* %125)
  store i32* null, i32** %2, align 8
  br label %134

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %13, align 4
  br label %73

132:                                              ; preds = %73
  %133 = load i32*, i32** %5, align 8
  store i32* %133, i32** %2, align 8
  br label %134

134:                                              ; preds = %132, %121, %19
  %135 = load i32*, i32** %2, align 8
  ret i32* %135
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @trace_eeprom(i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
