; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-85xx-cpm2.c_platform_fixups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-85xx-cpm2.c_platform_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@bd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"ethernet0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ethernet1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ethernet2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"fsl,cpm2-brg\00", align 1
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
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %14 = sdiv i32 %13, 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %16 = call i32 @dt_fixup_cpu_clocks(i32 %12, i32 %14, i32 %15)
  %17 = call i8* @find_node_by_devtype(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %17, i8** %1, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %0
  store i8* null, i8** %2, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @setprop(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), i32 4)
  br label %23

23:                                               ; preds = %33, %32, %20
  %24 = load i8*, i8** %2, align 8
  %25 = call i8* @find_node_by_devtype(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %25, i8** %2, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = call i8* @get_parent(i8* %28)
  %30 = load i8*, i8** %1, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %23

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @setprop(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), i32 4)
  br label %23

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %0
  %38 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8* %38, i8** %1, align 8
  %39 = load i8*, i8** %1, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %1, align 8
  %43 = call i32 @setprop(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 1), i32 4)
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @dt_fixup_mac_address_by_alias(i8*, i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i8* @find_node_by_devtype(i8*, i8*) #1

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #1

declare dso_local i8* @get_parent(i8*) #1

declare dso_local i8* @find_node_by_compatible(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
