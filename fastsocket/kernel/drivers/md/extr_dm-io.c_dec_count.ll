; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dec_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dec_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i64, %struct.TYPE_2__*, i8*, i32 (i64, i8*)*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io*, i32, i32)* @dec_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_count(%struct.io* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  store %struct.io* %0, %struct.io** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.io*, %struct.io** %4, align 8
  %15 = getelementptr inbounds %struct.io, %struct.io* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i64* %15)
  br label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.io*, %struct.io** %4, align 8
  %19 = getelementptr inbounds %struct.io, %struct.io* %18, i32 0, i32 5
  %20 = call i64 @atomic_dec_and_test(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load %struct.io*, %struct.io** %4, align 8
  %24 = getelementptr inbounds %struct.io, %struct.io* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.io*, %struct.io** %4, align 8
  %29 = getelementptr inbounds %struct.io, %struct.io* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wake_up_process(i64 %30)
  br label %53

32:                                               ; preds = %22
  %33 = load %struct.io*, %struct.io** %4, align 8
  %34 = getelementptr inbounds %struct.io, %struct.io* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.io*, %struct.io** %4, align 8
  %37 = getelementptr inbounds %struct.io, %struct.io* %36, i32 0, i32 3
  %38 = load i32 (i64, i8*)*, i32 (i64, i8*)** %37, align 8
  store i32 (i64, i8*)* %38, i32 (i64, i8*)** %8, align 8
  %39 = load %struct.io*, %struct.io** %4, align 8
  %40 = getelementptr inbounds %struct.io, %struct.io* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load %struct.io*, %struct.io** %4, align 8
  %43 = load %struct.io*, %struct.io** %4, align 8
  %44 = getelementptr inbounds %struct.io, %struct.io* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mempool_free(%struct.io* %42, i32 %47)
  %49 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 %49(i64 %50, i8* %51)
  br label %53

53:                                               ; preds = %32, %27
  br label %54

54:                                               ; preds = %53, %17
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @mempool_free(%struct.io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
