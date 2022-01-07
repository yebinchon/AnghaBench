; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_max3100.c_max3100_sr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_max3100.c_max3100_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3100_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"error while calling spi_sync\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MAX3100_T = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%04x - %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max3100_port*, i32, i32*)* @max3100_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3100_sr(%struct.max3100_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max3100_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spi_transfer, align 8
  store %struct.max3100_port* %0, %struct.max3100_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32* %9, i32** %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32* %10, i32** %14, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32 2, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cpu_to_be16(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = call i32 @spi_message_init(%struct.spi_message* %8)
  %19 = call i32 @spi_message_add_tail(%struct.spi_transfer* %12, %struct.spi_message* %8)
  %20 = load %struct.max3100_port*, %struct.max3100_port** %5, align 8
  %21 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @spi_sync(%struct.TYPE_2__* %22, %struct.spi_message* %8)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.max3100_port*, %struct.max3100_port** %5, align 8
  %28 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAX3100_T, align 4
  %41 = and i32 %39, %40
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.max3100_port*, %struct.max3100_port** %5, align 8
  %45 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.max3100_port*, %struct.max3100_port** %5, align 8
  %47 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %34, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
