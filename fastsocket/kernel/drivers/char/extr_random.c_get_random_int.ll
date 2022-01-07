; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_get_random_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_get_random_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@get_random_int_hash = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@random_int_secret = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_random_int() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i64 @arch_get_random_int(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %1, align 4
  br label %33

8:                                                ; preds = %0
  %9 = load i32, i32* @get_random_int_hash, align 4
  %10 = call i32* @get_cpu_var(i32 %9)
  store i32* %10, i32** %2, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 (...) @get_cycles()
  %17 = add nsw i64 %15, %16
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @random_int_secret, align 4
  %26 = call i32 @md5_transform(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @get_random_int_hash, align 4
  %31 = call i32 @put_cpu_var(i32 %30)
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %8, %6
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i64 @arch_get_random_int(i32*) #1

declare dso_local i32* @get_cpu_var(i32) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @md5_transform(i32*, i32) #1

declare dso_local i32 @put_cpu_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
