; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipoib_cm_tx = type { i32 }
%struct.ib_send_wr = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, %struct.ipoib_cm_tx*, i32, i32, i32)* @post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_send(%struct.ipoib_dev_priv* %0, %struct.ipoib_cm_tx* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.ipoib_cm_tx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_send_wr*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %6, align 8
  store %struct.ipoib_cm_tx* %1, %struct.ipoib_cm_tx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %12, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @IPOIB_OP_CM, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %7, align 8
  %34 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 0
  %38 = call i32 @ib_post_send(i32 %35, %struct.TYPE_4__* %37, %struct.ib_send_wr** %11)
  ret i32 %38
}

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_4__*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
