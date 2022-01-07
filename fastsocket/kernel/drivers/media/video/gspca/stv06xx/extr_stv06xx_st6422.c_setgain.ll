; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_st6422.c_setgain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_st6422.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.st6422_settings* }
%struct.st6422_settings = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setgain(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.st6422_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load %struct.st6422_settings*, %struct.st6422_settings** %8, align 8
  store %struct.st6422_settings* %9, %struct.st6422_settings** %4, align 8
  %10 = load %struct.st6422_settings*, %struct.st6422_settings** %4, align 8
  %11 = getelementptr inbounds %struct.st6422_settings, %struct.st6422_settings* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @GAIN, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @stv06xx_write_bridge(%struct.sd* %17, i32 1289, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @stv06xx_write_bridge(%struct.sd* %25, i32 1290, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @stv06xx_write_bridge(%struct.sd* %33, i32 1291, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = call i32 @stv06xx_write_bridge(%struct.sd* %41, i32 1292, i32 42)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = call i32 @stv06xx_write_bridge(%struct.sd* %48, i32 1293, i32 1)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45, %38, %30, %22
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
