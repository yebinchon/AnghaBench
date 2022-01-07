; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ir-kbd-i2c.c_get_key_avermedia_cardbus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ir-kbd-i2c.c_get_key_avermedia_cardbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"read key 0x%02x/0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"warning: invalid key group 0x%02x for key 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i8*, i8*)* @get_key_avermedia_cardbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_avermedia_cardbus(%struct.IR_i2c* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  store i8* %8, i8** %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %17 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %18 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  store i8* %9, i8** %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 2
  %26 = load i32, i32* @I2C_M_RD, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  %28 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %29 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 8
  store i8 13, i8* %8, align 1
  %33 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %39 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 2)
  %40 = icmp ne i32 2, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %3
  %42 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %102

45:                                               ; preds = %3
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %102

50:                                               ; preds = %45
  store i8 11, i8* %8, align 1
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  store i8* %10, i8** %52, align 8
  %53 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %54 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %59 = call i32 @i2c_transfer(i32 %57, %struct.i2c_msg* %58, i32 2)
  %60 = icmp ne i32 2, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %102

65:                                               ; preds = %50
  %66 = load i8, i8* %10, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 255
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %102

70:                                               ; preds = %65
  %71 = load i8, i8* %9, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %10, align 1
  %74 = zext i8 %73 to i32
  %75 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %70
  %84 = load i8, i8* %10, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 1
  %93 = shl i32 %92, 6
  %94 = load i8, i8* %9, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %95, %93
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %9, align 1
  %98 = load i8, i8* %9, align 1
  %99 = load i8*, i8** %6, align 8
  store i8 %98, i8* %99, align 1
  %100 = load i8, i8* %9, align 1
  %101 = load i8*, i8** %7, align 8
  store i8 %100, i8* %101, align 1
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %69, %61, %49, %41
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
