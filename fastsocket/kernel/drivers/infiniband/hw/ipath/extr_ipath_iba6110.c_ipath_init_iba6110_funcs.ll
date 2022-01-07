; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_init_iba6110_funcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_init_iba6110_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ipath_ht_intconfig = common dso_local global i32 0, align 4
@ipath_setup_ht_config = common dso_local global i32 0, align 4
@ipath_setup_ht_reset = common dso_local global i32 0, align 4
@ipath_ht_boardname = common dso_local global i32 0, align 4
@ipath_ht_init_hwerrors = common dso_local global i32 0, align 4
@ipath_ht_early_init = common dso_local global i32 0, align 4
@ipath_ht_handle_hwerrors = common dso_local global i32 0, align 4
@ipath_ht_quiet_serdes = common dso_local global i32 0, align 4
@ipath_ht_bringup_serdes = common dso_local global i32 0, align 4
@ipath_ht_clear_tids = common dso_local global i32 0, align 4
@ipath_ht_put_tid = common dso_local global i32 0, align 4
@ipath_setup_ht_cleanup = common dso_local global i32 0, align 4
@ipath_setup_ht_setextled = common dso_local global i32 0, align 4
@ipath_ht_get_base_info = common dso_local global i32 0, align 4
@ipath_ht_free_irq = common dso_local global i32 0, align 4
@ipath_ht_tidtemplate = common dso_local global i32 0, align 4
@ipath_ht_nointr_fallback = common dso_local global i32 0, align 4
@ipath_ht_get_msgheader = common dso_local global i32 0, align 4
@ipath_ht_config_ports = common dso_local global i32 0, align 4
@ipath_ht_read_counters = common dso_local global i32 0, align 4
@ipath_ht_xgxs_reset = common dso_local global i32 0, align 4
@ipath_ht_get_ib_cfg = common dso_local global i32 0, align 4
@ipath_ht_set_ib_cfg = common dso_local global i32 0, align 4
@ipath_ht_config_jint = common dso_local global i32 0, align 4
@ipath_ht_ib_updown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_init_iba6110_funcs(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %3 = load i32, i32* @ipath_ht_intconfig, align 4
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %4, i32 0, i32 24
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ipath_setup_ht_config, align 4
  %7 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %7, i32 0, i32 23
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ipath_setup_ht_reset, align 4
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 22
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ipath_ht_boardname, align 4
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 21
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ipath_ht_init_hwerrors, align 4
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %16, i32 0, i32 20
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ipath_ht_early_init, align 4
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %19, i32 0, i32 19
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ipath_ht_handle_hwerrors, align 4
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 18
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ipath_ht_quiet_serdes, align 4
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 17
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ipath_ht_bringup_serdes, align 4
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 16
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ipath_ht_clear_tids, align 4
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 15
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ipath_ht_put_tid, align 4
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ipath_setup_ht_cleanup, align 4
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ipath_setup_ht_setextled, align 4
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ipath_ht_get_base_info, align 4
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ipath_ht_free_irq, align 4
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ipath_ht_tidtemplate, align 4
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ipath_ht_nointr_fallback, align 4
  %52 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ipath_ht_get_msgheader, align 4
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ipath_ht_config_ports, align 4
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ipath_ht_read_counters, align 4
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ipath_ht_xgxs_reset, align 4
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %65 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @ipath_ht_get_ib_cfg, align 4
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ipath_ht_set_ib_cfg, align 4
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ipath_ht_config_jint, align 4
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %74 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ipath_ht_ib_updown, align 4
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %79 = call i32 @ipath_init_ht_variables(%struct.ipath_devdata* %78)
  ret void
}

declare dso_local i32 @ipath_init_ht_variables(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
