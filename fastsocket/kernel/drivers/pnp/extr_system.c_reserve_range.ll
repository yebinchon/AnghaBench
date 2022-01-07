; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_system.c_reserve_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_system.c_reserve_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pnp %s\00", align 1
@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%pR %s reserved\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"has been\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"could not be\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, %struct.resource*, i32)* @reserve_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reserve_range(%struct.pnp_dev* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 0
  %14 = call i8* @dev_name(i32* %13)
  store i8* %14, i8** %8, align 8
  %15 = load %struct.resource*, %struct.resource** %5, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i32 16, i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %70

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @snprintf(i8* %27, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = load i8*, i8** %7, align 8
  %39 = call %struct.resource* @request_region(i64 %33, i64 %37, i8* %38)
  store %struct.resource* %39, %struct.resource** %11, align 8
  br label %48

40:                                               ; preds = %26
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub nsw i64 %42, %43
  %45 = add nsw i64 %44, 1
  %46 = load i8*, i8** %7, align 8
  %47 = call %struct.resource* @request_mem_region(i64 %41, i64 %45, i8* %46)
  store %struct.resource* %47, %struct.resource** %11, align 8
  br label %48

48:                                               ; preds = %40, %32
  %49 = load %struct.resource*, %struct.resource** %11, align 8
  %50 = icmp ne %struct.resource* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @IORESOURCE_BUSY, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %61

58:                                               ; preds = %48
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @kfree(i8* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %62, i32 0, i32 0
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = load %struct.resource*, %struct.resource** %11, align 8
  %66 = icmp ne %struct.resource* %65, null
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %69 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %64, i8* %68)
  br label %70

70:                                               ; preds = %61, %25
  ret void
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.resource* @request_region(i64, i64, i8*) #1

declare dso_local %struct.resource* @request_mem_region(i64, i64, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.resource*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
