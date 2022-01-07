; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_idx_is_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_idx_is_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dring_state = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dring_state*, i64)* @idx_is_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idx_is_pending(%struct.vio_dring_state* %0, i64 %1) #0 {
  %3 = alloca %struct.vio_dring_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vio_dring_state* %0, %struct.vio_dring_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %8 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %13 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %25

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %24 = call i64 @next_idx(i64 %22, %struct.vio_dring_state* %23)
  store i64 %24, i64* %5, align 8
  br label %10

25:                                               ; preds = %20, %10
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i64 @next_idx(i64, %struct.vio_dring_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
