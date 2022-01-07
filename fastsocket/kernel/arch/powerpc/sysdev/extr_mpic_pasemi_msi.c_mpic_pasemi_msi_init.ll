; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_pasemi_msi.c_mpic_pasemi_msi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_pasemi_msi.c_mpic_pasemi_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"pasemi,pwrficient-openpic\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pasemi_msi: Error allocating bitmap!\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"pasemi_msi: Registering PA Semi MPIC MSI callbacks\0A\00", align 1
@msi_mpic = common dso_local global %struct.mpic* null, align 8
@ppc_md = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@pasemi_msi_setup_msi_irqs = common dso_local global i32 0, align 4
@pasemi_msi_teardown_msi_irqs = common dso_local global i32 0, align 4
@pasemi_msi_check_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpic_pasemi_msi_init(%struct.mpic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpic*, align 8
  %4 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %3, align 8
  %5 = load %struct.mpic*, %struct.mpic** %3, align 8
  %6 = getelementptr inbounds %struct.mpic, %struct.mpic* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.mpic*, %struct.mpic** %3, align 8
  %13 = getelementptr inbounds %struct.mpic, %struct.mpic* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @of_device_is_compatible(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %11
  %23 = load %struct.mpic*, %struct.mpic** %3, align 8
  %24 = call i32 @mpic_msi_init_allocator(%struct.mpic* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %22
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.mpic*, %struct.mpic** %3, align 8
  store %struct.mpic* %32, %struct.mpic** @msi_mpic, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 2), align 4
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load i32, i32* @pasemi_msi_setup_msi_irqs, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 2), align 4
  %36 = load i32, i32* @pasemi_msi_teardown_msi_irqs, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 1), align 4
  %37 = load i32, i32* @pasemi_msi_check_device, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %27, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @mpic_msi_init_allocator(%struct.mpic*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
