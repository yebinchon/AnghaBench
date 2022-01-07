; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2232_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.tty_struct* }
%struct.tty_struct = type { i32, %struct.a2232_port* }
%struct.file = type { i32 }

@a2232_ports = common dso_local global %struct.a2232_port* null, align 8
@GS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @a2232_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2232_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.a2232_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.a2232_port*, %struct.a2232_port** @a2232_ports, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %12, i64 %14
  store %struct.a2232_port* %15, %struct.a2232_port** %8, align 8
  %16 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 1
  store %struct.a2232_port* %16, %struct.a2232_port** %18, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %21 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store %struct.tty_struct* %19, %struct.tty_struct** %23, align 8
  %24 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %25 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %31 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %30, i32 0, i32 0
  %32 = call i32 @gs_init_port(%struct.TYPE_4__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %37 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %67

43:                                               ; preds = %2
  %44 = load i32, i32* @GS_ACTIVE, align 4
  %45 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %46 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = call i32 @gs_block_til_ready(%struct.a2232_port* %51, %struct.file* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %43
  %57 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %58 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %43
  %65 = load %struct.a2232_port*, %struct.a2232_port** %8, align 8
  %66 = call i32 @a2232_enable_rx_interrupts(%struct.a2232_port* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %56, %35
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @gs_init_port(%struct.TYPE_4__*) #1

declare dso_local i32 @gs_block_til_ready(%struct.a2232_port*, %struct.file*) #1

declare dso_local i32 @a2232_enable_rx_interrupts(%struct.a2232_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
