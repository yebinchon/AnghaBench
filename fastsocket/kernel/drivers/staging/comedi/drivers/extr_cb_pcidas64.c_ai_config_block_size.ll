; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_config_block_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_config_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.hw_fifo_info = type { i32 }
%struct.TYPE_2__ = type { %struct.hw_fifo_info* }

@bytes_in_sample = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*)* @ai_config_block_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_config_block_size(%struct.comedi_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_fifo_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.TYPE_2__* @board(%struct.comedi_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %13, align 8
  store %struct.hw_fifo_info* %14, %struct.hw_fifo_info** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %7, align 8
  %23 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %21, %24
  %26 = load i32, i32* @bytes_in_sample, align 4
  %27 = udiv i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @set_ai_fifo_size(%struct.comedi_device* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call i32 @ai_fifo_size(%struct.comedi_device* %37)
  %39 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %7, align 8
  %40 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = udiv i32 %38, %41
  %43 = load i32, i32* @bytes_in_sample, align 4
  %44 = mul i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  store i32 2, i32* %3, align 4
  br label %48

48:                                               ; preds = %36, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_2__* @board(%struct.comedi_device*) #1

declare dso_local i32 @set_ai_fifo_size(%struct.comedi_device*, i32) #1

declare dso_local i32 @ai_fifo_size(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
