; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_virtio-rng.c_register_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_virtio-rng.c_register_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@random_data = common dso_local global i64 0, align 8
@data_left = common dso_local global i64 0, align 8
@RANDOM_DATA_SIZE = common dso_local global i64 0, align 8
@vq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_buffer() #0 {
  %1 = alloca %struct.scatterlist, align 4
  %2 = load i64, i64* @random_data, align 8
  %3 = load i64, i64* @data_left, align 8
  %4 = add nsw i64 %2, %3
  %5 = load i64, i64* @RANDOM_DATA_SIZE, align 8
  %6 = load i64, i64* @data_left, align 8
  %7 = sub nsw i64 %5, %6
  %8 = call i32 @sg_init_one(%struct.scatterlist* %1, i64 %4, i64 %7)
  %9 = load i32, i32* @vq, align 4
  %10 = load i64, i64* @random_data, align 8
  %11 = call i64 @virtqueue_add_buf(i32 %9, %struct.scatterlist* %1, i32 0, i32 1, i64 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @BUG()
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* @vq, align 4
  %17 = call i32 @virtqueue_kick(i32 %16)
  ret void
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64, i64) #1

declare dso_local i64 @virtqueue_add_buf(i32, %struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @virtqueue_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
