; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_core.c_pnpbios_get_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_core.c_pnpbios_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pnp_dev = type { i32, i32, i32 }
%struct.pnp_bios_node = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"get resources\0A\00", align 1
@node_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PNPMODE_DYNAMIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @pnpbios_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpbios_get_resources(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_bios_node*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %10 = call i32 @pnpbios_is_dynamic(%struct.pnp_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 1
  %18 = call i32 @pnp_dbg(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_info, i32 0, i32 0), align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pnp_bios_node* @kzalloc(i32 %19, i32 %20)
  store %struct.pnp_bios_node* %21, %struct.pnp_bios_node** %5, align 8
  %22 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %23 = icmp ne %struct.pnp_bios_node* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %46

25:                                               ; preds = %15
  %26 = load i64, i64* @PNPMODE_DYNAMIC, align 8
  %27 = trunc i64 %26 to i8
  %28 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %29 = call i64 @pnp_bios_get_dev_node(i32* %4, i8 signext %27, %struct.pnp_bios_node* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %33 = call i32 @kfree(%struct.pnp_bios_node* %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %46

36:                                               ; preds = %25
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %38 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %39 = call i32 @pnpbios_read_resources_from_node(%struct.pnp_dev* %37, %struct.pnp_bios_node* %38)
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %41 = call i32 @pnp_is_active(%struct.pnp_dev* %40)
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %45 = call i32 @kfree(%struct.pnp_bios_node* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %36, %31, %24, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @pnpbios_is_dynamic(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*) #1

declare dso_local %struct.pnp_bios_node* @kzalloc(i32, i32) #1

declare dso_local i64 @pnp_bios_get_dev_node(i32*, i8 signext, %struct.pnp_bios_node*) #1

declare dso_local i32 @kfree(%struct.pnp_bios_node*) #1

declare dso_local i32 @pnpbios_read_resources_from_node(%struct.pnp_dev*, %struct.pnp_bios_node*) #1

declare dso_local i32 @pnp_is_active(%struct.pnp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
