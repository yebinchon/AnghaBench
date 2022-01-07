; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32 }
%struct.stripe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @do_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_flush(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stripe*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %7 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %6, i32 0, i32 0
  %8 = call %struct.stripe* @stripe_io_pop(i32* %7)
  store %struct.stripe* %8, %struct.stripe** %4, align 8
  %9 = icmp ne %struct.stripe* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load %struct.stripe*, %struct.stripe** %4, align 8
  %12 = call i64 @stripe_rw(%struct.stripe* %11)
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %5

17:                                               ; preds = %5
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.stripe* @stripe_io_pop(i32*) #1

declare dso_local i64 @stripe_rw(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
