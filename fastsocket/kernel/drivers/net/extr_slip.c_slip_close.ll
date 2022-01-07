; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.slip* }
%struct.slip = type { i64, i32, i32, i32, i64, i32, %struct.tty_struct* }

@SLIP_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @slip_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slip_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.slip*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.slip*, %struct.slip** %5, align 8
  store %struct.slip* %6, %struct.slip** %3, align 8
  %7 = load %struct.slip*, %struct.slip** %3, align 8
  %8 = icmp ne %struct.slip* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.slip*, %struct.slip** %3, align 8
  %11 = getelementptr inbounds %struct.slip, %struct.slip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SLIP_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.slip*, %struct.slip** %3, align 8
  %17 = getelementptr inbounds %struct.slip, %struct.slip* %16, i32 0, i32 6
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %20 = icmp ne %struct.tty_struct* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %9, %1
  br label %39

22:                                               ; preds = %15
  %23 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  store %struct.slip* null, %struct.slip** %24, align 8
  %25 = load %struct.slip*, %struct.slip** %3, align 8
  %26 = getelementptr inbounds %struct.slip, %struct.slip* %25, i32 0, i32 6
  store %struct.tty_struct* null, %struct.tty_struct** %26, align 8
  %27 = load %struct.slip*, %struct.slip** %3, align 8
  %28 = getelementptr inbounds %struct.slip, %struct.slip* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load %struct.slip*, %struct.slip** %3, align 8
  %33 = getelementptr inbounds %struct.slip, %struct.slip* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %22
  %35 = load %struct.slip*, %struct.slip** %3, align 8
  %36 = getelementptr inbounds %struct.slip, %struct.slip* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @unregister_netdev(i32 %37)
  br label %39

39:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @unregister_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
