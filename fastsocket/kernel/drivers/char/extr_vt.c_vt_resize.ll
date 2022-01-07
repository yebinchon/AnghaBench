; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vt_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vt_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.vc_data* }
%struct.vc_data = type { i32 }
%struct.winsize = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.winsize*)* @vt_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_resize(%struct.tty_struct* %0, %struct.winsize* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.winsize*, align 8
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.winsize* %1, %struct.winsize** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  store %struct.vc_data* %9, %struct.vc_data** %5, align 8
  %10 = call i32 (...) @acquire_console_sem()
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %13 = load %struct.winsize*, %struct.winsize** %4, align 8
  %14 = getelementptr inbounds %struct.winsize, %struct.winsize* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.winsize*, %struct.winsize** %4, align 8
  %17 = getelementptr inbounds %struct.winsize, %struct.winsize* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vc_do_resize(%struct.tty_struct* %11, %struct.vc_data* %12, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = call i32 (...) @release_console_sem()
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @vc_do_resize(%struct.tty_struct*, %struct.vc_data*, i32, i32) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
