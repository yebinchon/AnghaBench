; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_request_set_idal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_request_set_idal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.idal_buffer = type { i32, i32 }

@CCW_FLAG_IDA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw3270_request_set_idal(%struct.raw3270_request* %0, %struct.idal_buffer* %1) #0 {
  %3 = alloca %struct.raw3270_request*, align 8
  %4 = alloca %struct.idal_buffer*, align 8
  store %struct.raw3270_request* %0, %struct.raw3270_request** %3, align 8
  store %struct.idal_buffer* %1, %struct.idal_buffer** %4, align 8
  %5 = load %struct.idal_buffer*, %struct.idal_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.idal_buffer, %struct.idal_buffer* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @__pa(i32 %7)
  %9 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %10 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32 %8, i32* %11, align 4
  %12 = load %struct.idal_buffer*, %struct.idal_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.idal_buffer, %struct.idal_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %16 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @CCW_FLAG_IDA, align 4
  %19 = load %struct.raw3270_request*, %struct.raw3270_request** %3, align 8
  %20 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i32 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
