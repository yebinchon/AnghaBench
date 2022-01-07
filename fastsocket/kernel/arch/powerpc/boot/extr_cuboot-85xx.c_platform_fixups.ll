; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-85xx.c_platform_fixups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-85xx.c_platform_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@bd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"ethernet0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ethernet1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ethernet2\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ethernet3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @platform_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_fixups() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 7), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 6), align 4
  %5 = call i32 @dt_fixup_memory(i32 %3, i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 4
  %7 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 4), align 4
  %9 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 3), align 4
  %11 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 2), align 4
  %13 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %16 = sdiv i32 %15, 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %18 = call i32 @dt_fixup_cpu_clocks(i32 %14, i32 %16, i32 %17)
  %19 = call i8* @find_node_by_devtype(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %0
  store i8* null, i8** %2, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @setprop(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), i32 4)
  br label %25

25:                                               ; preds = %35, %34, %22
  %26 = load i8*, i8** %2, align 8
  %27 = call i8* @find_node_by_devtype(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %27, i8** %2, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8*, i8** %2, align 8
  %31 = call i8* @get_parent(i8* %30)
  %32 = load i8*, i8** %1, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %25

35:                                               ; preds = %29
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @setprop(i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), i32 4)
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %0
  ret void
}

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @dt_fixup_mac_address_by_alias(i8*, i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i8* @find_node_by_devtype(i8*, i8*) #1

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #1

declare dso_local i8* @get_parent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
