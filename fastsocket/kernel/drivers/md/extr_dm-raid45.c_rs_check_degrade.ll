; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_check_degrade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_check_degrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.raid_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @rs_check_degrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_check_degrade(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %5 = load %struct.stripe*, %struct.stripe** %2, align 8
  %6 = getelementptr inbounds %struct.stripe, %struct.stripe* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.raid_set* @RS(i32 %7)
  store %struct.raid_set* %8, %struct.raid_set** %3, align 8
  %9 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %10 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.stripe*, %struct.stripe** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @CHUNK(%struct.stripe* %18, i32 %19)
  %21 = call i64 @ChunkError(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %25 = load %struct.stripe*, %struct.stripe** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rs_check_degrade_dev(%struct.raid_set* %24, %struct.stripe* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  br label %13

29:                                               ; preds = %13
  ret void
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i64 @ChunkError(i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @rs_check_degrade_dev(%struct.raid_set*, %struct.stripe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
