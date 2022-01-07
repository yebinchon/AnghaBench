; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_do_i2c_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_do_i2c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c": Checking for I2C devices ..\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: i2c scan: found device @ 0x%x  [%s]\0A\00", align 1
@i2c_devs = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c": Completed Checking for I2C devices.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_do_i2c_scan(%struct.cx231xx* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %4, align 8
  %8 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call i32 @i2c_master_recv(%struct.i2c_client* %16, i8* %5, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %43

21:                                               ; preds = %12
  %22 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 1
  %27 = load i8**, i8*** @i2c_devs, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i8**, i8*** @i2c_devs, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  br label %40

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i8* [ %38, %33 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %39 ]
  %42 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26, i8* %41)
  br label %43

43:                                               ; preds = %40, %20
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %9

46:                                               ; preds = %9
  %47 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cx231xx_info(i8*, ...) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
