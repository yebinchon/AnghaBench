; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*, i32)* @stripe_recover_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_recover_read(%struct.stripe* %0, i32 %1) #0 {
  %3 = alloca %struct.stripe*, align 8
  %4 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.stripe*, %struct.stripe** %3, align 8
  %6 = call i32 @stripe_io_ref(%struct.stripe* %5)
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load %struct.stripe*, %struct.stripe** %3, align 8
  %9 = call i32 @stripe_chunks_invalidate(%struct.stripe* %8)
  %10 = load %struct.stripe*, %struct.stripe** %3, align 8
  %11 = call i32 @stripe_allow_io(%struct.stripe* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.stripe*, %struct.stripe** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @CHUNK(%struct.stripe* %15, i32 %16)
  %18 = call i32 @ClearChunkIo(i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.stripe*, %struct.stripe** %3, align 8
  %21 = call i32 @stripe_chunks_rw(%struct.stripe* %20)
  ret i32 %21
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stripe_io_ref(%struct.stripe*) #1

declare dso_local i32 @stripe_chunks_invalidate(%struct.stripe*) #1

declare dso_local i32 @stripe_allow_io(%struct.stripe*) #1

declare dso_local i32 @ClearChunkIo(i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @stripe_chunks_rw(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
