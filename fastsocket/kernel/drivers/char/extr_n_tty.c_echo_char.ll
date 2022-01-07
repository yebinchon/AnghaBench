; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_echo_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_echo_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@ECHO_OP_START = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.tty_struct*)* @echo_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_char(i8 zeroext %0, %struct.tty_struct* %1) #0 {
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
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = call i64 @L_ECHOCTL(%struct.tty_struct* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i8, i8* %3, align 1
  %26 = call i64 @iscntrl(i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 9
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8, i8* @ECHO_OP_START, align 1
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = call i32 @add_echo_byte(i8 zeroext %33, %struct.tty_struct* %34)
  br label %36

36:                                               ; preds = %32, %28, %24, %20
  %37 = load i8, i8* %3, align 1
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = call i32 @add_echo_byte(i8 zeroext %37, %struct.tty_struct* %38)
  br label %40

40:                                               ; preds = %36, %13
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_echo_byte(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i64 @L_ECHOCTL(%struct.tty_struct*) #1

declare dso_local i64 @iscntrl(i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
