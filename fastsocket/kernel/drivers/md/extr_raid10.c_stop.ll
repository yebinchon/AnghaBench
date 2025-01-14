; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf*, i32 }
%struct.r10conf = type { %struct.r10conf*, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r10conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 0
  %6 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  store %struct.r10conf* %6, %struct.r10conf** %3, align 8
  %7 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %8 = call i32 @raise_barrier(%struct.r10conf* %7, i32 0)
  %9 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %10 = call i32 @lower_barrier(%struct.r10conf* %9)
  %11 = load %struct.mddev*, %struct.mddev** %2, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = call i32 @md_unregister_thread(i32* %12)
  %14 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %15 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %14, i32 0, i32 3
  %16 = call i32 @plugger_flush(i32* %15)
  %17 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mempool_destroy(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %28 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @safe_put_page(i32 %29)
  %31 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %32 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %31, i32 0, i32 0
  %33 = load %struct.r10conf*, %struct.r10conf** %32, align 8
  %34 = call i32 @kfree(%struct.r10conf* %33)
  %35 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %36 = call i32 @kfree(%struct.r10conf* %35)
  %37 = load %struct.mddev*, %struct.mddev** %2, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 0
  store %struct.r10conf* null, %struct.r10conf** %38, align 8
  ret i32 0
}

declare dso_local i32 @raise_barrier(%struct.r10conf*, i32) #1

declare dso_local i32 @lower_barrier(%struct.r10conf*) #1

declare dso_local i32 @md_unregister_thread(i32*) #1

declare dso_local i32 @plugger_flush(i32*) #1

declare dso_local i32 @mempool_destroy(i64) #1

declare dso_local i32 @safe_put_page(i32) #1

declare dso_local i32 @kfree(%struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
