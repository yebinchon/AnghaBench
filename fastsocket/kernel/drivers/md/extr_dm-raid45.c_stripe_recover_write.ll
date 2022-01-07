; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*, i32)* @stripe_recover_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_recover_write(%struct.stripe* %0, i32 %1) #0 {
  %3 = alloca %struct.stripe*, align 8
  %4 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.stripe*, %struct.stripe** %3, align 8
  %6 = call i32 @stripe_io_ref(%struct.stripe* %5)
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.stripe*, %struct.stripe** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @stripe_zero_chunk(%struct.stripe* %11, i32 %12)
  %14 = load %struct.stripe*, %struct.stripe** %3, align 8
  %15 = load %struct.stripe*, %struct.stripe** %3, align 8
  %16 = getelementptr inbounds %struct.stripe, %struct.stripe* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @common_xor(%struct.stripe* %14, i32 %18, i32 0, i32 %19)
  %21 = load %struct.stripe*, %struct.stripe** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CHUNK(%struct.stripe* %21, i32 %22)
  %24 = load i32, i32* @DIRTY, align 4
  %25 = call i32 @chunk_set(i32 %23, i32 %24)
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.stripe*, %struct.stripe** %3, align 8
  %28 = call i32 @parity_xor(%struct.stripe* %27)
  br label %29

29:                                               ; preds = %26, %10
  %30 = load %struct.stripe*, %struct.stripe** %3, align 8
  %31 = call i32 @stripe_chunks_rw(%struct.stripe* %30)
  ret i32 %31
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stripe_io_ref(%struct.stripe*) #1

declare dso_local i32 @stripe_zero_chunk(%struct.stripe*, i32) #1

declare dso_local i32 @common_xor(%struct.stripe*, i32, i32, i32) #1

declare dso_local i32 @chunk_set(i32, i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @parity_xor(%struct.stripe*) #1

declare dso_local i32 @stripe_chunks_rw(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
