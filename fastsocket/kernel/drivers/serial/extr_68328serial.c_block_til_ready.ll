; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tty_struct = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }
%struct.m68k_serial = type { i32, i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@S_CLOSING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@S_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@S_INITIALIZED = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@S_HUP_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.m68k_serial*)* @block_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_til_ready(%struct.tty_struct* %0, %struct.file* %1, %struct.m68k_serial* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.m68k_serial*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.m68k_serial* %2, %struct.m68k_serial** %7, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, %struct.TYPE_6__* %11)
  store i32 0, i32* %9, align 4
  %13 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %14 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @S_CLOSING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %21 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %20, i32 0, i32 4
  %22 = call i32 @interruptible_sleep_on(i32* %21)
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %139

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TTY_IO_ERROR, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32, %25
  %41 = load i32, i32* @S_NORMAL_ACTIVE, align 4
  %42 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %43 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %139

46:                                               ; preds = %32
  %47 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CLOCAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %46
  store i32 0, i32* %8, align 4
  %57 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %58 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %57, i32 0, i32 3
  %59 = call i32 @add_wait_queue(i32* %58, i32* @wait)
  %60 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %61 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %65 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %56, %107
  %69 = call i32 (...) @local_irq_disable()
  %70 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %71 = call i32 @m68k_rtsdtr(%struct.m68k_serial* %70, i32 1)
  %72 = call i32 (...) @local_irq_enable()
  %73 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.file*, %struct.file** %6, align 8
  %77 = call i64 @tty_hung_up_p(%struct.file* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %68
  %80 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %81 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @S_INITIALIZED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79, %68
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %109

89:                                               ; preds = %79
  %90 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %91 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @S_CLOSING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %109

100:                                              ; preds = %96, %89
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %102 = call i64 @signal_pending(%struct.TYPE_6__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @ERESTARTSYS, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %109

107:                                              ; preds = %100
  %108 = call i32 (...) @schedule()
  br label %68

109:                                              ; preds = %104, %99, %86
  %110 = load i32, i32* @TASK_RUNNING, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %114 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %113, i32 0, i32 3
  %115 = call i32 @remove_wait_queue(i32* %114, i32* @wait)
  %116 = load %struct.file*, %struct.file** %6, align 8
  %117 = call i64 @tty_hung_up_p(%struct.file* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %109
  %120 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %121 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %109
  %125 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %126 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %139

133:                                              ; preds = %124
  %134 = load i32, i32* @S_NORMAL_ACTIVE, align 4
  %135 = load %struct.m68k_serial*, %struct.m68k_serial** %7, align 8
  %136 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %133, %131, %40, %19
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @m68k_rtsdtr(%struct.m68k_serial*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
