; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_fc4_deregister_provider.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_fc4_deregister_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc4_prov = type { i64 }

@FC_FC4_PROV_SIZE = common dso_local global i32 0, align 4
@fc_prov_mutex = common dso_local global i32 0, align 4
@fc_passive_prov = common dso_local global i32* null, align 8
@fc_active_prov = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_fc4_deregister_provider(i32 %0, %struct.fc4_prov* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc4_prov*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fc4_prov* %1, %struct.fc4_prov** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FC_FC4_PROV_SIZE, align 4
  %7 = icmp uge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = call i32 @mutex_lock(i32* @fc_prov_mutex)
  %11 = load %struct.fc4_prov*, %struct.fc4_prov** %4, align 8
  %12 = getelementptr inbounds %struct.fc4_prov, %struct.fc4_prov* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** @fc_passive_prov, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rcu_assign_pointer(i32 %20, i32* null)
  br label %29

22:                                               ; preds = %2
  %23 = load i32*, i32** @fc_active_prov, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rcu_assign_pointer(i32 %27, i32* null)
  br label %29

29:                                               ; preds = %22, %15
  %30 = call i32 @mutex_unlock(i32* @fc_prov_mutex)
  %31 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
