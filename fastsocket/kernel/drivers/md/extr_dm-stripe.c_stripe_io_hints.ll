; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_io_hints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.stripe_c* }
%struct.stripe_c = type { i32, i32 }
%struct.queue_limits = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @stripe_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.stripe_c*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  store %struct.stripe_c* %9, %struct.stripe_c** %5, align 8
  %10 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %11 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SECTOR_SHIFT, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @blk_limits_io_min(%struct.queue_limits* %15, i32 %16)
  %18 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %21 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul i32 %19, %22
  %24 = call i32 @blk_limits_io_opt(%struct.queue_limits* %18, i32 %23)
  ret void
}

declare dso_local i32 @blk_limits_io_min(%struct.queue_limits*, i32) #1

declare dso_local i32 @blk_limits_io_opt(%struct.queue_limits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
