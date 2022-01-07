; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ir-kbd-i2c.c_get_key_haup_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ir-kbd-i2c.c_get_key_haup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ir hauppauge (rc5): s%d r%d t%d dev=%d code=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*, i32, i32)* @get_key_haup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_haup_common(%struct.IR_i2c* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.IR_i2c*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.IR_i2c*, %struct.IR_i2c** %7, align 8
  %21 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @i2c_master_recv(i32 %22, i8* %23, i32 %24)
  %26 = icmp ne i32 %19, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %108

30:                                               ; preds = %5
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = ashr i32 %35, 7
  %37 = and i32 %36, 1
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = ashr i32 %42, 6
  %44 = and i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = ashr i32 %49, 5
  %51 = and i32 %50, 1
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 31
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = ashr i32 %63, 2
  %65 = and i32 %64, 63
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %108

69:                                               ; preds = %30
  %70 = load i32, i32* %13, align 4
  %71 = shl i32 %70, 12
  %72 = load i32, i32* %15, align 4
  %73 = shl i32 %72, 11
  %74 = or i32 %71, %73
  %75 = load i32, i32* %16, align 4
  %76 = shl i32 %75, 6
  %77 = or i32 %74, %76
  %78 = load i32, i32* %17, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = and i32 %80, 8191
  %82 = icmp eq i32 %81, 8191
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %108

84:                                               ; preds = %69
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 30
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 31
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %108

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 64
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %17, align 4
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %97, %90, %83, %68, %27
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
