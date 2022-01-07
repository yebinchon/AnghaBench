; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_full_eeprom_fetch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_full_eeprom_fetch.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pvr2_hdw*)* @pvr2_full_eeprom_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pvr2_full_eeprom_fetch(%struct.pvr2_hdw* %0) #0 {
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
  br label %137

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
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EEPROM_SIZE, align 4
  br label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 256, %43 ]
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 16, i32 8
  %52 = call i32 (i8*, i32, ...) @trace_eeprom(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 16
  %56 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 3
  store i64 0, i64* %57, align 16
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 1
  %62 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* @I2C_M_RD, align 8
  %71 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @EEPROM_SIZE, align 4
  %75 = call i32 @memset(i32* %73, i32 0, i32 %74)
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %131, %44
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @EEPROM_SIZE, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %135

80:                                               ; preds = %76
  store i32 16, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %81, %82
  %84 = load i32, i32* @EEPROM_SIZE, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @EEPROM_SIZE, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub i32 %87, %88
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @EEPROM_SIZE, align 4
  %94 = sub nsw i32 %92, %93
  %95 = add i32 %91, %94
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  %100 = lshr i32 %99, 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %102, i32* %103, align 4
  br label %107

104:                                              ; preds = %90
  %105 = load i32, i32* %9, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = load i32, i32* %12, align 4
  %109 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 1
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  %117 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %118 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %117, i32 0, i32 1
  %119 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %120 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %4, i64 0, i64 0
  %121 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %120)
  %122 = call i32 @i2c_transfer(i32* %118, %struct.i2c_msg* %119, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = icmp ne i32 %122, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @kfree(i32* %128)
  store i32* null, i32** %2, align 8
  br label %137

130:                                              ; preds = %107
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %13, align 4
  br label %76

135:                                              ; preds = %76
  %136 = load i32*, i32** %5, align 8
  store i32* %136, i32** %2, align 8
  br label %137

137:                                              ; preds = %135, %124, %19
  %138 = load i32*, i32** %2, align 8
  ret i32* %138
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
