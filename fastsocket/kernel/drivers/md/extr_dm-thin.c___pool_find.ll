; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c___pool_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c___pool_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { %struct.block_device*, %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.block_device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"metadata device already in use by a pool\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"different pool cannot replace a pool\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pool* (%struct.mapped_device*, %struct.block_device*, i64, i32, i8**, i32*)* @__pool_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pool* @__pool_find(%struct.mapped_device* %0, %struct.block_device* %1, i64 %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca %struct.pool*, align 8
  %8 = alloca %struct.mapped_device*, align 8
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.pool*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %8, align 8
  store %struct.block_device* %1, %struct.block_device** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.block_device*, %struct.block_device** %9, align 8
  %16 = call %struct.pool* @__pool_table_lookup_metadata_dev(%struct.block_device* %15)
  store %struct.pool* %16, %struct.pool** %14, align 8
  %17 = load %struct.pool*, %struct.pool** %14, align 8
  %18 = icmp ne %struct.pool* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %6
  %20 = load %struct.pool*, %struct.pool** %14, align 8
  %21 = getelementptr inbounds %struct.pool, %struct.pool* %20, i32 0, i32 1
  %22 = load %struct.mapped_device*, %struct.mapped_device** %21, align 8
  %23 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %24 = icmp ne %struct.mapped_device* %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.pool* @ERR_PTR(i32 %28)
  store %struct.pool* %29, %struct.pool** %7, align 8
  br label %63

30:                                               ; preds = %19
  %31 = load %struct.pool*, %struct.pool** %14, align 8
  %32 = call i32 @__pool_inc(%struct.pool* %31)
  br label %61

33:                                               ; preds = %6
  %34 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %35 = call %struct.pool* @__pool_table_lookup(%struct.mapped_device* %34)
  store %struct.pool* %35, %struct.pool** %14, align 8
  %36 = load %struct.pool*, %struct.pool** %14, align 8
  %37 = icmp ne %struct.pool* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.pool*, %struct.pool** %14, align 8
  %40 = getelementptr inbounds %struct.pool, %struct.pool* %39, i32 0, i32 0
  %41 = load %struct.block_device*, %struct.block_device** %40, align 8
  %42 = load %struct.block_device*, %struct.block_device** %9, align 8
  %43 = icmp ne %struct.block_device* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.pool* @ERR_PTR(i32 %47)
  store %struct.pool* %48, %struct.pool** %7, align 8
  br label %63

49:                                               ; preds = %38
  %50 = load %struct.pool*, %struct.pool** %14, align 8
  %51 = call i32 @__pool_inc(%struct.pool* %50)
  br label %60

52:                                               ; preds = %33
  %53 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %54 = load %struct.block_device*, %struct.block_device** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i8**, i8*** %12, align 8
  %58 = call %struct.pool* @pool_create(%struct.mapped_device* %53, %struct.block_device* %54, i64 %55, i32 %56, i8** %57)
  store %struct.pool* %58, %struct.pool** %14, align 8
  %59 = load i32*, i32** %13, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %49
  br label %61

61:                                               ; preds = %60, %30
  %62 = load %struct.pool*, %struct.pool** %14, align 8
  store %struct.pool* %62, %struct.pool** %7, align 8
  br label %63

63:                                               ; preds = %61, %44, %25
  %64 = load %struct.pool*, %struct.pool** %7, align 8
  ret %struct.pool* %64
}

declare dso_local %struct.pool* @__pool_table_lookup_metadata_dev(%struct.block_device*) #1

declare dso_local %struct.pool* @ERR_PTR(i32) #1

declare dso_local i32 @__pool_inc(%struct.pool*) #1

declare dso_local %struct.pool* @__pool_table_lookup(%struct.mapped_device*) #1

declare dso_local %struct.pool* @pool_create(%struct.mapped_device*, %struct.block_device*, i64, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
