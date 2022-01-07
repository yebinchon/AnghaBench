; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, i32, %struct.efx_vf*, i32, i32, %struct.TYPE_2__* }
%struct.efx_vf = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_sriov_fini(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_vf*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = call i32 @efx_sriov_usrev(%struct.efx_nic* %17, i32 0)
  %19 = call i32 (...) @rtnl_lock()
  %20 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %42, %10
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 3
  %32 = load %struct.efx_vf*, %struct.efx_vf** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %32, i64 %34
  store %struct.efx_vf* %35, %struct.efx_vf** %3, align 8
  %36 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %37 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %36, i32 0, i32 1
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.efx_vf*, %struct.efx_vf** %3, align 8
  %40 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %39, i32 0, i32 0
  %41 = call i32 @cancel_work_sync(i32* %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 5
  %48 = call i32 @cancel_work_sync(i32* %47)
  %49 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pci_disable_sriov(i32 %51)
  %53 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %54 = call i32 @efx_sriov_vfs_fini(%struct.efx_nic* %53)
  %55 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %56 = call i32 @efx_sriov_free_local(%struct.efx_nic* %55)
  %57 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 3
  %59 = load %struct.efx_vf*, %struct.efx_vf** %58, align 8
  %60 = call i32 @kfree(%struct.efx_vf* %59)
  %61 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %62 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 2
  %64 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %61, i32* %63)
  %65 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %66 = call i32 @efx_sriov_cmd(%struct.efx_nic* %65, i32 0, i32* null, i32* null)
  br label %67

67:                                               ; preds = %45, %9
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @efx_sriov_usrev(%struct.efx_nic*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @pci_disable_sriov(i32) #1

declare dso_local i32 @efx_sriov_vfs_fini(%struct.efx_nic*) #1

declare dso_local i32 @efx_sriov_free_local(%struct.efx_nic*) #1

declare dso_local i32 @kfree(%struct.efx_vf*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_sriov_cmd(%struct.efx_nic*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
