; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_system.c_reserve_resources_of_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_system.c_reserve_resources_of_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i32, i32, i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @reserve_resources_of_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reserve_resources_of_dev(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %7 = load i32, i32* @IORESOURCE_IO, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %6, i32 %7, i32 %8)
  store %struct.resource* %9, %struct.resource** %3, align 8
  %10 = icmp ne %struct.resource* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load %struct.resource*, %struct.resource** %3, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %44

19:                                               ; preds = %11
  %20 = load %struct.resource*, %struct.resource** %3, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %44

25:                                               ; preds = %19
  %26 = load %struct.resource*, %struct.resource** %3, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %44

31:                                               ; preds = %25
  %32 = load %struct.resource*, %struct.resource** %3, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.resource*, %struct.resource** %3, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %42 = load %struct.resource*, %struct.resource** %3, align 8
  %43 = call i32 @reserve_range(%struct.pnp_dev* %41, %struct.resource* %42, i32 1)
  br label %44

44:                                               ; preds = %40, %39, %30, %24, %18
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %5

47:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %49, i32 %50, i32 %51)
  store %struct.resource* %52, %struct.resource** %3, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.resource*, %struct.resource** %3, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %64 = load %struct.resource*, %struct.resource** %3, align 8
  %65 = call i32 @reserve_range(%struct.pnp_dev* %63, %struct.resource* %64, i32 0)
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %48

69:                                               ; preds = %48
  ret void
}

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @reserve_range(%struct.pnp_dev*, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
