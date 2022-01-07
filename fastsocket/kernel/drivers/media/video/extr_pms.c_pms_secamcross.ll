; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_secamcross.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_secamcross.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decoder = common dso_local global i64 0, align 8
@PHILIPS2 = common dso_local global i64 0, align 8
@PHILIPS1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @pms_secamcross to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pms_secamcross(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i64, i64* @decoder, align 8
  %4 = load i64, i64* @PHILIPS2, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i16, i16* %2, align 2
  %8 = sext i16 %7 to i32
  %9 = and i32 %8, 1
  %10 = shl i32 %9, 5
  %11 = trunc i32 %10 to i16
  %12 = call i32 @pms_i2c_andor(i32 138, i32 15, i32 223, i16 signext %11)
  br label %25

13:                                               ; preds = %1
  %14 = load i64, i64* @decoder, align 8
  %15 = load i64, i64* @PHILIPS1, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i16, i16* %2, align 2
  %19 = sext i16 %18 to i32
  %20 = and i32 %19, 1
  %21 = shl i32 %20, 5
  %22 = trunc i32 %21 to i16
  %23 = call i32 @pms_i2c_andor(i32 66, i32 15, i32 223, i16 signext %22)
  br label %24

24:                                               ; preds = %17, %13
  br label %25

25:                                               ; preds = %24, %6
  ret void
}

declare dso_local i32 @pms_i2c_andor(i32, i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
