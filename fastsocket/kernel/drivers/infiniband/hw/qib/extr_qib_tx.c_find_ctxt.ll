; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_tx.c_find_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_tx.c_find_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, %struct.qib_ctxtdata** }
%struct.qib_ctxtdata = type { i32, i32, i32, i32* }

@_QIB_EVENT_DISARM_BUFS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32)* @find_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ctxt(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %80, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %15
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 3
  %24 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %24, i64 %26
  %28 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %27, align 8
  store %struct.qib_ctxtdata* %28, %struct.qib_ctxtdata** %5, align 8
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %30 = icmp ne %struct.qib_ctxtdata* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %34 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %40 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %43 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %41, %44
  %46 = icmp uge i32 %38, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37, %31, %21
  br label %80

48:                                               ; preds = %37
  %49 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %50 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %79

53:                                               ; preds = %48
  %54 = load i32, i32* @_QIB_EVENT_DISARM_BUFS_BIT, align 4
  %55 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %56 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @set_bit(i32 %54, i32* %58)
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %75, %53
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i32, i32* @_QIB_EVENT_DISARM_BUFS_BIT, align 4
  %68 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %69 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @set_bit(i32 %67, i32* %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %60

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %48
  store i32 1, i32* %7, align 4
  br label %83

80:                                               ; preds = %47
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %15

83:                                               ; preds = %79, %15
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 2
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
