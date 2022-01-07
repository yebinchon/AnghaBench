; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_modify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hcp_if.c_hipz_h_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_adapter_handle = type { i32 }

@IB_PORT_SHUTDOWN = common dso_local global i32 0, align 4
@H_MP_SHUTDOWN = common dso_local global i32 0, align 4
@IB_PORT_INIT_TYPE = common dso_local global i32 0, align 4
@H_MP_INIT_TYPE = common dso_local global i32 0, align 4
@IB_PORT_RESET_QKEY_CNTR = common dso_local global i32 0, align 4
@H_MP_RESET_QKEY_CTR = common dso_local global i32 0, align 4
@H_MODIFY_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hipz_h_modify_port(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipz_adapter_handle, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %6, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @IB_PORT_SHUTDOWN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i32, i32* @H_MP_SHUTDOWN, align 4
  %20 = call i32 @EHCA_BMASK_SET(i32 %19, i32 1)
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %18, %5
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @IB_PORT_INIT_TYPE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @H_MP_INIT_TYPE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @EHCA_BMASK_SET(i32 %29, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IB_PORT_RESET_QKEY_CNTR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @H_MP_RESET_QKEY_CTR, align 4
  %41 = call i32 @EHCA_BMASK_SET(i32 %40, i32 1)
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @H_MODIFY_PORT, align 4
  %46 = getelementptr inbounds %struct.ipz_adapter_handle, %struct.ipz_adapter_handle* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @ehca_plpar_hcall_norets(i32 %45, i32 %47, i32 %48, i32 %49, i32 0, i32 0, i32 0, i32 0)
  ret i32 %50
}

declare dso_local i32 @EHCA_BMASK_SET(i32, i32) #1

declare dso_local i32 @ehca_plpar_hcall_norets(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
