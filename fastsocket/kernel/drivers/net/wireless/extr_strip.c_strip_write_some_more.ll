; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_write_some_more.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_write_some_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__*, %struct.strip* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32, i64)* }
%struct.strip = type { i64, i64, i32, i32, i32 }

@STRIP_MAGIC = common dso_local global i64 0, align 8
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @strip_write_some_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_write_some_more(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.strip*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.strip*, %struct.strip** %6, align 8
  store %struct.strip* %7, %struct.strip** %3, align 8
  %8 = load %struct.strip*, %struct.strip** %3, align 8
  %9 = icmp ne %struct.strip* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.strip*, %struct.strip** %3, align 8
  %12 = getelementptr inbounds %struct.strip, %struct.strip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STRIP_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.strip*, %struct.strip** %3, align 8
  %18 = getelementptr inbounds %struct.strip, %struct.strip* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_running(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %10, %1
  br label %60

23:                                               ; preds = %16
  %24 = load %struct.strip*, %struct.strip** %3, align 8
  %25 = getelementptr inbounds %struct.strip, %struct.strip* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.tty_struct*, i32, i64)*, i32 (%struct.tty_struct*, i32, i64)** %32, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = load %struct.strip*, %struct.strip** %3, align 8
  %36 = getelementptr inbounds %struct.strip, %struct.strip* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.strip*, %struct.strip** %3, align 8
  %39 = getelementptr inbounds %struct.strip, %struct.strip* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 %33(%struct.tty_struct* %34, i32 %37, i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.strip*, %struct.strip** %3, align 8
  %45 = getelementptr inbounds %struct.strip, %struct.strip* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.strip*, %struct.strip** %3, align 8
  %50 = getelementptr inbounds %struct.strip, %struct.strip* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %60

53:                                               ; preds = %23
  %54 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %55 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = load %struct.strip*, %struct.strip** %3, align 8
  %59 = call i32 @strip_unlock(%struct.strip* %58)
  br label %60

60:                                               ; preds = %22, %53, %28
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @strip_unlock(%struct.strip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
