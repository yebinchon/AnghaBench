; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_bttv_i2c_readbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_bttv_i2c_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@I2C_HW = common dso_local global i32 0, align 4
@BT848_I2C_W3B = common dso_local global i32 0, align 4
@BT878_I2C_NOSTOP = common dso_local global i32 0, align 4
@BT878_I2C_NOSTART = common dso_local global i32 0, align 4
@BT848_I2C = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" <R %02x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" =%02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" >\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" ERR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.i2c_msg*, i32)* @bttv_i2c_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_i2c_readbytes(%struct.bttv* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %112, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %11
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 25
  %22 = or i32 %21, 16777216
  %23 = load i32, i32* @I2C_HW, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i32, i32* @BT848_I2C_W3B, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %17
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @BT878_I2C_NOSTART, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BT848_I2C, align 4
  %59 = call i32 @btwrite(i32 %57, i32 %58)
  %60 = load %struct.bttv*, %struct.bttv** %5, align 8
  %61 = call i32 @bttv_i2c_wait_done(%struct.bttv* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %122

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %119

69:                                               ; preds = %65
  %70 = load i32, i32* @BT848_I2C, align 4
  %71 = call i64 @btread(i32 %70)
  %72 = trunc i64 %71 to i32
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load i64, i64* @i2c_debug, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %69
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @BT878_I2C_NOSTART, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 1
  %93 = add nsw i32 %92, 1
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %88, %83
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %95
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %95
  br label %111

111:                                              ; preds = %110, %69
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %11

115:                                              ; preds = %11
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %4, align 4
  br label %130

119:                                              ; preds = %68
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %119, %64
  %123 = load i64, i64* @i2c_debug, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %115
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bttv_i2c_wait_done(%struct.bttv*) #1

declare dso_local i64 @btread(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
