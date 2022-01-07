; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_init_resync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_init_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@RESYNC_WINDOW = common dso_local global i32 0, align 4
@RESYNC_BLOCK_SIZE = common dso_local global i32 0, align 4
@r10buf_pool_alloc = common dso_local global i32 0, align 4
@r10buf_pool_free = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r10conf*)* @init_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_resync(%struct.r10conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  %6 = load i32, i32* @RESYNC_WINDOW, align 4
  %7 = load i32, i32* @RESYNC_BLOCK_SIZE, align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %10 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %36, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %24 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @r10buf_pool_alloc, align 4
  %42 = load i32, i32* @r10buf_pool_free, align 4
  %43 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %44 = call i32 @mempool_create(i32 %40, i32 %41, i32 %42, %struct.r10conf* %43)
  %45 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %46 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %48 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %39
  %55 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %56 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mempool_create(i32, i32, i32, %struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
