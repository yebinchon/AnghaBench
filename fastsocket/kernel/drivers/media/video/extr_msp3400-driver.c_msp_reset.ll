; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@msp_reset.reset_off = internal global [3 x i32] [i32 129, i32 128, i32 0], align 4
@msp_reset.reset_on = internal global [3 x i32] [i32 129, i32 0, i32 0], align 4
@msp_reset.write = internal global [3 x i32] [i32 129, i32 0, i32 30], align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"msp_reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"chip reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_reset(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x %struct.i2c_msg], align 16
  %6 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %13 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 ptrtoint ([3 x i32]* @msp_reset.reset_off to i32), i32* %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i64 1
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %24 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  store i32 3, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  store i32 ptrtoint ([3 x i32]* @msp_reset.reset_on to i32), i32* %28, align 4
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  store i32 3, i32* %35, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 3
  store i32 ptrtoint ([3 x i32]* @msp_reset.write to i32), i32* %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 1
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 1
  %43 = load i32, i32* @I2C_M_RD, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %42, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 2
  store i32 2, i32* %46, align 8
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 3
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %49 = ptrtoint i32* %48 to i32
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @msp_debug, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = call i32 @v4l_dbg(i32 3, i32 %50, %struct.i2c_client* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %57 = call i32 @i2c_transfer(i32 %55, %struct.i2c_msg* %56, i32 1)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %73, label %59

59:                                               ; preds = %1
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 1
  %64 = call i32 @i2c_transfer(i32 %62, %struct.i2c_msg* %63, i32 1)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %71 = call i32 @i2c_transfer(i32 %69, %struct.i2c_msg* %70, i32 2)
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %66, %59, %1
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = call i32 @v4l_err(%struct.i2c_client* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
