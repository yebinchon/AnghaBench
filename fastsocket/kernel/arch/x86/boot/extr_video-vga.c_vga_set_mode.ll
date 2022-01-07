; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vga.c_vga_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vga.c_vga_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_info = type { i32, i32, i32 }

@force_x = common dso_local global i32 0, align 4
@force_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mode_info*)* @vga_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_set_mode(%struct.mode_info* %0) #0 {
  %2 = alloca %struct.mode_info*, align 8
  store %struct.mode_info* %0, %struct.mode_info** %2, align 8
  %3 = call i32 (...) @vga_set_basic_mode()
  %4 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %5 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* @force_x, align 4
  %7 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %8 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @force_y, align 4
  %10 = load %struct.mode_info*, %struct.mode_info** %2, align 8
  %11 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %26 [
    i32 134, label %13
    i32 128, label %14
    i32 130, label %16
    i32 133, label %18
    i32 132, label %20
    i32 131, label %22
    i32 129, label %24
  ]

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  %15 = call i32 (...) @vga_set_8font()
  br label %26

16:                                               ; preds = %1
  %17 = call i32 (...) @vga_set_80x43()
  br label %26

18:                                               ; preds = %1
  %19 = call i32 (...) @vga_set_14font()
  br label %26

20:                                               ; preds = %1
  %21 = call i32 (...) @vga_set_80x30()
  br label %26

22:                                               ; preds = %1
  %23 = call i32 (...) @vga_set_80x34()
  br label %26

24:                                               ; preds = %1
  %25 = call i32 (...) @vga_set_80x60()
  br label %26

26:                                               ; preds = %1, %24, %22, %20, %18, %16, %14, %13
  ret i32 0
}

declare dso_local i32 @vga_set_basic_mode(...) #1

declare dso_local i32 @vga_set_8font(...) #1

declare dso_local i32 @vga_set_80x43(...) #1

declare dso_local i32 @vga_set_14font(...) #1

declare dso_local i32 @vga_set_80x30(...) #1

declare dso_local i32 @vga_set_80x34(...) #1

declare dso_local i32 @vga_set_80x60(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
