; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_mkiss_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_mkiss_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.mkiss* }
%struct.mkiss = type { i32*, i32, i32, i32, i32, i32 }

@disc_data_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @mkiss_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkiss_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.mkiss*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = call i32 @write_lock(i32* @disc_data_lock)
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.mkiss*, %struct.mkiss** %6, align 8
  store %struct.mkiss* %7, %struct.mkiss** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  store %struct.mkiss* null, %struct.mkiss** %9, align 8
  %10 = call i32 @write_unlock(i32* @disc_data_lock)
  %11 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %12 = icmp ne %struct.mkiss* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %16 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %15, i32 0, i32 5
  %17 = call i32 @atomic_dec_and_test(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %21 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %20, i32 0, i32 4
  %22 = call i32 @down(i32* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %25 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @unregister_netdev(i32 %26)
  %28 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %29 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %33 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %37 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
