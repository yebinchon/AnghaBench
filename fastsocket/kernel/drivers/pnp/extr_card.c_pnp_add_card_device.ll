; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_pnp_add_card_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_card.c_pnp_add_card_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_card = type { i32, i32, i32 }
%struct.pnp_dev = type { i32, %struct.pnp_card*, i32, %struct.TYPE_3__*, %struct.TYPE_4__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"%02x:%02x.%02x\00", align 1
@pnp_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_add_card_device(%struct.pnp_card* %0, %struct.pnp_dev* %1) #0 {
  %3 = alloca %struct.pnp_card*, align 8
  %4 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_card* %0, %struct.pnp_card** %3, align 8
  store %struct.pnp_dev* %1, %struct.pnp_dev** %4, align 8
  %5 = load %struct.pnp_card*, %struct.pnp_card** %3, align 8
  %6 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %5, i32 0, i32 2
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* %6, i32** %9, align 8
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 4
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pnp_card*, %struct.pnp_card** %3, align 8
  %20 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_set_name(%struct.TYPE_4__* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  %26 = call i32 @spin_lock(i32* @pnp_lock)
  %27 = load %struct.pnp_card*, %struct.pnp_card** %3, align 8
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %28, i32 0, i32 1
  store %struct.pnp_card* %27, %struct.pnp_card** %29, align 8
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %30, i32 0, i32 0
  %32 = load %struct.pnp_card*, %struct.pnp_card** %3, align 8
  %33 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = call i32 @spin_unlock(i32* @pnp_lock)
  ret i32 0
}

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
