; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_select_win.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_select_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov772x_win_size = type { i64, i64 }

@ov772x_win_qvga = common dso_local global %struct.ov772x_win_size zeroinitializer, align 8
@ov772x_win_vga = common dso_local global %struct.ov772x_win_size zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ov772x_win_size* (i64, i64)* @ov772x_select_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ov772x_win_size* @ov772x_select_win(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ov772x_win_size*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.ov772x_win_size, %struct.ov772x_win_size* @ov772x_win_qvga, i32 0, i32 1), align 8
  %9 = sub nsw i64 %7, %8
  %10 = call i64 @abs(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.ov772x_win_size, %struct.ov772x_win_size* @ov772x_win_qvga, i32 0, i32 0), align 8
  %13 = sub nsw i64 %11, %12
  %14 = call i64 @abs(i64 %13)
  %15 = add nsw i64 %10, %14
  store i64 %15, i64* %5, align 8
  store %struct.ov772x_win_size* @ov772x_win_qvga, %struct.ov772x_win_size** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.ov772x_win_size, %struct.ov772x_win_size* @ov772x_win_vga, i32 0, i32 1), align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i64 @abs(i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.ov772x_win_size, %struct.ov772x_win_size* @ov772x_win_vga, i32 0, i32 0), align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i64 @abs(i64 %23)
  %25 = add nsw i64 %20, %24
  %26 = icmp sgt i64 %16, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store %struct.ov772x_win_size* @ov772x_win_vga, %struct.ov772x_win_size** %6, align 8
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %6, align 8
  ret %struct.ov772x_win_size* %29
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
