; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.e100_serial = type { i32, i32, i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.e100_serial*)* @block_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_til_ready(%struct.tty_struct* %0, %struct.file* %1, %struct.e100_serial* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.e100_serial*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.e100_serial* %2, %struct.e100_serial** %7, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @DECLARE_WAITQUEUE(i32 %12, i32 %13)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = call i64 @tty_hung_up_p(%struct.file* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %20 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ASYNC_CLOSING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18, %3
  %26 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %27 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %30 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ASYNC_CLOSING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @wait_event_interruptible(i32 %28, i32 %36)
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %166

40:                                               ; preds = %18
  %41 = load %struct.file*, %struct.file** %6, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @O_NONBLOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TTY_IO_ERROR, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47, %40
  %56 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %57 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %58 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %166

61:                                               ; preds = %47
  %62 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CLOCAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %61
  store i32 0, i32* %9, align 4
  %72 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %73 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %72, i32 0, i32 4
  %74 = call i32 @add_wait_queue(i32* %73, i32* @wait)
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @local_irq_save(i64 %75)
  %77 = load %struct.file*, %struct.file** %6, align 8
  %78 = call i64 @tty_hung_up_p(%struct.file* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %84 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %71
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @local_irq_restore(i64 %88)
  %90 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %91 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %136
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @local_irq_save(i64 %95)
  %97 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %98 = call i32 @e100_rts(%struct.e100_serial* %97, i32 1)
  %99 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %100 = call i32 @e100_dtr(%struct.e100_serial* %99, i32 1)
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @local_irq_restore(i64 %101)
  %103 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %104 = call i32 @set_current_state(i32 %103)
  %105 = load %struct.file*, %struct.file** %6, align 8
  %106 = call i64 @tty_hung_up_p(%struct.file* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %94
  %109 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %110 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108, %94
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %138

118:                                              ; preds = %108
  %119 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %120 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ASYNC_CLOSING, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %138

129:                                              ; preds = %125, %118
  %130 = load i32, i32* @current, align 4
  %131 = call i64 @signal_pending(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @ERESTARTSYS, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %9, align 4
  br label %138

136:                                              ; preds = %129
  %137 = call i32 (...) @schedule()
  br label %94

138:                                              ; preds = %133, %128, %115
  %139 = load i32, i32* @TASK_RUNNING, align 4
  %140 = call i32 @set_current_state(i32 %139)
  %141 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %142 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %141, i32 0, i32 4
  %143 = call i32 @remove_wait_queue(i32* %142, i32* @wait)
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %148 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %146, %138
  %152 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %153 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %4, align 4
  br label %166

160:                                              ; preds = %151
  %161 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %162 = load %struct.e100_serial*, %struct.e100_serial** %7, align 8
  %163 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %160, %158, %55, %25
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @e100_rts(%struct.e100_serial*, i32) #1

declare dso_local i32 @e100_dtr(%struct.e100_serial*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
