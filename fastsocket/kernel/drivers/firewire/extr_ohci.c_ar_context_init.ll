; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ar_context_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ar_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { %struct.TYPE_2__*, i32, i32, %struct.ar_buffer*, %struct.fw_ohci*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ar_buffer = type { %struct.TYPE_2__* }
%struct.fw_ohci = type { i32 }

@ar_context_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar_context*, %struct.fw_ohci*, i32)* @ar_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar_context_init(%struct.ar_context* %0, %struct.fw_ohci* %1, i32 %2) #0 {
  %4 = alloca %struct.ar_context*, align 8
  %5 = alloca %struct.fw_ohci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar_buffer, align 8
  store %struct.ar_context* %0, %struct.ar_context** %4, align 8
  store %struct.fw_ohci* %1, %struct.fw_ohci** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %10 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %12 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %13 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %12, i32 0, i32 4
  store %struct.fw_ohci* %11, %struct.fw_ohci** %13, align 8
  %14 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %15 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %14, i32 0, i32 3
  store %struct.ar_buffer* %7, %struct.ar_buffer** %15, align 8
  %16 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %17 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %16, i32 0, i32 2
  %18 = load i32, i32* @ar_context_tasklet, align 4
  %19 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %20 = ptrtoint %struct.ar_context* %19 to i64
  %21 = call i32 @tasklet_init(i32* %17, i32 %18, i64 %20)
  %22 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %23 = call i32 @ar_context_add_page(%struct.ar_context* %22)
  %24 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %25 = call i32 @ar_context_add_page(%struct.ar_context* %24)
  %26 = getelementptr inbounds %struct.ar_buffer, %struct.ar_buffer* %7, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %29 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %28, i32 0, i32 0
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %31 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %36 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  ret i32 0
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @ar_context_add_page(%struct.ar_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
