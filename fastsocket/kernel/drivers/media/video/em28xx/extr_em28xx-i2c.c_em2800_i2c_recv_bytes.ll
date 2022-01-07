; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_recv_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_recv_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i32, i8*, i32)* }

@.str = private unnamed_addr constant [54 x i8] c"preparing read at i2c address 0x%x failed (error=%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"reading from i2c device at 0x%x failed (error=%i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i8, i8*, i32)* @em2800_i2c_recv_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2800_i2c_recv_bytes(%struct.em28xx* %0, i8 zeroext %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %12 = load i8, i8* %7, align 1
  %13 = call i32 @em2800_i2c_check_for_device(%struct.em28xx* %11, i8 zeroext %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i8, i8* %7, align 1
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @em28xx_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 zeroext %17, i32 %18)
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  %24 = load i32 (%struct.em28xx*, i32, i32, i8*, i32)*, i32 (%struct.em28xx*, i32, i32, i8*, i32)** %23, align 8
  %25 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 %24(%struct.em28xx* %25, i32 0, i32 3, i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i8, i8* %7, align 1
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @em28xx_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %31, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @em2800_i2c_check_for_device(%struct.em28xx*, i8 zeroext) #1

declare dso_local i32 @em28xx_warn(i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
