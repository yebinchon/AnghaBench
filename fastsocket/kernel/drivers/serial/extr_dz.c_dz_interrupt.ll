; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dz_mux = type { %struct.dz_port* }
%struct.dz_port = type { i32 }

@DZ_CSR = common dso_local global i32 0, align 4
@DZ_RDONE = common dso_local global i32 0, align 4
@DZ_RIE = common dso_local global i32 0, align 4
@DZ_TRDY = common dso_local global i32 0, align 4
@DZ_TIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dz_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dz_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dz_mux*, align 8
  %6 = alloca %struct.dz_port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.dz_mux*
  store %struct.dz_mux* %9, %struct.dz_mux** %5, align 8
  %10 = load %struct.dz_mux*, %struct.dz_mux** %5, align 8
  %11 = getelementptr inbounds %struct.dz_mux, %struct.dz_mux* %10, i32 0, i32 0
  %12 = load %struct.dz_port*, %struct.dz_port** %11, align 8
  %13 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %12, i64 0
  store %struct.dz_port* %13, %struct.dz_port** %6, align 8
  %14 = load %struct.dz_port*, %struct.dz_port** %6, align 8
  %15 = load i32, i32* @DZ_CSR, align 4
  %16 = call i32 @dz_in(%struct.dz_port* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DZ_RDONE, align 4
  %19 = load i32, i32* @DZ_RIE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @DZ_RDONE, align 4
  %23 = load i32, i32* @DZ_RIE, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.dz_mux*, %struct.dz_mux** %5, align 8
  %28 = call i32 @dz_receive_chars(%struct.dz_mux* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DZ_TRDY, align 4
  %32 = load i32, i32* @DZ_TIE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* @DZ_TRDY, align 4
  %36 = load i32, i32* @DZ_TIE, align 4
  %37 = or i32 %35, %36
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.dz_mux*, %struct.dz_mux** %5, align 8
  %41 = call i32 @dz_transmit_chars(%struct.dz_mux* %40)
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @dz_in(%struct.dz_port*, i32) #1

declare dso_local i32 @dz_receive_chars(%struct.dz_mux*) #1

declare dso_local i32 @dz_transmit_chars(%struct.dz_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
