; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_validate_sgv4_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_validate_sgv4_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.sg_io_v4 = type { i8, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.sg_io_v4*, i32*)* @bsg_validate_sgv4_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_validate_sgv4_hdr(%struct.request_queue* %0, %struct.sg_io_v4* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.sg_io_v4*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.sg_io_v4* %1, %struct.sg_io_v4** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %10 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 81
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %19 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 130, label %21
  ]

21:                                               ; preds = %17
  %22 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %23 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %21, %21
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %25
  br label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load %struct.sg_io_v4*, %struct.sg_io_v4** %6, align 8
  %35 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @WRITE, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @READ, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
