; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_srmcons.c_srmcons_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_srmcons.c_srmcons_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.srmcons_private* }
%struct.srmcons_private = type { i32, %struct.TYPE_2__, %struct.tty_struct* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.file = type { i32 }

@srmcons_receive_chars = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @srmcons_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srmcons_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.srmcons_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = call i32 @srmcons_get_private_struct(%struct.srmcons_private** %6)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %16 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %20 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %19, i32 0, i32 2
  %21 = load %struct.tty_struct*, %struct.tty_struct** %20, align 8
  %22 = icmp ne %struct.tty_struct* %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %14
  %24 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  store %struct.srmcons_private* %24, %struct.srmcons_private** %26, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %29 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %28, i32 0, i32 2
  store %struct.tty_struct* %27, %struct.tty_struct** %29, align 8
  %30 = load i32, i32* @srmcons_receive_chars, align 4
  %31 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %32 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %35 = ptrtoint %struct.srmcons_private* %34 to i64
  %36 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %37 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = add nsw i64 %39, 10
  %41 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %42 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %45 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %44, i32 0, i32 1
  %46 = call i32 @add_timer(%struct.TYPE_2__* %45)
  br label %47

47:                                               ; preds = %23, %14
  %48 = load %struct.srmcons_private*, %struct.srmcons_private** %6, align 8
  %49 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @srmcons_get_private_struct(%struct.srmcons_private**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
