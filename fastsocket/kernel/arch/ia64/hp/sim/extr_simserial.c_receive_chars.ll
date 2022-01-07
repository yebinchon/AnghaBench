; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@receive_chars.seen_esc = internal global i8 0, align 1
@SSC_GETCHAR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  br label %4

4:                                                ; preds = %46, %36, %25, %16, %1
  %5 = load i32, i32* @SSC_GETCHAR, align 4
  %6 = call zeroext i8 @ia64_ssc(i32 0, i32 0, i32 0, i32 0, i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 27
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i8, i8* @receive_chars.seen_esc, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8 1, i8* @receive_chars.seen_esc, align 1
  br label %4

17:                                               ; preds = %12, %8
  %18 = load i8, i8* @receive_chars.seen_esc, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 79
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8 2, i8* @receive_chars.seen_esc, align 1
  br label %4

26:                                               ; preds = %21, %17
  %27 = load i8, i8* @receive_chars.seen_esc, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 80
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @show_state()
  br label %36

36:                                               ; preds = %34, %30
  store i8 0, i8* @receive_chars.seen_esc, align 1
  br label %4

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  store i8 0, i8* @receive_chars.seen_esc, align 1
  %40 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %41 = load i8, i8* %3, align 1
  %42 = load i32, i32* @TTY_NORMAL, align 4
  %43 = call i64 @tty_insert_flip_char(%struct.tty_struct* %40, i8 zeroext %41, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %47

46:                                               ; preds = %39
  br label %4

47:                                               ; preds = %45, %4
  %48 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %49 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %48)
  ret void
}

declare dso_local zeroext i8 @ia64_ssc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @show_state(...) #1

declare dso_local i64 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
