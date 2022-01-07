; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_bttv_i2c_sendbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_bttv_i2c_sendbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@I2C_HW = common dso_local global i32 0, align 4
@BT878_I2C_NOSTOP = common dso_local global i32 0, align 4
@BT848_I2C = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c" <W %02x %02x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" >\0A\00", align 1
@BT878_I2C_NOSTART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" ERR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.i2c_msg*, i32)* @bttv_i2c_sendbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_i2c_sendbytes(%struct.bttv* %0, %struct.i2c_msg* %1, i32 %2) #0 {
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
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %161

18:                                               ; preds = %3
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 25
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %22, %28
  %30 = load i32, i32* @I2C_HW, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %18
  %40 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BT848_I2C, align 4
  %46 = call i32 @btwrite(i32 %44, i32 %45)
  %47 = load %struct.bttv*, %struct.bttv** %5, align 8
  %48 = call i32 @bttv_i2c_wait_done(%struct.bttv* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %153

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %150

56:                                               ; preds = %52
  %57 = load i64, i64* @i2c_debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 1
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %59
  %75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %59
  br label %77

77:                                               ; preds = %76, %56
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %143, %77
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %146

84:                                               ; preds = %78
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 24
  %93 = load i32, i32* @I2C_HW, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @BT878_I2C_NOSTART, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %84
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103, %84
  %107 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @BT848_I2C, align 4
  %113 = call i32 @btwrite(i32 %111, i32 %112)
  %114 = load %struct.bttv*, %struct.bttv** %5, align 8
  %115 = call i32 @bttv_i2c_wait_done(%struct.bttv* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %153

119:                                              ; preds = %110
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %150

123:                                              ; preds = %119
  %124 = load i64, i64* @i2c_debug, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @BT878_I2C_NOSTOP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %126
  %140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %126
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %78

146:                                              ; preds = %78
  %147 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %4, align 4
  br label %161

150:                                              ; preds = %122, %55
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %150, %118, %51
  %154 = load i64, i64* @i2c_debug, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %159, %146, %15
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bttv_i2c_wait_done(%struct.bttv*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
