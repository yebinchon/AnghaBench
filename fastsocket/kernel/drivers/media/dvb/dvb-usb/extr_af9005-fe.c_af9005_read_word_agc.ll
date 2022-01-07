; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_read_word_agc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_read_word_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalid pos in read word agc\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32, i32, i32*)* @af9005_read_word_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_read_word_agc(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @af9005_read_ofdm_register(%struct.dvb_usb_device* %17, i32 %18, i32* %15)
  store i32 %19, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %7, align 4
  br label %65

23:                                               ; preds = %6
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @af9005_read_ofdm_register(%struct.dvb_usb_device* %24, i32 %25, i32* %16)
  store i32 %26, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %7, align 4
  br label %65

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %60 [
    i32 0, label %32
    i32 2, label %39
    i32 4, label %46
    i32 6, label %53
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %16, align 4
  %34 = and i32 %33, 3
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32*, i32** %13, align 8
  store i32 %37, i32* %38, align 4
  br label %64

39:                                               ; preds = %30
  %40 = load i32, i32* %16, align 4
  %41 = and i32 %40, 12
  %42 = shl i32 %41, 6
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  br label %64

46:                                               ; preds = %30
  %47 = load i32, i32* %16, align 4
  %48 = and i32 %47, 48
  %49 = shl i32 %48, 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  br label %64

53:                                               ; preds = %30
  %54 = load i32, i32* %16, align 4
  %55 = and i32 %54, 192
  %56 = shl i32 %55, 2
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  br label %64

60:                                               ; preds = %30
  %61 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %65

64:                                               ; preds = %53, %46, %39, %32
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %60, %28, %21
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @af9005_read_ofdm_register(%struct.dvb_usb_device*, i32, i32*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
