; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nwbutton.c_button_sequence_finished.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nwbutton.c_button_sequence_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@button_press_count = common dso_local global i64 0, align 8
@button_output_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@bcount = common dso_local global i32 0, align 4
@button_wait_queue = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@reboot_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @button_sequence_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @button_sequence_finished(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @button_press_count, align 8
  %4 = call i32 @button_consume_callbacks(i64 %3)
  %5 = load i32, i32* @button_output_buffer, align 4
  %6 = load i64, i64* @button_press_count, align 8
  %7 = call i32 @sprintf(i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %6)
  store i32 %7, i32* @bcount, align 4
  store i64 0, i64* @button_press_count, align 8
  %8 = call i32 @wake_up_interruptible(i32* @button_wait_queue)
  ret void
}

declare dso_local i32 @button_consume_callbacks(i64) #1

declare dso_local i32 @sprintf(i32, i8*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
