; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ioc4_set_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ioc4_set_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_port = type { %struct.TYPE_4__*, %struct.hooks* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hooks = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc4_port*, i32)* @ioc4_set_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc4_set_proto(%struct.ioc4_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ioc4_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hooks*, align 8
  store %struct.ioc4_port* %0, %struct.ioc4_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %8 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %7, i32 0, i32 1
  %9 = load %struct.hooks*, %struct.hooks** %8, align 8
  store %struct.hooks* %9, %struct.hooks** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 128, label %23
  ]

11:                                               ; preds = %2
  %12 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %13 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.hooks*, %struct.hooks** %6, align 8
  %18 = getelementptr inbounds %struct.hooks, %struct.hooks* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @writel(i32 0, i32* %21)
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %25 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.hooks*, %struct.hooks** %6, align 8
  %30 = getelementptr inbounds %struct.hooks, %struct.hooks* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @writel(i32 1, i32* %33)
  br label %36

35:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %23, %11
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
