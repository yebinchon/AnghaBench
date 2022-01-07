; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"wrong Vendor ID (read=0x%x)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"wrong Device ID (%x)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"found DiB8000A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"found DiB8000B\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"found DiB8000C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*)* @dib8000_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_identify(%struct.i2c_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_device*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_device* %0, %struct.i2c_device** %3, align 8
  %5 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %6 = call i32 @dib8000_i2c_read16(%struct.i2c_device* %5, i32 896)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %8 = call i32 @dib8000_i2c_read16(%struct.i2c_device* %7, i32 896)
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %8, 435
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %15 = call i32 @dib8000_i2c_read16(%struct.i2c_device* %14, i32 897)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 32768
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 32769
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 32770
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %37

27:                                               ; preds = %21, %18, %13
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %35 [
    i32 32768, label %29
    i32 32769, label %31
    i32 32770, label %33
  ]

29:                                               ; preds = %27
  %30 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %35

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %35

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %27, %33, %31, %29
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %24, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @dib8000_i2c_read16(%struct.i2c_device*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
