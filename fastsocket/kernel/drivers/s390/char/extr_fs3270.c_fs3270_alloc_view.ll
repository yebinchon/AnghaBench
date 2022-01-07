; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_alloc_view.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_alloc_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs3270 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs3270* ()* @fs3270_alloc_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs3270* @fs3270_alloc_view() #0 {
  %1 = alloca %struct.fs3270*, align 8
  %2 = alloca %struct.fs3270*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.fs3270* @kzalloc(i32 4, i32 %3)
  store %struct.fs3270* %4, %struct.fs3270** %2, align 8
  %5 = load %struct.fs3270*, %struct.fs3270** %2, align 8
  %6 = icmp ne %struct.fs3270* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.fs3270* @ERR_PTR(i32 %9)
  store %struct.fs3270* %10, %struct.fs3270** %1, align 8
  br label %28

11:                                               ; preds = %0
  %12 = call i32 @raw3270_request_alloc(i32 0)
  %13 = load %struct.fs3270*, %struct.fs3270** %2, align 8
  %14 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.fs3270*, %struct.fs3270** %2, align 8
  %16 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.fs3270*, %struct.fs3270** %2, align 8
  %22 = call i32 @kfree(%struct.fs3270* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.fs3270* @ERR_PTR(i32 %24)
  store %struct.fs3270* %25, %struct.fs3270** %1, align 8
  br label %28

26:                                               ; preds = %11
  %27 = load %struct.fs3270*, %struct.fs3270** %2, align 8
  store %struct.fs3270* %27, %struct.fs3270** %1, align 8
  br label %28

28:                                               ; preds = %26, %20, %7
  %29 = load %struct.fs3270*, %struct.fs3270** %1, align 8
  ret %struct.fs3270* %29
}

declare dso_local %struct.fs3270* @kzalloc(i32, i32) #1

declare dso_local %struct.fs3270* @ERR_PTR(i32) #1

declare dso_local i32 @raw3270_request_alloc(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.fs3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
