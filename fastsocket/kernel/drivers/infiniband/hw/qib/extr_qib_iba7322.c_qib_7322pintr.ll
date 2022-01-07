; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322pintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322pintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qib_ctxtdata = type { i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i64 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QIB_I_RCVAVAIL_LSB = common dso_local global i64 0, align 8
@QIB_I_RCVURG_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_7322pintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322pintr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qib_ctxtdata*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qib_ctxtdata*
  store %struct.qib_ctxtdata* %10, %struct.qib_ctxtdata** %6, align 8
  %11 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %12 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %11, i32 0, i32 1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  store %struct.qib_devdata* %13, %struct.qib_devdata** %7, align 8
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QIB_PRESENT, align 4
  %18 = load i32, i32* @QIB_BADINTR, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @QIB_PRESENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %39 = load i32, i32* @kr_intclear, align 4
  %40 = load i64, i64* @QIB_I_RCVAVAIL_LSB, align 8
  %41 = shl i64 1, %40
  %42 = load i64, i64* @QIB_I_RCVURG_LSB, align 8
  %43 = shl i64 1, %42
  %44 = or i64 %41, %43
  %45 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %46 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = shl i64 %44, %47
  %49 = call i32 @qib_write_kreg(%struct.qib_devdata* %38, i32 %39, i64 %48)
  %50 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %51 = call i32 @qib_kreceive(%struct.qib_ctxtdata* %50, i32* null, i64* %8)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %37, %23
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_kreceive(%struct.qib_ctxtdata*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
