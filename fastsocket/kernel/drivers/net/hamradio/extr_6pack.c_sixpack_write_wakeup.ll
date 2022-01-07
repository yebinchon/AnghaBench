; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sixpack_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sixpack_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.tty_struct*, i32, i64)* }
%struct.sixpack = type { i64, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @sixpack_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sixpack_write_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.sixpack*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = call %struct.sixpack* @sp_get(%struct.tty_struct* %5)
  store %struct.sixpack* %6, %struct.sixpack** %3, align 8
  %7 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %8 = icmp ne %struct.sixpack* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %12 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %17 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 1
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %28 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %30 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @netif_wake_queue(%struct.TYPE_6__* %31)
  br label %64

33:                                               ; preds = %10
  %34 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %35 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (%struct.tty_struct*, i32, i64)*, i32 (%struct.tty_struct*, i32, i64)** %42, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %45 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %46 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %49 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 %43(%struct.tty_struct* %44, i32 %47, i64 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %55 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %60 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %38, %33
  br label %64

64:                                               ; preds = %63, %15
  %65 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %66 = call i32 @sp_put(%struct.sixpack* %65)
  br label %67

67:                                               ; preds = %64, %9
  ret void
}

declare dso_local %struct.sixpack* @sp_get(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @sp_put(%struct.sixpack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
