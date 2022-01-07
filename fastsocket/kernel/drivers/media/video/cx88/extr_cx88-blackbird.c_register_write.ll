; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_register_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@P1_RDATA0 = common dso_local global i32 0, align 4
@P1_RDATA1 = common dso_local global i32 0, align 4
@P1_RDATA2 = common dso_local global i32 0, align 4
@P1_RDATA3 = common dso_local global i32 0, align 4
@P1_RADDR0 = common dso_local global i32 0, align 4
@P1_RADDR1 = common dso_local global i32 0, align 4
@P1_RRDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*, i32, i32)* @register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_write(%struct.cx88_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @P1_RDATA0, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @cx_writeb(i32 %7, i32 %8)
  %10 = load i32, i32* @P1_RDATA1, align 4
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 8
  %13 = call i32 @cx_writeb(i32 %10, i32 %12)
  %14 = load i32, i32* @P1_RDATA2, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 16
  %17 = call i32 @cx_writeb(i32 %14, i32 %16)
  %18 = load i32, i32* @P1_RDATA3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 24
  %21 = call i32 @cx_writeb(i32 %18, i32 %20)
  %22 = load i32, i32* @P1_RADDR0, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @cx_writeb(i32 %22, i32 %23)
  %25 = load i32, i32* @P1_RADDR1, align 4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 8
  %28 = call i32 @cx_writeb(i32 %25, i32 %27)
  %29 = load i32, i32* @P1_RRDWR, align 4
  %30 = call i32 @cx_writeb(i32 %29, i32 1)
  %31 = load i32, i32* @P1_RDATA0, align 4
  %32 = call i32 @cx_read(i32 %31)
  %33 = load i32, i32* @P1_RADDR0, align 4
  %34 = call i32 @cx_read(i32 %33)
  %35 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %36 = call i32 @wait_ready_gpio0_bit1(%struct.cx88_core* %35, i32 1)
  ret i32 %36
}

declare dso_local i32 @cx_writeb(i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @wait_ready_gpio0_bit1(%struct.cx88_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
