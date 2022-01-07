; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322bufavail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322bufavail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qib_devdata = type { i32, i64 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QIB_I_SPIOBUFAVAIL = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_7322bufavail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322bufavail(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.qib_devdata*
  store %struct.qib_devdata* %8, %struct.qib_devdata** %6, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @QIB_PRESENT, align 4
  %13 = load i32, i32* @QIB_BADINTR, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @QIB_PRESENT, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %34 = load i32, i32* @kr_intclear, align 4
  %35 = load i32, i32* @QIB_I_SPIOBUFAVAIL, align 4
  %36 = call i32 @qib_write_kreg(%struct.qib_devdata* %33, i32 %34, i32 %35)
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @QIB_INITTED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %45 = call i32 @qib_ib_piobufavail(%struct.qib_devdata* %44)
  br label %49

46:                                               ; preds = %32
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %48 = call i32 @qib_wantpiobuf_7322_intr(%struct.qib_devdata* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_ib_piobufavail(%struct.qib_devdata*) #1

declare dso_local i32 @qib_wantpiobuf_7322_intr(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
