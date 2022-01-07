; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_spu_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_spu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_spi_card = type { i32, i32, i32, i64 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32, i32* }

@IF_SPI_READ_OPERATION_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*, i32, i32*, i32)* @spu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_read(%struct.if_spi_card* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.if_spi_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spi_message, align 4
  %13 = alloca %struct.spi_transfer, align 8
  %14 = alloca %struct.spi_transfer, align 8
  %15 = alloca %struct.spi_transfer, align 8
  store %struct.if_spi_card* %0, %struct.if_spi_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IF_SPI_READ_OPERATION_MASK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @cpu_to_le16(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 1
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %24 = call i32 @spu_transaction_init(%struct.if_spi_card* %23)
  %25 = call i32 @spi_message_init(%struct.spi_message* %12)
  %26 = call i32 @memset(%struct.spi_transfer* %13, i32 0, i32 32)
  %27 = call i32 @memset(%struct.spi_transfer* %14, i32 0, i32 32)
  %28 = call i32 @memset(%struct.spi_transfer* %15, i32 0, i32 32)
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 3
  store i32* %11, i32** %29, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = call i32 @spi_message_add_tail(%struct.spi_transfer* %13, %struct.spi_message* %12)
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @spu_reg_is_port_reg(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %37 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %43

39:                                               ; preds = %4
  %40 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %41 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  store i32 %44, i32* %9, align 4
  %45 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %46 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = udiv i32 %50, 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = call i32 @spi_message_add_tail(%struct.spi_transfer* %14, %struct.spi_message* %12)
  br label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = mul i32 %55, 10
  %57 = add i32 100, %56
  %58 = call i32 @DIV_ROUND_UP(i32 %57, i32 1000)
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  store i32* %61, i32** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = call i32 @spi_message_add_tail(%struct.spi_transfer* %15, %struct.spi_message* %12)
  %66 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %67 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @spi_sync(i32 %68, %struct.spi_message* %12)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %71 = call i32 @spu_transaction_finish(%struct.if_spi_card* %70)
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spu_transaction_init(%struct.if_spi_card*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i64 @spu_reg_is_port_reg(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @spu_transaction_finish(%struct.if_spi_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
