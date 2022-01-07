; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_tty_receive_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_kern.c_tty_receive_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @tty_receive_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_receive_char(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = icmp eq %struct.tty_struct* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %48

8:                                                ; preds = %2
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = call i64 @I_IXON(%struct.tty_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = call i32 @I_IXOFF(%struct.tty_struct* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %16
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = call signext i8 @STOP_CHAR(%struct.tty_struct* %24)
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = call i32 @stop_tty(%struct.tty_struct* %29)
  br label %48

31:                                               ; preds = %21
  %32 = load i8, i8* %4, align 1
  %33 = sext i8 %32 to i32
  %34 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %35 = call signext i8 @START_CHAR(%struct.tty_struct* %34)
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = call i32 @start_tty(%struct.tty_struct* %39)
  br label %48

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %16, %12, %8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = load i8, i8* %4, align 1
  %46 = load i32, i32* @TTY_NORMAL, align 4
  %47 = call i32 @tty_insert_flip_char(%struct.tty_struct* %44, i8 signext %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38, %28, %7
  ret void
}

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i32 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local signext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @stop_tty(%struct.tty_struct*) #1

declare dso_local signext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
