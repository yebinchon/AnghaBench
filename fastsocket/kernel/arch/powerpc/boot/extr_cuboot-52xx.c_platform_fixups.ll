; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-52xx.c_platform_fixups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-52xx.c_platform_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@bd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"fsl,mpc5200-immr\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fsl,mpc5200b-immr\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"system-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @platform_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_fixups() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 4), align 4
  %7 = call i32 @dt_fixup_memory(i32 %5, i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 3), align 4
  %9 = call i32 @dt_fixup_mac_addresses(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 2), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %12 = sdiv i32 %11, 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %14 = call i32 @dt_fixup_cpu_clocks(i32 %10, i32 %12, i32 %13)
  %15 = call i8* @find_node_by_devtype(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %1, align 8
  br label %20

20:                                               ; preds = %18, %0
  %21 = load i8*, i8** %1, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %24, i8** %1, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i8*, i8** %1, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @setprop(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 1), i32 4)
  %31 = load i8*, i8** %1, align 8
  %32 = bitcast i8** %2 to i8*
  %33 = call i32 @dt_xlate_reg(i8* %31, i32 0, i8* %32, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %49

36:                                               ; preds = %28
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr i8, i8* %37, i64 516
  %39 = call i32 @in_8(i8* %38)
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 8, i32 4
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %4, align 4
  %47 = load i8*, i8** %1, align 8
  %48 = call i32 @setprop(i8* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %4, i32 4)
  br label %49

49:                                               ; preds = %35, %36, %25
  ret void
}

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @dt_fixup_mac_addresses(i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i8* @find_node_by_devtype(i32*, i8*) #1

declare dso_local i8* @find_node_by_compatible(i32*, i8*) #1

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #1

declare dso_local i32 @dt_xlate_reg(i8*, i32, i8*, i32*) #1

declare dso_local i32 @in_8(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
