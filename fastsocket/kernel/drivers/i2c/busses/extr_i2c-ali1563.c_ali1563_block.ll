; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@HST_CNTL1_LAST = common dso_local global i32 0, align 4
@SMB_HST_CNTL1 = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i64 0, align 8
@SMB_HST_DAT0 = common dso_local global i32 0, align 4
@SMB_BLK_DAT = common dso_local global i32 0, align 4
@SMB_HST_CNTL2 = common dso_local global i32 0, align 4
@HST_CNTL2_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %union.i2c_smbus_data*, i64)* @ali1563_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1563_block(%struct.i2c_adapter* %0, %union.i2c_smbus_data* %1, i64 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %union.i2c_smbus_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @HST_CNTL1_LAST, align 4
  %11 = load i32, i32* @SMB_HST_CNTL1, align 4
  %12 = call i32 @outb_p(i32 %10, i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @I2C_SMBUS_WRITE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %5, align 8
  %18 = bitcast %union.i2c_smbus_data* %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 32
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 32, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SMB_HST_DAT0, align 4
  %33 = call i32 @outb_p(i32 %31, i32 %32)
  %34 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %5, align 8
  %35 = bitcast %union.i2c_smbus_data* %34 to i32**
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SMB_BLK_DAT, align 4
  %40 = call i32 @outb_p(i32 %38, i32 %39)
  br label %42

41:                                               ; preds = %3
  store i32 32, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32, i32* @SMB_HST_CNTL2, align 4
  %44 = call i32 @inb_p(i32 %43)
  %45 = load i32, i32* @HST_CNTL2_BLOCK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SMB_HST_CNTL2, align 4
  %48 = call i32 @outb_p(i32 %46, i32 %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %104, %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @I2C_SMBUS_WRITE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %5, align 8
  %59 = bitcast %union.i2c_smbus_data* %58 to i32**
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SMB_BLK_DAT, align 4
  %67 = call i32 @outb_p(i32 %65, i32 %66)
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %69 = call i32 @ali1563_block_start(%struct.i2c_adapter* %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %107

72:                                               ; preds = %57
  br label %103

73:                                               ; preds = %53
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %75 = call i32 @ali1563_block_start(%struct.i2c_adapter* %74)
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %107

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* @SMB_HST_DAT0, align 4
  %83 = call i32 @inb_p(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %92

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 32
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 32, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %87
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* @SMB_BLK_DAT, align 4
  %95 = call i32 @inb_p(i32 %94)
  %96 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %5, align 8
  %97 = bitcast %union.i2c_smbus_data* %96 to i32**
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %95, i32* %102, align 4
  br label %103

103:                                              ; preds = %93, %72
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %49

107:                                              ; preds = %77, %71, %49
  %108 = load i32, i32* @HST_CNTL1_LAST, align 4
  %109 = load i32, i32* @SMB_HST_CNTL1, align 4
  %110 = call i32 @outb_p(i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @ali1563_block_start(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
