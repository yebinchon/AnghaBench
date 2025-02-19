; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_attach_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, i32, i32, i32, i64 }

@enable_blkdev = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_attach_dev(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca %struct.rsxx_cardinfo*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %2, align 8
  %3 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %4 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i64, i64* @enable_blkdev, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %10 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %18 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 9
  %21 = call i32 @set_capacity(i32 %16, i32 %20)
  br label %27

22:                                               ; preds = %8
  %23 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %24 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_capacity(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %22, %13
  %28 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %29 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @add_disk(i32 %30)
  %32 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %33 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %36 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @add_disk(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
