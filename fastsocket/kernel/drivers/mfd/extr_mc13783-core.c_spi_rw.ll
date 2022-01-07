; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_spi_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_spi_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i8*, i64, i32, i32, i32* }
%struct.spi_message = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32*, i64)* @spi_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_rw(%struct.spi_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca %struct.spi_message, align 8
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to i8*
  store i8* %12, i8** %10, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 4
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %17, align 8
  %19 = call i32 @spi_message_init(%struct.spi_message* %9)
  %20 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %9)
  %21 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %22 = call i64 @spi_sync(%struct.spi_device* %21, %struct.spi_message* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %38

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub i64 %32, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i64 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
