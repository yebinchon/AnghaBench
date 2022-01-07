; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_by_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_by_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I801_BLOCK_DATA = common dso_local global i32 0, align 4
@ENABLE_INT9 = common dso_local global i32 0, align 4
@I801_PEC_EN = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, %union.i2c_smbus_data*, i8, i32)* @i801_block_transaction_by_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_block_transaction_by_block(%struct.i801_priv* %0, %union.i2c_smbus_data* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i801_priv*, align 8
  %7 = alloca %union.i2c_smbus_data*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %6, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %14 = call i32 @SMBHSTCNT(%struct.i801_priv* %13)
  %15 = call i8* @inb_p(i32 %14)
  %16 = load i8, i8* %8, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %4
  %22 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %7, align 8
  %23 = bitcast %union.i2c_smbus_data* %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %29 = call i32 @SMBHSTDAT0(%struct.i801_priv* %28)
  %30 = call i32 @outb_p(i32 %27, i32 %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %47, %21
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %7, align 8
  %37 = bitcast %union.i2c_smbus_data* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %45 = call i32 @SMBBLKDAT(%struct.i801_priv* %44)
  %46 = call i32 @outb_p(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %4
  %52 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %53 = load i32, i32* @I801_BLOCK_DATA, align 4
  %54 = load i32, i32* @ENABLE_INT9, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @I801_PEC_EN, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %56, %57
  %59 = or i32 %55, %58
  %60 = call i32 @i801_transaction(%struct.i801_priv* %52, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %112

65:                                               ; preds = %51
  %66 = load i8, i8* %8, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @I2C_SMBUS_READ, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %65
  %72 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %73 = call i32 @SMBHSTDAT0(%struct.i801_priv* %72)
  %74 = call i8* @inb_p(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %71
  %83 = load i32, i32* @EPROTO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %112

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %7, align 8
  %88 = bitcast %union.i2c_smbus_data* %87 to i32**
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %107, %85
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %97 = call i32 @SMBBLKDAT(%struct.i801_priv* %96)
  %98 = call i8* @inb_p(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %7, align 8
  %101 = bitcast %union.i2c_smbus_data* %100 to i32**
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  br label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %91

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110, %65
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %82, %63
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i8* @inb_p(i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i801_priv*) #1

declare dso_local i32 @SMBBLKDAT(%struct.i801_priv*) #1

declare dso_local i32 @i801_transaction(%struct.i801_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
