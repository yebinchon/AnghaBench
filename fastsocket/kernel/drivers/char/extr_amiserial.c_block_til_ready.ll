; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_block_til_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_block_til_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.wait_queue = type { i32*, i32 }
%struct.tty_struct = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.async_struct = type { i32, i32, i32, i32, i32, %struct.serial_state* }
%struct.serial_state = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@ciab = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SER_DCD = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ASYNC_HUP_NOTIFY = common dso_local global i32 0, align 4
@wait = common dso_local global %struct.wait_queue zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.async_struct*)* @block_til_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_til_ready(%struct.tty_struct* %0, %struct.file* %1, %struct.async_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.async_struct*, align 8
  %8 = alloca %struct.wait_queue, align 8
  %9 = alloca %struct.serial_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.async_struct* %2, %struct.async_struct** %7, align 8
  %14 = getelementptr inbounds %struct.wait_queue, %struct.wait_queue* %8, i32 0, i32 0
  %15 = load i32, i32* @current, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %struct.wait_queue, %struct.wait_queue* %8, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %20 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %19, i32 0, i32 5
  %21 = load %struct.serial_state*, %struct.serial_state** %20, align 8
  store %struct.serial_state* %21, %struct.serial_state** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = call i64 @tty_hung_up_p(%struct.file* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %27 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ASYNC_CLOSING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25, %3
  %33 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %34 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ASYNC_CLOSING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %41 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %40, i32 0, i32 4
  %42 = call i32 @interruptible_sleep_on(i32* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %185

46:                                               ; preds = %25
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TTY_IO_ERROR, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53, %46
  %62 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %63 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %64 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %185

67:                                               ; preds = %53
  %68 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %69 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CLOCAL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %67
  store i32 0, i32* %10, align 4
  %78 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %79 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %78, i32 0, i32 3
  %80 = call i32 @add_wait_queue(i32* %79, %struct.wait_queue* %8)
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @local_irq_save(i64 %81)
  %83 = load %struct.file*, %struct.file** %6, align 8
  %84 = call i64 @tty_hung_up_p(%struct.file* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %77
  store i32 1, i32* %12, align 4
  %87 = load %struct.serial_state*, %struct.serial_state** %9, align 8
  %88 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %77
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @local_irq_restore(i64 %92)
  %94 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %95 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %91, %155
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @local_irq_save(i64 %99)
  %101 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %102 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CBAUD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load i32, i32* @SER_DTR, align 4
  %111 = load i32, i32* @SER_RTS, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @rtsdtr_ctrl(i32 %112)
  br label %114

114:                                              ; preds = %109, %98
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @local_irq_restore(i64 %115)
  %117 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %118 = call i32 @set_current_state(i32 %117)
  %119 = load %struct.file*, %struct.file** %6, align 8
  %120 = call i64 @tty_hung_up_p(%struct.file* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %114
  %123 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %124 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %122, %114
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %157

132:                                              ; preds = %122
  %133 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %134 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ASYNC_CLOSING, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ciab, i32 0, i32 0), align 4
  %144 = load i32, i32* @SER_DCD, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142, %139
  br label %157

148:                                              ; preds = %142, %132
  %149 = load i32, i32* @current, align 4
  %150 = call i64 @signal_pending(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @ERESTARTSYS, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %157

155:                                              ; preds = %148
  %156 = call i32 (...) @schedule()
  br label %98

157:                                              ; preds = %152, %147, %129
  %158 = load i32, i32* @TASK_RUNNING, align 4
  %159 = call i32 @__set_current_state(i32 %158)
  %160 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %161 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %160, i32 0, i32 3
  %162 = call i32 @remove_wait_queue(i32* %161, %struct.wait_queue* %8)
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load %struct.serial_state*, %struct.serial_state** %9, align 8
  %167 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %165, %157
  %171 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %172 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %4, align 4
  br label %185

179:                                              ; preds = %170
  %180 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %181 = load %struct.async_struct*, %struct.async_struct** %7, align 8
  %182 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %179, %177, %61, %43
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, %struct.wait_queue*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @rtsdtr_ctrl(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, %struct.wait_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
