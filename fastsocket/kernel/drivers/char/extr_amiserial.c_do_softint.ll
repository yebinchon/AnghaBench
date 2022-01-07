; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_do_softint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_do_softint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_struct = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@RS_EVENT_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @do_softint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_softint(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.async_struct*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.async_struct*
  store %struct.async_struct* %6, %struct.async_struct** %3, align 8
  %7 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %8 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %7, i32 0, i32 1
  %9 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  store %struct.tty_struct* %9, %struct.tty_struct** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = icmp ne %struct.tty_struct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @RS_EVENT_WRITE_WAKEUP, align 4
  %15 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %16 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %15, i32 0, i32 0
  %17 = call i64 @test_and_clear_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = call i32 @tty_wakeup(%struct.tty_struct* %20)
  br label %22

22:                                               ; preds = %12, %19, %13
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
