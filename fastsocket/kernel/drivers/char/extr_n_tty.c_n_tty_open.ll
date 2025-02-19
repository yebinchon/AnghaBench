; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @n_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %5 = icmp ne %struct.tty_struct* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %58

9:                                                ; preds = %1
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %9
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %58

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = call i32 @reset_buffer_flags(%struct.tty_struct* %48)
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = call i32 @n_tty_set_termios(%struct.tty_struct* %52, i32* null)
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %43, %24, %6
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @reset_buffer_flags(%struct.tty_struct*) #1

declare dso_local i32 @n_tty_set_termios(%struct.tty_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
