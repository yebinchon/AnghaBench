; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_get_pio_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_get_pio_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_pio_buffer = type { %struct.esp_pio_buffer* }

@pio_lock = common dso_local global i32 0, align 4
@free_pio_buf = common dso_local global %struct.esp_pio_buffer* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.esp_pio_buffer* ()* @get_pio_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.esp_pio_buffer* @get_pio_buffer() #0 {
  %1 = alloca %struct.esp_pio_buffer*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @pio_lock, i64 %3)
  %5 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** @free_pio_buf, align 8
  %6 = icmp ne %struct.esp_pio_buffer* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** @free_pio_buf, align 8
  store %struct.esp_pio_buffer* %8, %struct.esp_pio_buffer** %1, align 8
  %9 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %1, align 8
  %10 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %9, i32 0, i32 0
  %11 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %10, align 8
  store %struct.esp_pio_buffer* %11, %struct.esp_pio_buffer** @free_pio_buf, align 8
  br label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.esp_pio_buffer* @kmalloc(i32 8, i32 %13)
  store %struct.esp_pio_buffer* %14, %struct.esp_pio_buffer** %1, align 8
  br label %15

15:                                               ; preds = %12, %7
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @pio_lock, i64 %16)
  %18 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %1, align 8
  ret %struct.esp_pio_buffer* %18
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.esp_pio_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
