; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_sunhv_console_write_paged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_sunhv_console_write_paged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.console = type { i32 }

@sunhv_port = common dso_local global %struct.uart_port* null, align 8
@oops_in_progress = common dso_local global i64 0, align 8
@con_write_page = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @sunhv_console_write_paged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunhv_console_write_paged(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** @sunhv_port, align 8
  store %struct.uart_port* %16, %struct.uart_port** %7, align 8
  store i32 1, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load i64, i64* @oops_in_progress, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = call i32 @spin_trylock(i32* %29)
  store i32 %30, i32* %9, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %23
  br label %37

37:                                               ; preds = %82, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %37
  %41 = load i32, i32* @con_write_page, align 4
  %42 = call i64 @__pa(i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @fill_con_write_page(i8* %43, i32 %44, i64* %11)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %75, %40
  %54 = load i64, i64* %11, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  store i32 1000000, i32* %14, align 4
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %14, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @sun4v_con_write(i64 %62, i64 %63, i64* %13)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* @HV_EOK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %71

69:                                               ; preds = %61
  %70 = call i32 @udelay(i32 1)
  br label %57

71:                                               ; preds = %68, %57
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %82

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %10, align 8
  br label %53

82:                                               ; preds = %74, %53
  br label %37

83:                                               ; preds = %37
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @local_irq_restore(i64 %91)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @fill_con_write_page(i8*, i32, i64*) #1

declare dso_local i64 @sun4v_con_write(i64, i64, i64*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
