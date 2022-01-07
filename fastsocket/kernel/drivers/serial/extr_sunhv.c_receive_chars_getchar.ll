; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_receive_chars_getchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_receive_chars_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tty_struct = type { i32 }

@HV_EWOULDBLOCK = common dso_local global i64 0, align 8
@CON_BREAK = common dso_local global i64 0, align 8
@CON_HUP = common dso_local global i64 0, align 8
@hung_up = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.tty_struct*)* @receive_chars_getchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_chars_getchar(%struct.uart_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 10000, i32* %6, align 4
  br label %9

9:                                                ; preds = %61, %60, %46, %27, %2
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = call i64 @sun4v_con_getchar(i64* %7)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @HV_EWOULDBLOCK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %66

19:                                               ; preds = %13
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @CON_BREAK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = call i64 @uart_handle_break(%struct.uart_port* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %9

28:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @CON_HUP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  store i32 1, i32* @hung_up, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = call i32 @uart_handle_dcd_change(%struct.uart_port* %34, i32 0)
  br label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @hung_up, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  store i32 0, i32* @hung_up, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = call i32 @uart_handle_dcd_change(%struct.uart_port* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = icmp eq %struct.tty_struct* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %47, i64 %48)
  br label %9

50:                                               ; preds = %43
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %9

61:                                               ; preds = %50
  %62 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @TTY_NORMAL, align 4
  %65 = call i32 @tty_insert_flip_char(%struct.tty_struct* %62, i64 %63, i32 %64)
  br label %9

66:                                               ; preds = %18, %9
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @sun4v_con_getchar(i64*) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i64) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
