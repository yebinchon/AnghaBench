; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_init_portstructs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_init_portstructs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@scc_ports = common dso_local global %struct.scc_port* null, align 8
@scc_port_ops = common dso_local global i32 0, align 4
@SCC_MAGIC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@scc_real_driver = common dso_local global i32 0, align 4
@MUTEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scc_init_portstructs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_init_portstructs() #0 {
  %1 = alloca %struct.scc_port*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %46, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %49

6:                                                ; preds = %3
  %7 = load %struct.scc_port*, %struct.scc_port** @scc_ports, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %7, i64 %9
  store %struct.scc_port* %10, %struct.scc_port** %1, align 8
  %11 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %12 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = call i32 @tty_port_init(%struct.TYPE_4__* %13)
  %15 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %16 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32* @scc_port_ops, i32** %18, align 8
  %19 = load i32, i32* @SCC_MAGIC, align 4
  %20 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %21 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 2
  %25 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %26 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 30, %28
  %30 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %31 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %34 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store i32* @scc_real_driver, i32** %35, align 8
  %36 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %37 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.scc_port*, %struct.scc_port** %1, align 8
  %42 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @init_waitqueue_head(i32* %44)
  br label %46

46:                                               ; preds = %6
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %3

49:                                               ; preds = %3
  ret void
}

declare dso_local i32 @tty_port_init(%struct.TYPE_4__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
