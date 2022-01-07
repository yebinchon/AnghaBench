; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_e1000_write_sfp_data_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_e1000_write_sfp_data_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"I2CCMD command address exceeds upper limit\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_I2CCMD_REG_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_I2CCMD_OPCODE_READ = common dso_local global i64 0, align 8
@E1000_I2CCMD = common dso_local global i32 0, align 4
@E1000_I2CCMD_PHY_TIMEOUT = common dso_local global i64 0, align 8
@E1000_I2CCMD_READY = common dso_local global i64 0, align 8
@E1000_I2CCMD_OPCODE_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"I2CCMD Write did not complete\0A\00", align 1
@E1000_I2CCMD_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"I2CCMD Error bit set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_sfp_data_byte(%struct.e1000_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @E1000_I2CCMD_SFP_DIAG_ADDR(i32 255)
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 @hw_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @E1000_ERR_PHY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %86

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @E1000_I2CCMD_REG_ADDR_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = load i64, i64* @E1000_I2CCMD_OPCODE_READ, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* @E1000_I2CCMD, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @wr32(i32 %24, i64 %25)
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %64, %18
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @E1000_I2CCMD_PHY_TIMEOUT, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = call i32 @udelay(i32 50)
  %33 = load i32, i32* @E1000_I2CCMD, align 4
  %34 = call i64 @rd32(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %31
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @E1000_I2CCMD_OPCODE_READ, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @E1000_I2CCMD_OPCODE_READ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = and i64 %46, 65280
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @E1000_I2CCMD_REG_ADDR_SHIFT, align 8
  %53 = shl i64 %51, %52
  %54 = load i64, i64* @E1000_I2CCMD_OPCODE_WRITE, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* %10, align 8
  %57 = or i64 %55, %56
  store i64 %57, i64* %9, align 8
  %58 = load i32, i32* @E1000_I2CCMD, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @wr32(i32 %58, i64 %59)
  br label %62

61:                                               ; preds = %39
  br label %67

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %31
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %27

67:                                               ; preds = %61, %27
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = call i32 @hw_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @E1000_ERR_PHY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %86

76:                                               ; preds = %67
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @E1000_I2CCMD_ERROR, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @E1000_ERR_PHY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %81, %72, %14
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @E1000_I2CCMD_SFP_DIAG_ADDR(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
