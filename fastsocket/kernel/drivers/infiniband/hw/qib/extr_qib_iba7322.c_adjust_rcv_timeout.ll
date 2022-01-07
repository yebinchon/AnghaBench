; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_adjust_rcv_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_adjust_rcv_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i64, %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@rcv_int_count = common dso_local global i32 0, align 4
@rcv_int_timeout = common dso_local global i32 0, align 4
@kr_rcvavailtimeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*, i32)* @adjust_rcv_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_rcv_timeout(%struct.qib_ctxtdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_ctxtdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %7, i32 0, i32 1
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  store %struct.qib_devdata* %9, %struct.qib_devdata** %5, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @rcv_int_count, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %44

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @rcv_int_count, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @rcv_int_timeout, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 1
  %40 = load i32, i32* @rcv_int_timeout, align 4
  %41 = call i32 @min(i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %33, %29
  br label %63

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %52 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %45, i32* %54, align 4
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %56 = load i64, i64* @kr_rcvavailtimeout, align 8
  %57 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %58 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %56, %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @qib_write_kreg(%struct.qib_devdata* %55, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %44, %42
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
