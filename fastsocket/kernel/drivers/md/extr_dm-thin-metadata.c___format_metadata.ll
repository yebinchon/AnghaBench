; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___format_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___format_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@THIN_SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tm_create_with_sm failed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"sm_disk_create failed\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not create non-blocking clone tm\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't create devices root\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*)* @__format_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__format_metadata(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  %5 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %6 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @THIN_SUPERBLOCK_LOCATION, align 4
  %9 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %9, i32 0, i32 1
  %11 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %12 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %11, i32 0, i32 0
  %13 = call i32 @dm_tm_create_with_sm(i32 %7, i32 %8, i32* %10, i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %100

19:                                               ; preds = %1
  %20 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dm_sm_disk_create(i32 %22, i32 0)
  %24 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %27 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = call i32 @DMERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %34 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %19
  %38 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %39 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dm_tm_create_non_blocking_clone(i32 %40)
  %42 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %43 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %45 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = call i32 @DMERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %85

52:                                               ; preds = %37
  %53 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %54 = call i32 @__setup_btree_details(%struct.dm_pool_metadata* %53)
  %55 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %56 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %55, i32 0, i32 7
  %57 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %58 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %57, i32 0, i32 6
  %59 = call i32 @dm_btree_empty(i32* %56, i32* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %80

63:                                               ; preds = %52
  %64 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %65 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %64, i32 0, i32 5
  %66 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %67 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %66, i32 0, i32 4
  %68 = call i32 @dm_btree_empty(i32* %65, i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = call i32 @DMERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %80

73:                                               ; preds = %63
  %74 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %75 = call i32 @__write_initial_superblock(%struct.dm_pool_metadata* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %80

79:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %100

80:                                               ; preds = %78, %71, %62
  %81 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %82 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dm_tm_destroy(i32 %83)
  br label %85

85:                                               ; preds = %80, %48
  %86 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %87 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dm_sm_destroy(i32 %88)
  br label %90

90:                                               ; preds = %85, %31
  %91 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %92 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dm_tm_destroy(i32 %93)
  %95 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %96 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dm_sm_destroy(i32 %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %90, %79, %16
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @dm_tm_create_with_sm(i32, i32, i32*, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_sm_disk_create(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dm_tm_create_non_blocking_clone(i32) #1

declare dso_local i32 @__setup_btree_details(%struct.dm_pool_metadata*) #1

declare dso_local i32 @dm_btree_empty(i32*, i32*) #1

declare dso_local i32 @__write_initial_superblock(%struct.dm_pool_metadata*) #1

declare dso_local i32 @dm_tm_destroy(i32) #1

declare dso_local i32 @dm_sm_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
