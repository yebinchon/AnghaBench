; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-input.c_bttv_input_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-input.c_bttv_input_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_2__, %struct.bttv_ir* }
%struct.TYPE_2__ = type { i64 }
%struct.bttv_ir = type { i32, i32 }

@BTTV_BOARD_ENLTV_FM_2 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bttv_input_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_input_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.bttv_ir*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.bttv*
  store %struct.bttv* %6, %struct.bttv** %3, align 8
  %7 = load %struct.bttv*, %struct.bttv** %3, align 8
  %8 = getelementptr inbounds %struct.bttv, %struct.bttv* %7, i32 0, i32 1
  %9 = load %struct.bttv_ir*, %struct.bttv_ir** %8, align 8
  store %struct.bttv_ir* %9, %struct.bttv_ir** %4, align 8
  %10 = load %struct.bttv*, %struct.bttv** %3, align 8
  %11 = getelementptr inbounds %struct.bttv, %struct.bttv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BTTV_BOARD_ENLTV_FM_2, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bttv*, %struct.bttv** %3, align 8
  %18 = call i32 @ir_enltv_handle_key(%struct.bttv* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.bttv*, %struct.bttv** %3, align 8
  %21 = call i32 @ir_handle_key(%struct.bttv* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %24 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %23, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %27 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @msecs_to_jiffies(i32 %28)
  %30 = add nsw i64 %25, %29
  %31 = call i32 @mod_timer(i32* %24, i64 %30)
  ret void
}

declare dso_local i32 @ir_enltv_handle_key(%struct.bttv*) #1

declare dso_local i32 @ir_handle_key(%struct.bttv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
