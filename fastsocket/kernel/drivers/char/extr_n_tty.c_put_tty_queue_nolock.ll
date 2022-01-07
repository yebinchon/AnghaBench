; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_put_tty_queue_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_put_tty_queue_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i8*, i64 }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.tty_struct*)* @put_tty_queue_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_tty_queue_nolock(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tty_struct*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load i8, i8* %3, align 1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 %11, i8* %18, align 1
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  %23 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = and i64 %22, %25
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
