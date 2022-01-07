; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_driver = type { i32, i32 }
%struct.s3c24xx_uart_info = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"s3c24xx_serial_init(%p,%p)\0A\00", align 1
@s3c24xx_serial_resume = common dso_local global i32 0, align 4
@s3c24xx_serial_suspend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c24xx_serial_init(%struct.platform_driver* %0, %struct.s3c24xx_uart_info* %1) #0 {
  %3 = alloca %struct.platform_driver*, align 8
  %4 = alloca %struct.s3c24xx_uart_info*, align 8
  store %struct.platform_driver* %0, %struct.platform_driver** %3, align 8
  store %struct.s3c24xx_uart_info* %1, %struct.s3c24xx_uart_info** %4, align 8
  %5 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %6 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %4, align 8
  %7 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.platform_driver* %5, %struct.s3c24xx_uart_info* %6)
  %8 = load %struct.platform_driver*, %struct.platform_driver** %3, align 8
  %9 = call i32 @platform_driver_register(%struct.platform_driver* %8)
  ret i32 %9
}

declare dso_local i32 @dbg(i8*, %struct.platform_driver*, %struct.s3c24xx_uart_info*) #1

declare dso_local i32 @platform_driver_register(%struct.platform_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
