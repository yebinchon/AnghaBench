; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32, i32*, i32 }

@done = common dso_local global i32 0, align 4
@spi_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_sync(%struct.spi_device* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %6 = load i32, i32* @done, align 4
  %7 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %6)
  %8 = load i32, i32* @spi_complete, align 4
  %9 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %10 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 1
  store i32* @done, i32** %12, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %15 = call i32 @spi_async(%struct.spi_device* %13, %struct.spi_message* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = call i32 @wait_for_completion(i32* @done)
  %20 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %21 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %25 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spi_async(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
