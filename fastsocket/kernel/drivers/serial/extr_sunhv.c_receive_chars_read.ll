; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_receive_chars_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_receive_chars_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tty_struct = type { i32 }

@con_read_page = common dso_local global i64* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@CON_BREAK = common dso_local global i64 0, align 8
@CON_HUP = common dso_local global i64 0, align 8
@hung_up = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.tty_struct*)* @receive_chars_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_chars_read(%struct.uart_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 10000, i32* %6, align 4
  br label %11

11:                                               ; preds = %69, %68, %39, %32, %2
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %11
  %16 = load i64*, i64** @con_read_page, align 8
  %17 = call i64 @__pa(i64* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i64 @sun4v_con_read(i64 %18, i32 %19, i64* %8)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @HV_EOK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @CON_BREAK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = call i64 @uart_handle_break(%struct.uart_port* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %11

33:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  %34 = load i64*, i64** @con_read_page, align 8
  store i64 0, i64* %34, align 8
  store i64 1, i64* %8, align 8
  br label %43

35:                                               ; preds = %24
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @CON_HUP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  store i32 1, i32* @hung_up, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = call i32 @uart_handle_dcd_change(%struct.uart_port* %40, i32 0)
  br label %11

42:                                               ; preds = %35
  br label %80

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* @hung_up, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  store i32 0, i32* @hung_up, align 4
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = call i32 @uart_handle_dcd_change(%struct.uart_port* %48, i32 1)
  br label %50

50:                                               ; preds = %47, %44
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = load i64*, i64** @con_read_page, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %56, i64 %60)
  br label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %51

65:                                               ; preds = %51
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = icmp eq %struct.tty_struct* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %11

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %70
  store i64 %75, i64* %73, align 8
  %76 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %77 = load i64*, i64** @con_read_page, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @tty_insert_flip_string(%struct.tty_struct* %76, i64* %77, i64 %78)
  br label %11

80:                                               ; preds = %42, %11
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @__pa(i64*) #1

declare dso_local i64 @sun4v_con_read(i64, i32, i64*) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i64) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
