; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_alloc_recv_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_alloc_recv_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etrax_recv_buffer = type { i32, i64, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.etrax_recv_buffer* (i32)* @alloc_recv_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.etrax_recv_buffer* @alloc_recv_buffer(i32 %0) #0 {
  %2 = alloca %struct.etrax_recv_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.etrax_recv_buffer*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = zext i32 %5 to i64
  %7 = add i64 24, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.etrax_recv_buffer* @kmalloc(i32 %8, i32 %9)
  store %struct.etrax_recv_buffer* %10, %struct.etrax_recv_buffer** %4, align 8
  %11 = icmp ne %struct.etrax_recv_buffer* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.etrax_recv_buffer* null, %struct.etrax_recv_buffer** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @TTY_NORMAL, align 4
  %19 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %4, align 8
  store %struct.etrax_recv_buffer* %21, %struct.etrax_recv_buffer** %2, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %2, align 8
  ret %struct.etrax_recv_buffer* %23
}

declare dso_local %struct.etrax_recv_buffer* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
