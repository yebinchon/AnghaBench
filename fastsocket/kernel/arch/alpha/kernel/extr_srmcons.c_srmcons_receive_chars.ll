; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_srmcons.c_srmcons_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_srmcons.c_srmcons_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srmcons_private = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@srmcons_callback_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @srmcons_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srmcons_receive_chars(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.srmcons_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.srmcons_private*
  store %struct.srmcons_private* %7, %struct.srmcons_private** %3, align 8
  store i32 10, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = call i64 @spin_trylock(i32* @srmcons_callback_lock)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.srmcons_private*, %struct.srmcons_private** %3, align 8
  %14 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @srmcons_do_receive_chars(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 100, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = call i32 @spin_unlock(i32* @srmcons_callback_lock)
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.srmcons_private*, %struct.srmcons_private** %3, align 8
  %23 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.srmcons_private*, %struct.srmcons_private** %3, align 8
  %26 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.srmcons_private*, %struct.srmcons_private** %3, align 8
  %35 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.srmcons_private*, %struct.srmcons_private** %3, align 8
  %38 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %37, i32 0, i32 1
  %39 = call i32 @add_timer(%struct.TYPE_2__* %38)
  br label %40

40:                                               ; preds = %29, %21
  %41 = load %struct.srmcons_private*, %struct.srmcons_private** %3, align 8
  %42 = getelementptr inbounds %struct.srmcons_private, %struct.srmcons_private* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @srmcons_do_receive_chars(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
