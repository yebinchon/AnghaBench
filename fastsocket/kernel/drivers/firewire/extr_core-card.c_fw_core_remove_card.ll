; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-card.c_fw_core_remove_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-card.c_fw_core_remove_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card_driver = type { i32, i32, i32 (%struct.fw_card.0*, i32, i32, i32)* }
%struct.fw_card.0 = type opaque
%struct.fw_card = type { i32, i32, i32, %struct.fw_card_driver*, i32 }

@dummy_driver_template = common dso_local global %struct.fw_card_driver zeroinitializer, align 8
@PHY_LINK_ACTIVE = common dso_local global i32 0, align 4
@PHY_CONTENDER = common dso_local global i32 0, align 4
@card_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_core_remove_card(%struct.fw_card* %0) #0 {
  %2 = alloca %struct.fw_card*, align 8
  %3 = alloca %struct.fw_card_driver, align 8
  store %struct.fw_card* %0, %struct.fw_card** %2, align 8
  %4 = bitcast %struct.fw_card_driver* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.fw_card_driver* @dummy_driver_template to i8*), i64 16, i1 false)
  %5 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %6 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %5, i32 0, i32 3
  %7 = load %struct.fw_card_driver*, %struct.fw_card_driver** %6, align 8
  %8 = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %7, i32 0, i32 2
  %9 = load i32 (%struct.fw_card.0*, i32, i32, i32)*, i32 (%struct.fw_card.0*, i32, i32, i32)** %8, align 8
  %10 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %11 = bitcast %struct.fw_card* %10 to %struct.fw_card.0*
  %12 = load i32, i32* @PHY_LINK_ACTIVE, align 4
  %13 = load i32, i32* @PHY_CONTENDER, align 4
  %14 = or i32 %12, %13
  %15 = call i32 %9(%struct.fw_card.0* %11, i32 4, i32 %14, i32 0)
  %16 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %17 = call i32 @fw_core_initiate_bus_reset(%struct.fw_card* %16, i32 1)
  %18 = call i32 @mutex_lock(i32* @card_mutex)
  %19 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %20 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %19, i32 0, i32 4
  %21 = call i32 @list_del_init(i32* %20)
  %22 = call i32 @mutex_unlock(i32* @card_mutex)
  %23 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %24 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %23, i32 0, i32 3
  %25 = load %struct.fw_card_driver*, %struct.fw_card_driver** %24, align 8
  %26 = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %30 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %29, i32 0, i32 3
  %31 = load %struct.fw_card_driver*, %struct.fw_card_driver** %30, align 8
  %32 = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.fw_card_driver, %struct.fw_card_driver* %3, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %36 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %35, i32 0, i32 3
  store %struct.fw_card_driver* %3, %struct.fw_card_driver** %36, align 8
  %37 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %38 = call i32 @fw_destroy_nodes(%struct.fw_card* %37)
  %39 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %40 = call i32 @fw_card_put(%struct.fw_card* %39)
  %41 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %42 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %41, i32 0, i32 2
  %43 = call i32 @wait_for_completion(i32* %42)
  %44 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %45 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %44, i32 0, i32 1
  %46 = call i32 @list_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %52 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %51, i32 0, i32 0
  %53 = call i32 @del_timer_sync(i32* %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fw_core_initiate_bus_reset(%struct.fw_card*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @list_del_init(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @fw_destroy_nodes(%struct.fw_card*) #2

declare dso_local i32 @fw_card_put(%struct.fw_card*) #2

declare dso_local i32 @wait_for_completion(i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @del_timer_sync(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
