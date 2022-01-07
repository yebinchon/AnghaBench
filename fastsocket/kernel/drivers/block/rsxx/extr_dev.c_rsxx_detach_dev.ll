; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_detach_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsxx_detach_dev(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca %struct.rsxx_cardinfo*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %2, align 8
  %3 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %4 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %7 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %12 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @del_gendisk(i32 %13)
  %15 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %16 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %19 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
