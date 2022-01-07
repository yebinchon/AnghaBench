; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_get_key_pinnacle_usb_grey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_get_key_pinnacle_usb_grey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"key %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_get_key_pinnacle_usb_grey(%struct.IR_i2c* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8], align 1
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %10 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %13 = call i32 @i2c_master_recv(i32 %11, i8* %12, i32 3)
  %14 = icmp ne i32 3, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @i2cdprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 63
  %24 = call i32 (i8*, ...) @i2cdprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %43

30:                                               ; preds = %19
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 63
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 63
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %7, align 8
  store i8 %41, i8* %42, align 1
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %30, %29, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @i2cdprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
