; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_lo_send_direct_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_lo_send_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32 }
%struct.bio_vec = type { i32, i32, i64 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.bio_vec*, i32, %struct.page*)* @do_lo_send_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lo_send_direct_write(%struct.loop_device* %0, %struct.bio_vec* %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.loop_device*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %5, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page* %3, %struct.page** %8, align 8
  %10 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %11 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %14 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @kmap(i32 %15)
  %17 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %18 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %22 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @__do_lo_send_write(i32 %12, i64 %20, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %27 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kunmap(i32 %28)
  %30 = call i32 (...) @cond_resched()
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @__do_lo_send_write(i32, i64, i32, i32) #1

declare dso_local i64 @kmap(i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
