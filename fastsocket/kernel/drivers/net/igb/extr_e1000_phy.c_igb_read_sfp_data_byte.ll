; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_read_sfp_data_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_read_sfp_data_byte.c"
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
@.str.1 = private unnamed_addr constant [30 x i8] c"I2CCMD Read did not complete\0A\00", align 1
@E1000_I2CCMD_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"I2CCMD Error bit set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_read_sfp_data_byte(%struct.e1000_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
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
  br label %67

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

27:                                               ; preds = %41, %18
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @E1000_I2CCMD_PHY_TIMEOUT, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = call i32 @udelay(i32 50)
  %33 = load i32, i32* @E1000_I2CCMD, align 4
  %34 = call i64 @rd32(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %27

44:                                               ; preds = %39, %27
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = call i32 @hw_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @E1000_ERR_PHY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %44
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @E1000_I2CCMD_ERROR, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = call i32 @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @E1000_ERR_PHY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %53
  %63 = load i64, i64* %10, align 8
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %58, %49, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
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
