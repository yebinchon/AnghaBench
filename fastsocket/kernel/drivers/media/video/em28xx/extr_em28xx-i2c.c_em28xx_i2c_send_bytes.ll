; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em28xx_i2c_send_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em28xx_i2c_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i8, i8*, i16)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, i8*, i16, i32)* @em28xx_i2c_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_i2c_send_bytes(i8* %0, i8 zeroext %1, i8* %2, i16 signext %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.em28xx*, align 8
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.em28xx*
  store %struct.em28xx* %14, %struct.em28xx** %12, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %12, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 0
  %17 = load i32 (%struct.em28xx*, i32, i8, i8*, i16)*, i32 (%struct.em28xx*, i32, i8, i8*, i16)** %16, align 8
  %18 = load %struct.em28xx*, %struct.em28xx** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 2, i32 3
  %23 = load i8, i8* %7, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = load i16, i16* %9, align 2
  %26 = call i32 %17(%struct.em28xx* %18, i32 %22, i8 zeroext %23, i8* %24, i16 signext %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
