; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decoder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @pms_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pms_brightness(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i32, i32* @decoder, align 4
  switch i32 %3, label %14 [
    i32 129, label %4
    i32 128, label %11
  ]

4:                                                ; preds = %1
  %5 = load i16, i16* %2, align 2
  %6 = call i32 @pms_i2c_write(i32 138, i32 0, i16 signext %5)
  %7 = load i16, i16* %2, align 2
  %8 = call i32 @pms_i2c_write(i32 138, i32 0, i16 signext %7)
  %9 = load i16, i16* %2, align 2
  %10 = call i32 @pms_i2c_write(i32 138, i32 0, i16 signext %9)
  br label %14

11:                                               ; preds = %1
  %12 = load i16, i16* %2, align 2
  %13 = call i32 @pms_i2c_write(i32 66, i32 25, i16 signext %12)
  br label %14

14:                                               ; preds = %1, %11, %4
  ret void
}

declare dso_local i32 @pms_i2c_write(i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
