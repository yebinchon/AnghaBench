; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_i2400m.h_i2400m_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_i2400m.h_i2400m_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i32 }

@UINT_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*)* @i2400m_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_init(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %3 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %4 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %3, i32 0, i32 12
  %5 = call i32 @wimax_dev_init(i32* %4)
  %6 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %7 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %11 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %10, i32 0, i32 11
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 10
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load i8*, i8** @UINT_MAX, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 9
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @UINT_MAX, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %21 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %20, i32 0, i32 8
  store i8* %19, i8** %21, align 8
  %22 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 7
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load i8*, i8** @UINT_MAX, align 8
  %26 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %27 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @UINT_MAX, align 8
  %29 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %30 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %32 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %31, i32 0, i32 4
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %35 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %34, i32 0, i32 3
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %38 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %37, i32 0, i32 2
  %39 = call i32 @mutex_init(i32* %38)
  ret void
}

declare dso_local i32 @wimax_dev_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
