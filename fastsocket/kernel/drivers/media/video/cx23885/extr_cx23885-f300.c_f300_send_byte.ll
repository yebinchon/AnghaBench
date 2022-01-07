; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-f300.c_f300_send_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-f300.c_f300_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@F300_CLK = common dso_local global i32 0, align 4
@F300_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*, i32)* @f300_send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f300_send_byte(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %11 = load i32, i32* @F300_CLK, align 4
  %12 = call i32 @f300_set_line(%struct.cx23885_dev* %10, i32 %11, i32 0)
  %13 = call i32 @udelay(i32 30)
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %15 = load i32, i32* @F300_DATA, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 128
  %18 = ashr i32 %17, 7
  %19 = call i32 @f300_set_line(%struct.cx23885_dev* %14, i32 %15, i32 %18)
  %20 = call i32 @udelay(i32 30)
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %24 = load i32, i32* @F300_CLK, align 4
  %25 = call i32 @f300_set_line(%struct.cx23885_dev* %23, i32 %24, i32 1)
  %26 = call i32 @udelay(i32 30)
  br label %27

27:                                               ; preds = %9
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @f300_set_line(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
