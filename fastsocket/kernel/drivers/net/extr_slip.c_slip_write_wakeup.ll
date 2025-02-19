; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, i32, %struct.slip* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32, i64)* }
%struct.slip = type { i64, i64, i32, i32, i32 }

@SLIP_MAGIC = common dso_local global i64 0, align 8
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @slip_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slip_write_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.slip*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.slip*, %struct.slip** %6, align 8
  store %struct.slip* %7, %struct.slip** %4, align 8
  %8 = load %struct.slip*, %struct.slip** %4, align 8
  %9 = icmp ne %struct.slip* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.slip*, %struct.slip** %4, align 8
  %12 = getelementptr inbounds %struct.slip, %struct.slip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SLIP_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.slip*, %struct.slip** %4, align 8
  %18 = getelementptr inbounds %struct.slip, %struct.slip* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_running(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %10, %1
  br label %64

23:                                               ; preds = %16
  %24 = load %struct.slip*, %struct.slip** %4, align 8
  %25 = getelementptr inbounds %struct.slip, %struct.slip* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.slip*, %struct.slip** %4, align 8
  %30 = getelementptr inbounds %struct.slip, %struct.slip* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 1
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.slip*, %struct.slip** %4, align 8
  %38 = call i32 @sl_unlock(%struct.slip* %37)
  br label %64

39:                                               ; preds = %23
  %40 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.tty_struct*, i32, i64)*, i32 (%struct.tty_struct*, i32, i64)** %43, align 8
  %45 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %46 = load %struct.slip*, %struct.slip** %4, align 8
  %47 = getelementptr inbounds %struct.slip, %struct.slip* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.slip*, %struct.slip** %4, align 8
  %50 = getelementptr inbounds %struct.slip, %struct.slip* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 %44(%struct.tty_struct* %45, i32 %48, i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.slip*, %struct.slip** %4, align 8
  %56 = getelementptr inbounds %struct.slip, %struct.slip* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.slip*, %struct.slip** %4, align 8
  %61 = getelementptr inbounds %struct.slip, %struct.slip* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %39, %28, %22
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sl_unlock(%struct.slip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
