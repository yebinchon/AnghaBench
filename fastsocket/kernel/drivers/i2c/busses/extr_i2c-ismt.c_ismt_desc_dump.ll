; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_desc_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_desc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_priv = type { i64, %struct.ismt_desc*, %struct.TYPE_2__* }
%struct.ismt_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Dump of the descriptor struct:  0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ismt_priv*)* @ismt_desc_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ismt_desc_dump(%struct.ismt_priv* %0) #0 {
  %2 = alloca %struct.ismt_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ismt_desc*, align 8
  store %struct.ismt_priv* %0, %struct.ismt_priv** %2, align 8
  %5 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %9, i32 0, i32 1
  %11 = load %struct.ismt_desc*, %struct.ismt_desc** %10, align 8
  %12 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %11, i64 %14
  store %struct.ismt_desc* %15, %struct.ismt_desc** %4, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.ismt_priv*, %struct.ismt_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %23 = call i32 @__ismt_desc_dump(%struct.device* %21, %struct.ismt_desc* %22)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @__ismt_desc_dump(%struct.device*, %struct.ismt_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
