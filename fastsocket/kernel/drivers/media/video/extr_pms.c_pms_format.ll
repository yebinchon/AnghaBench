; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@standard = common dso_local global i16 0, align 2
@decoder = common dso_local global i64 0, align 8
@PHILIPS1 = common dso_local global i64 0, align 8
@PHILIPS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @pms_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pms_format(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  store i16 %4, i16* @standard, align 2
  %5 = load i64, i64* @decoder, align 8
  %6 = load i64, i64* @PHILIPS1, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 66, i32* %3, align 4
  br label %16

9:                                                ; preds = %1
  %10 = load i64, i64* @decoder, align 8
  %11 = load i64, i64* @PHILIPS2, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 138, i32* %3, align 4
  br label %15

14:                                               ; preds = %9
  br label %39

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15, %8
  %17 = load i16, i16* %2, align 2
  %18 = sext i16 %17 to i32
  switch i32 %18, label %39 [
    i32 0, label %19
    i32 1, label %24
    i32 2, label %29
    i32 3, label %34
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pms_i2c_andor(i32 %20, i32 13, i32 254, i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pms_i2c_andor(i32 %22, i32 15, i32 63, i32 128)
  br label %39

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pms_i2c_andor(i32 %25, i32 13, i32 254, i32 0)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @pms_i2c_andor(i32 %27, i32 15, i32 63, i32 64)
  br label %39

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @pms_i2c_andor(i32 %30, i32 13, i32 254, i32 0)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pms_i2c_andor(i32 %32, i32 15, i32 63, i32 0)
  br label %39

34:                                               ; preds = %16
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pms_i2c_andor(i32 %35, i32 13, i32 254, i32 1)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @pms_i2c_andor(i32 %37, i32 15, i32 63, i32 0)
  br label %39

39:                                               ; preds = %14, %16, %34, %29, %24, %19
  ret void
}

declare dso_local i32 @pms_i2c_andor(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
