; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_ds1302.c_out_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_ds1302.c_out_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @out_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_byte(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = call i32 @TK_SDA_DIR(i32 1)
  store i32 8, i32* %3, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = call i32 @TK_SCL_OUT(i32 0)
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 1
  %14 = trunc i32 %13 to i8
  %15 = call i32 @TK_SDA_OUT(i8 zeroext %14)
  %16 = call i32 @tempudelay(i32 1)
  %17 = call i32 @TK_SCL_OUT(i32 1)
  %18 = call i32 @tempudelay(i32 1)
  %19 = load i8, i8* %2, align 1
  %20 = zext i8 %19 to i32
  %21 = ashr i32 %20, 1
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %2, align 1
  br label %5

23:                                               ; preds = %5
  %24 = call i32 @TK_SDA_DIR(i32 0)
  ret void
}

declare dso_local i32 @TK_SDA_DIR(i32) #1

declare dso_local i32 @TK_SCL_OUT(i32) #1

declare dso_local i32 @TK_SDA_OUT(i8 zeroext) #1

declare dso_local i32 @tempudelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
