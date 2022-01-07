; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_u3msi.c_mpic_u3msi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_u3msi.c_mpic_u3msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"u3msi: Error allocating bitmap!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"u3msi: Registering MPIC U3 MSI callbacks.\0A\00", align 1
@msi_mpic = common dso_local global %struct.mpic* null, align 8
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@u3msi_setup_msi_irqs = common dso_local global i32 0, align 4
@u3msi_teardown_msi_irqs = common dso_local global i32 0, align 4
@u3msi_msi_check_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpic_u3msi_init(%struct.mpic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpic*, align 8
  %4 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %3, align 8
  %5 = load %struct.mpic*, %struct.mpic** %3, align 8
  %6 = call i32 @mpic_msi_init_allocator(%struct.mpic* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.mpic*, %struct.mpic** @msi_mpic, align 8
  %15 = call i32 @BUG_ON(%struct.mpic* %14)
  %16 = load %struct.mpic*, %struct.mpic** %3, align 8
  store %struct.mpic* %16, %struct.mpic** @msi_mpic, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 2), align 4
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* @u3msi_setup_msi_irqs, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 2), align 4
  %20 = load i32, i32* @u3msi_teardown_msi_irqs, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 4
  %21 = load i32, i32* @u3msi_msi_check_device, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @mpic_msi_init_allocator(%struct.mpic*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @BUG_ON(%struct.mpic*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
