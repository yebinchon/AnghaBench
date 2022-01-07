; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_core.c_isapnp_disable_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_core.c_isapnp_disable_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @isapnp_disable_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_disable_resources(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %5 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @isapnp_cfg_begin(i32 %16, i32 %19)
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @isapnp_deactivate(i32 %23)
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = call i32 (...) @isapnp_cfg_end()
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %11, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @isapnp_cfg_begin(i32, i32) #1

declare dso_local i32 @isapnp_deactivate(i32) #1

declare dso_local i32 @isapnp_cfg_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
