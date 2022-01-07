; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i64, %struct.uart_state*, %struct.TYPE_3__* }
%struct.uart_state = type { %struct.TYPE_4__*, %struct.tty_port }
%struct.TYPE_4__ = type { i32, %struct.uart_state* }
%struct.tty_port = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.file = type { i32 }
%struct.uart_driver = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"uart_open(%d) called\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@UPF_LOW_LATENCY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@ASYNCB_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @uart_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.uart_driver*, align 8
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.uart_driver*
  store %struct.uart_driver* %15, %struct.uart_driver** %5, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = call i32 (...) @kernel_locked()
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %125

36:                                               ; preds = %2
  %37 = load %struct.uart_driver*, %struct.uart_driver** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.uart_state* @uart_get(%struct.uart_driver* %37, i32 %38)
  store %struct.uart_state* %39, %struct.uart_state** %6, align 8
  %40 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %41 = call i64 @IS_ERR(%struct.uart_state* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %45 = call i32 @PTR_ERR(%struct.uart_state* %44)
  store i32 %45, i32* %8, align 4
  br label %125

46:                                               ; preds = %36
  %47 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %48 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %47, i32 0, i32 1
  store %struct.tty_port* %48, %struct.tty_port** %7, align 8
  %49 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 3
  store %struct.uart_state* %49, %struct.uart_state** %51, align 8
  %52 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %53 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %54 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store %struct.uart_state* %52, %struct.uart_state** %56, align 8
  %57 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %58 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UPF_LOW_LATENCY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %72 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %73 = call i32 @tty_port_tty_set(%struct.tty_port* %71, %struct.tty_struct* %72)
  %74 = load %struct.file*, %struct.file** %4, align 8
  %75 = call i64 @tty_hung_up_p(%struct.file* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %46
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  %80 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %81 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %85 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %125

87:                                               ; preds = %46
  %88 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %89 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %94 = call i32 @uart_change_pm(%struct.uart_state* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %97 = call i32 @uart_startup(%struct.uart_state* %96, i32 0)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.file*, %struct.file** %4, align 8
  %102 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %103 = call i32 @uart_block_til_ready(%struct.file* %101, %struct.uart_state* %102)
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %106 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %104
  %111 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %112 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* @ASYNCB_NORMAL_ACTIVE, align 4
  %119 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %120 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %119, i32 0, i32 1
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  %122 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %123 = call i32 @uart_update_termios(%struct.uart_state* %122)
  br label %124

124:                                              ; preds = %117, %110, %104
  br label %125

125:                                              ; preds = %124, %77, %43, %35
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kernel_locked(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.uart_state* @uart_get(%struct.uart_driver*, i32) #1

declare dso_local i64 @IS_ERR(%struct.uart_state*) #1

declare dso_local i32 @PTR_ERR(%struct.uart_state*) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @uart_change_pm(%struct.uart_state*, i32) #1

declare dso_local i32 @uart_startup(%struct.uart_state*, i32) #1

declare dso_local i32 @uart_block_til_ready(%struct.file*, %struct.uart_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @uart_update_termios(%struct.uart_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
