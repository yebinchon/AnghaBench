; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_memory_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_memory_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@P1_MDATA0 = common dso_local global i32 0, align 4
@P1_MDATA1 = common dso_local global i32 0, align 4
@P1_MDATA2 = common dso_local global i32 0, align 4
@P1_MDATA3 = common dso_local global i32 0, align 4
@P1_MADDR2 = common dso_local global i32 0, align 4
@P1_MADDR1 = common dso_local global i32 0, align 4
@P1_MADDR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*, i32, i32)* @memory_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_write(%struct.cx88_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @P1_MDATA0, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @cx_writeb(i32 %7, i32 %8)
  %10 = load i32, i32* @P1_MDATA1, align 4
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 8
  %13 = call i32 @cx_writeb(i32 %10, i32 %12)
  %14 = load i32, i32* @P1_MDATA2, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 16
  %17 = call i32 @cx_writeb(i32 %14, i32 %16)
  %18 = load i32, i32* @P1_MDATA3, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 24
  %21 = call i32 @cx_writeb(i32 %18, i32 %20)
  %22 = load i32, i32* @P1_MADDR2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = or i32 %24, 64
  %26 = call i32 @cx_writeb(i32 %22, i32 %25)
  %27 = load i32, i32* @P1_MADDR1, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = call i32 @cx_writeb(i32 %27, i32 %29)
  %31 = load i32, i32* @P1_MADDR0, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @cx_writeb(i32 %31, i32 %32)
  %34 = load i32, i32* @P1_MDATA0, align 4
  %35 = call i32 @cx_read(i32 %34)
  %36 = load i32, i32* @P1_MADDR0, align 4
  %37 = call i32 @cx_read(i32 %36)
  %38 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %39 = call i32 @wait_ready_gpio0_bit1(%struct.cx88_core* %38, i32 1)
  ret i32 %39
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
