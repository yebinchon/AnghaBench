; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_pinnacle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_pinnacle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Pinnacle PCTV key %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*, i32, i32, i32)* @get_key_pinnacle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_pinnacle(%struct.IR_i2c* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.IR_i2c*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %19 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %22 = call i32 @i2c_master_recv(i32 %20, i8* %21, i32 4)
  %23 = icmp ne i32 4, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = call i32 (i8*, ...) @i2cdprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %96

28:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %15, align 4
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(i8* %31)
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %34
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %43, %44
  %46 = add i32 %45, 1
  %47 = urem i32 %46, 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %52, %53
  %55 = urem i32 %54, 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %42, %34
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %15, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %29

64:                                               ; preds = %29
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %96

68:                                               ; preds = %64
  %69 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %70 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %96

75:                                               ; preds = %68
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %78 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 254
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %17, align 4
  %83 = and i32 %82, 64
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %96

86:                                               ; preds = %81, %75
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %17, align 4
  %89 = urem i32 %88, %87
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 (i8*, ...) @i2cdprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32 1, i32* %7, align 4
  br label %96

96:                                               ; preds = %86, %85, %74, %67, %24
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @i2cdprintk(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
