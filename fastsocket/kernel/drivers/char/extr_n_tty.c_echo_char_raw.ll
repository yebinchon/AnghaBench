; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_echo_char_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_echo_char_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@ECHO_OP_START = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.tty_struct*)* @echo_char_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_char_raw(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tty_struct*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @ECHO_OP_START, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8, i8* @ECHO_OP_START, align 1
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = call i32 @add_echo_byte(i8 zeroext %14, %struct.tty_struct* %15)
  %17 = load i8, i8* @ECHO_OP_START, align 1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = call i32 @add_echo_byte(i8 zeroext %17, %struct.tty_struct* %18)
  br label %24

20:                                               ; preds = %2
  %21 = load i8, i8* %3, align 1
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = call i32 @add_echo_byte(i8 zeroext %21, %struct.tty_struct* %22)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_echo_byte(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
