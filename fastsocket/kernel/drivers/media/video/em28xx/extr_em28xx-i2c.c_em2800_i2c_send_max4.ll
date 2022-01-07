; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_send_max4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_send_max4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i8*, i32)*, i32 (%struct.em28xx*, i32)* }

@.str = private unnamed_addr constant [41 x i8] c"writing to i2c device failed (error=%i)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EM2800_I2C_WRITE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"i2c write timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i8, i8*, i32)* @em2800_i2c_send_max4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2800_i2c_send_max4(%struct.em28xx* %0, i8 zeroext %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 4
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ true, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 128, %22
  %24 = sub nsw i32 %23, 1
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 5
  store i8 %25, i8* %26, align 1
  %27 = load i8, i8* %7, align 1
  %28 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 4
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 3
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 2
  store i8 %38, i8* %39, align 1
  br label %40

40:                                               ; preds = %35, %18
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 3
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  store i8 %54, i8* %55, align 1
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 0
  %59 = load i32 (%struct.em28xx*, i32, i8*, i32)*, i32 (%struct.em28xx*, i32, i8*, i32)** %58, align 8
  %60 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 4, %61
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 4, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 2, %67
  %69 = call i32 %59(%struct.em28xx* %60, i32 %62, i8* %66, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 2, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i8*, ...) @em28xx_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %106

79:                                               ; preds = %56
  %80 = load i32, i32* @EM2800_I2C_WRITE_TIMEOUT, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %99, %79
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %86 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %85, i32 0, i32 1
  %87 = load i32 (%struct.em28xx*, i32)*, i32 (%struct.em28xx*, i32)** %86, align 8
  %88 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %89 = call i32 %87(%struct.em28xx* %88, i32 5)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 128, %91
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %5, align 4
  br label %106

97:                                               ; preds = %84
  %98 = call i32 @msleep(i32 5)
  br label %99

99:                                               ; preds = %97
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 5
  store i32 %101, i32* %11, align 4
  br label %81

102:                                              ; preds = %81
  %103 = call i32 (i8*, ...) @em28xx_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %95, %74
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @em28xx_warn(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
