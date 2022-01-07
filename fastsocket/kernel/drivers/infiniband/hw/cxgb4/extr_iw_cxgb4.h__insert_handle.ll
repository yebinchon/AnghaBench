; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_iw_cxgb4.h__insert_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_iw_cxgb4.h__insert_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.idr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.idr*, i8*, i32, i32)* @_insert_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_insert_handle(%struct.c4iw_dev* %0, %struct.idr* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.c4iw_dev*, align 8
  %8 = alloca %struct.idr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %7, align 8
  store %struct.idr* %1, %struct.idr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %58, %5
  %15 = load %struct.idr*, %struct.idr** %8, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @GFP_KERNEL, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @idr_pre_get(%struct.idr* %15, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %65

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.c4iw_dev*, %struct.c4iw_dev** %7, align 8
  %34 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.idr*, %struct.idr** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @idr_get_new_above(%struct.idr* %37, i8* %38, i32 %39, i32* %13)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %44, %45
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi i1 [ false, %36 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.c4iw_dev*, %struct.c4iw_dev** %7, align 8
  %55 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  br label %57

57:                                               ; preds = %53, %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %14, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %26
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @idr_pre_get(%struct.idr*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_get_new_above(%struct.idr*, i8*, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
