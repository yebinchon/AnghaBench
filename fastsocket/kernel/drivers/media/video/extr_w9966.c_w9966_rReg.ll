; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_rReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_rReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i32, i32 }

@IEEE1284_ADDR = common dso_local global i32 0, align 4
@IEEE1284_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9966_dev*, i32)* @w9966_rReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9966_rReg(%struct.w9966_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w9966_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.w9966_dev* %0, %struct.w9966_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 31
  %10 = or i32 128, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %6, align 1
  %12 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %13 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %16 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE1284_ADDR, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @parport_negotiate(i32 %14, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %25 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @parport_write(i32 %26, i8* %6, i32 1)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %52

30:                                               ; preds = %23
  %31 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %32 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %35 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE1284_DATA, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @parport_negotiate(i32 %33, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %52

42:                                               ; preds = %30
  %43 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %44 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @parport_read(i32 %45, i8* %7, i32 1)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %48, %41, %29, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @parport_negotiate(i32, i32) #1

declare dso_local i32 @parport_write(i32, i8*, i32) #1

declare dso_local i32 @parport_read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
