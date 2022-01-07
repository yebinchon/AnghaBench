; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_buffer = type { i32, i64, i64, i64, i32* }
%struct.virtqueue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.port_buffer* (%struct.virtqueue*, i64, i32)* @alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.port_buffer* @alloc_buf(%struct.virtqueue* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.port_buffer*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_buffer*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = add i64 40, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i64 %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.port_buffer*
  store %struct.port_buffer* %15, %struct.port_buffer** %8, align 8
  %16 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %17 = icmp ne %struct.port_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %22 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %27 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  store %struct.port_buffer* %28, %struct.port_buffer** %4, align 8
  br label %54

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i64 %30, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %35 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %50

41:                                               ; preds = %29
  %42 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %43 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %45 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  store %struct.port_buffer* %49, %struct.port_buffer** %4, align 8
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %52 = call i32 @kfree(%struct.port_buffer* %51)
  br label %53

53:                                               ; preds = %50, %18
  store %struct.port_buffer* null, %struct.port_buffer** %4, align 8
  br label %54

54:                                               ; preds = %53, %41, %25
  %55 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  ret %struct.port_buffer* %55
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.port_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
