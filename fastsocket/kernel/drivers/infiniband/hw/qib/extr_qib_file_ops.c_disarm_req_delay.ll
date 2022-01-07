; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_disarm_req_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_disarm_req_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32, i32* }

@_QIB_EVENT_DISARM_BUFS_BIT = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*)* @disarm_req_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disarm_req_delay(%struct.qib_ctxtdata* %0) #0 {
  %2 = alloca %struct.qib_ctxtdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @usable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %61, label %10

10:                                               ; preds = %1
  %11 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i32, i32* @_QIB_EVENT_DISARM_BUFS_BIT, align 4
  %17 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @set_bit(i32 %16, i32* %20)
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %37, %15
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i32, i32* @_QIB_EVENT_DISARM_BUFS_BIT, align 4
  %30 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @set_bit(i32 %29, i32* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %22

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %10
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usable(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 300
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i1 [ false, %42 ], [ %50, %48 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = call i32 @msleep(i32 100)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %42

58:                                               ; preds = %51
  %59 = load i32, i32* @ENETDOWN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %1
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @usable(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
