; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_read_kreg64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_read_kreg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32* }

@QIB_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i64)* @qib_read_kreg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_read_kreg64(%struct.qib_devdata* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @QIB_PRESENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %25

18:                                               ; preds = %10
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @readq(i32* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @readq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
