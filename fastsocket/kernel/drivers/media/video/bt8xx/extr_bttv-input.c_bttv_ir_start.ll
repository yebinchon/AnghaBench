; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-input.c_bttv_ir_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-input.c_bttv_ir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.bttv_ir = type { i32, i32, i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@bttv_input_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@bttv_rc5_timer_end = common dso_local global i32 0, align 4
@ir_rc5_remote_gap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.bttv_ir*)* @bttv_ir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_ir_start(%struct.bttv* %0, %struct.bttv_ir* %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.bttv_ir*, align 8
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store %struct.bttv_ir* %1, %struct.bttv_ir** %4, align 8
  %5 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %6 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %11 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %10, i32 0, i32 4
  %12 = load i32, i32* @bttv_input_timer, align 4
  %13 = load %struct.bttv*, %struct.bttv** %3, align 8
  %14 = ptrtoint %struct.bttv* %13 to i64
  %15 = call i32 @setup_timer(%struct.TYPE_3__* %11, i32 %12, i64 %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = call i64 @msecs_to_jiffies(i32 1000)
  %18 = add nsw i64 %16, %17
  %19 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %20 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %23 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %22, i32 0, i32 4
  %24 = call i32 @add_timer(%struct.TYPE_3__* %23)
  br label %47

25:                                               ; preds = %2
  %26 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %27 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %32 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %31, i32 0, i32 4
  %33 = load i32, i32* @bttv_rc5_timer_end, align 4
  %34 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %35 = ptrtoint %struct.bttv_ir* %34 to i64
  %36 = call i32 @setup_timer(%struct.TYPE_3__* %32, i32 %33, i64 %35)
  %37 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %38 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %40 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %39, i32 0, i32 1
  store i32 3, i32* %40, align 4
  %41 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %42 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* @ir_rc5_remote_gap, align 4
  %44 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %45 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %30, %25
  br label %47

47:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @setup_timer(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
