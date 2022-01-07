; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_init_portstructs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_init_portstructs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2232_port = type { i32, i32, %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@MAX_A2232_BOARDS = common dso_local global i32 0, align 4
@NUMLINES = common dso_local global i32 0, align 4
@a2232_ports = common dso_local global %struct.a2232_port* null, align 8
@a2232_port_ops = common dso_local global i32 0, align 4
@A2232_MAGIC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@a2232_real_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @a2232_init_portstructs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2232_init_portstructs() #0 {
  %1 = alloca %struct.a2232_port*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %55, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAX_A2232_BOARDS, align 4
  %6 = load i32, i32* @NUMLINES, align 4
  %7 = mul nsw i32 %5, %6
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %58

9:                                                ; preds = %3
  %10 = load %struct.a2232_port*, %struct.a2232_port** @a2232_ports, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %10, i64 %12
  store %struct.a2232_port* %13, %struct.a2232_port** %1, align 8
  %14 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %15 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = call i32 @tty_port_init(%struct.TYPE_4__* %16)
  %18 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %19 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* @a2232_port_ops, i32** %21, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @NUMLINES, align 4
  %24 = sdiv i32 %22, %23
  %25 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %26 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @NUMLINES, align 4
  %29 = srem i32 %27, %28
  %30 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %31 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %33 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %35 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %37 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @A2232_MAGIC, align 4
  %39 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %40 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @HZ, align 4
  %43 = sdiv i32 %42, 2
  %44 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %45 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 30, %47
  %49 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %50 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.a2232_port*, %struct.a2232_port** %1, align 8
  %53 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32* @a2232_real_driver, i32** %54, align 8
  br label %55

55:                                               ; preds = %9
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %3

58:                                               ; preds = %3
  ret void
}

declare dso_local i32 @tty_port_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
