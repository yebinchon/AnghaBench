; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/common/extr_sb_tbprof.c_sbprof_tb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/common/extr_sb_tbprof.c_sbprof_tb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@sbp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SB_OPENING = common dso_local global i32 0, align 4
@SB_CLOSED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MAX_TBSAMPLE_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SB_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sbprof_tb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbprof_tb_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call i32 @iminor(%struct.inode* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load i32, i32* @SB_OPENING, align 4
  %16 = call i64 @xchg(i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 0), i32 %15)
  %17 = load i64, i64* @SB_CLOSED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %14
  %23 = call i32 @memset(%struct.TYPE_4__* @sbp, i32 0, i32 4)
  %24 = load i32, i32* @MAX_TBSAMPLE_BYTES, align 4
  %25 = call %struct.TYPE_4__* @vmalloc(i32 %24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 4), align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 4), align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* @SB_CLOSED, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 0), align 8
  %30 = call i32 (...) @wmb()
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %22
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 4), align 8
  %35 = load i32, i32* @MAX_TBSAMPLE_BYTES, align 4
  %36 = call i32 @memset(%struct.TYPE_4__* %34, i32 0, i32 %35)
  %37 = call i32 @init_waitqueue_head(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 3))
  %38 = call i32 @init_waitqueue_head(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 2))
  %39 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 1))
  %40 = load i64, i64* @SB_OPEN, align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sbp, i32 0, i32 0), align 8
  %41 = call i32 (...) @wmb()
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %28, %19, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i64 @xchg(i64*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @vmalloc(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
