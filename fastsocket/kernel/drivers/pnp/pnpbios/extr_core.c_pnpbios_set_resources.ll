; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_core.c_pnpbios_set_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_core.c_pnpbios_set_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pnp_dev = type { i32, i32 }
%struct.pnp_bios_node = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"set resources\0A\00", align 1
@node_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PNPMODE_DYNAMIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @pnpbios_set_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpbios_set_resources(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_bios_node*, align 8
  %6 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %11 = call i32 @pnpbios_is_dynamic(%struct.pnp_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 0
  %19 = call i32 @pnp_dbg(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_info, i32 0, i32 0), align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pnp_bios_node* @kzalloc(i32 %20, i32 %21)
  store %struct.pnp_bios_node* %22, %struct.pnp_bios_node** %5, align 8
  %23 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %24 = icmp ne %struct.pnp_bios_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %60

26:                                               ; preds = %16
  %27 = load i64, i64* @PNPMODE_DYNAMIC, align 8
  %28 = trunc i64 %27 to i8
  %29 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %30 = call i64 @pnp_bios_get_dev_node(i32* %4, i8 signext %28, %struct.pnp_bios_node* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %34 = call i32 @kfree(%struct.pnp_bios_node* %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %26
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %39 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %40 = call i64 @pnpbios_write_resources_to_node(%struct.pnp_dev* %38, %struct.pnp_bios_node* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %44 = call i32 @kfree(%struct.pnp_bios_node* %43)
  store i32 -1, i32* %2, align 4
  br label %60

45:                                               ; preds = %37
  %46 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %47 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @PNPMODE_DYNAMIC, align 8
  %50 = trunc i64 %49 to i8
  %51 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %52 = call i32 @pnp_bios_set_dev_node(i32 %48, i8 signext %50, %struct.pnp_bios_node* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %5, align 8
  %54 = call i32 @kfree(%struct.pnp_bios_node* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %42, %32, %25, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pnpbios_is_dynamic(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*) #1

declare dso_local %struct.pnp_bios_node* @kzalloc(i32, i32) #1

declare dso_local i64 @pnp_bios_get_dev_node(i32*, i8 signext, %struct.pnp_bios_node*) #1

declare dso_local i32 @kfree(%struct.pnp_bios_node*) #1

declare dso_local i64 @pnpbios_write_resources_to_node(%struct.pnp_dev*, %struct.pnp_bios_node*) #1

declare dso_local i32 @pnp_bios_set_dev_node(i32, i8 signext, %struct.pnp_bios_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
