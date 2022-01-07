; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_rtas_msi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_rtas_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"ibm,query-interrupt-source-number\00", align 1
@query_token = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ibm,change-msi\00", align 1
@change_token = common dso_local global i64 0, align 8
@RTAS_UNKNOWN_SERVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"rtas_msi: no RTAS tokens, no MSI support.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"rtas_msi: Registering RTAS MSI callbacks.\0A\00", align 1
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@rtas_setup_msi_irqs = common dso_local global i32 0, align 4
@rtas_teardown_msi_irqs = common dso_local global i32 0, align 4
@rtas_msi_check_device = common dso_local global i32 0, align 4
@rtas_msi_pci_irq_fixup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rtas_msi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_msi_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @rtas_token(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* @query_token, align 8
  %3 = call i64 @rtas_token(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i64 %3, i64* @change_token, align 8
  %4 = load i64, i64* @query_token, align 8
  %5 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @change_token, align 8
  %9 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %0
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %23

13:                                               ; preds = %7
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 3), align 4
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* @rtas_setup_msi_irqs, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 3), align 4
  %18 = load i32, i32* @rtas_teardown_msi_irqs, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 2), align 4
  %19 = load i32, i32* @rtas_msi_check_device, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 4
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i32, i32* @rtas_msi_pci_irq_fixup, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 4
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %13, %11
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i64 @rtas_token(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
