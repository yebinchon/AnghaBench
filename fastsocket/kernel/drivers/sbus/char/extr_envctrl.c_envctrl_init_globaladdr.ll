; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_init_globaladdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_envctrl.c_envctrl_init_globaladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_child_t = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PCF8584_VOLTAGE_TYPE = common dso_local global i64 0, align 8
@chnls_mask = common dso_local global i32* null, align 8
@ENVCTRL_GLOBALADDR_MON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_child_t*)* @envctrl_init_globaladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envctrl_init_globaladdr(%struct.i2c_child_t* %0) #0 {
  %2 = alloca %struct.i2c_child_t*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_child_t* %0, %struct.i2c_child_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.i2c_child_t*, %struct.i2c_child_t** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = load i64, i64* @PCF8584_VOLTAGE_TYPE, align 8
  %12 = load %struct.i2c_child_t*, %struct.i2c_child_t** %2, align 8
  %13 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %11, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %10
  %22 = load i32*, i32** @chnls_mask, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_child_t*, %struct.i2c_child_t** %2, align 8
  %28 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %21, %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  %36 = load i32, i32* @ENVCTRL_GLOBALADDR_MON, align 4
  %37 = load %struct.i2c_child_t*, %struct.i2c_child_t** %2, align 8
  %38 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
