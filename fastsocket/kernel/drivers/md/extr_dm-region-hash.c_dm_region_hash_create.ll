; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_region_hash_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_region_hash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { void (i8*, %struct.bio_list*)*, void (i8*)*, void (i8*)*, i32, i32, i32, i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.dm_dirty_log*, i32, i8* }
%struct.bio_list = type opaque
%struct.bio_list.0 = type opaque
%struct.dm_dirty_log = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to allocate region hash memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RH_HASH_SHIFT = common dso_local global i32 0, align 4
@RH_HASH_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unable to allocate region hash bucket memory\00", align 1
@MIN_REGIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_region_hash* @dm_region_hash_create(i8* %0, void (i8*, %struct.bio_list.0*)* %1, void (i8*)* %2, void (i8*)* %3, i32 %4, i32 %5, %struct.dm_dirty_log* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.dm_region_hash*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void (i8*, %struct.bio_list.0*)*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca void (i8*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dm_dirty_log*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dm_region_hash*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store void (i8*, %struct.bio_list.0*)* %1, void (i8*, %struct.bio_list.0*)** %12, align 8
  store void (i8*)* %2, void (i8*)** %13, align 8
  store void (i8*)* %3, void (i8*)** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.dm_dirty_log* %6, %struct.dm_dirty_log** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = load i32, i32* %19, align 4
  %25 = ashr i32 %24, 6
  store i32 %25, i32* %22, align 4
  store i32 128, i32* %21, align 4
  br label %26

26:                                               ; preds = %31, %9
  %27 = load i32, i32* %21, align 4
  %28 = load i32, i32* %22, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %21, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %21, align 4
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %21, align 4
  %36 = lshr i32 %35, 1
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.dm_region_hash* @kmalloc(i32 144, i32 %37)
  store %struct.dm_region_hash* %38, %struct.dm_region_hash** %20, align 8
  %39 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %40 = icmp ne %struct.dm_region_hash* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = call i32 @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.dm_region_hash* @ERR_PTR(i32 %44)
  store %struct.dm_region_hash* %45, %struct.dm_region_hash** %10, align 8
  br label %171

46:                                               ; preds = %34
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %49 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %48, i32 0, i32 23
  store i8* %47, i8** %49, align 8
  %50 = load void (i8*, %struct.bio_list.0*)*, void (i8*, %struct.bio_list.0*)** %12, align 8
  %51 = bitcast void (i8*, %struct.bio_list.0*)* %50 to void (i8*, %struct.bio_list*)*
  %52 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %53 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %52, i32 0, i32 0
  store void (i8*, %struct.bio_list*)* %51, void (i8*, %struct.bio_list*)** %53, align 8
  %54 = load void (i8*)*, void (i8*)** %13, align 8
  %55 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %56 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %55, i32 0, i32 1
  store void (i8*)* %54, void (i8*)** %56, align 8
  %57 = load void (i8*)*, void (i8*)** %14, align 8
  %58 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %59 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %58, i32 0, i32 2
  store void (i8*)* %57, void (i8*)** %59, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %62 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %61, i32 0, i32 22
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %65 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %17, align 8
  %67 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %68 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %67, i32 0, i32 21
  store %struct.dm_dirty_log* %66, %struct.dm_dirty_log** %68, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %71 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %70, i32 0, i32 20
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %18, align 4
  %73 = call i64 @ffs(i32 %72)
  %74 = sub nsw i64 %73, 1
  %75 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %76 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %75, i32 0, i32 19
  store i64 %74, i64* %76, align 8
  %77 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %78 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %77, i32 0, i32 18
  %79 = call i32 @rwlock_init(i32* %78)
  %80 = load i32, i32* %21, align 4
  %81 = sub i32 %80, 1
  %82 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %83 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %86 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @RH_HASH_SHIFT, align 4
  %88 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %89 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %88, i32 0, i32 17
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @RH_HASH_MULT, align 4
  %91 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %92 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %91, i32 0, i32 16
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %21, align 4
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32* @vmalloc(i32 %96)
  %98 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %99 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %98, i32 0, i32 6
  store i32* %97, i32** %99, align 8
  %100 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %101 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %46
  %105 = call i32 @DMERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %107 = call i32 @kfree(%struct.dm_region_hash* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  %110 = call %struct.dm_region_hash* @ERR_PTR(i32 %109)
  store %struct.dm_region_hash* %110, %struct.dm_region_hash** %10, align 8
  br label %171

111:                                              ; preds = %46
  store i64 0, i64* %23, align 8
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i64, i64* %23, align 8
  %114 = load i32, i32* %21, align 4
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %119 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %23, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  br label %124

124:                                              ; preds = %117
  %125 = load i64, i64* %23, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %23, align 8
  br label %112

127:                                              ; preds = %112
  %128 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %129 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %128, i32 0, i32 15
  %130 = call i32 @spin_lock_init(i32* %129)
  %131 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %132 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %131, i32 0, i32 14
  %133 = call i32 @sema_init(i32* %132, i32 0)
  %134 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %135 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %134, i32 0, i32 13
  %136 = call i32 @atomic_set(i32* %135, i32 0)
  %137 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %138 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %137, i32 0, i32 12
  %139 = call i32 @INIT_LIST_HEAD(i32* %138)
  %140 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %141 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %140, i32 0, i32 11
  %142 = call i32 @INIT_LIST_HEAD(i32* %141)
  %143 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %144 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %143, i32 0, i32 10
  %145 = call i32 @INIT_LIST_HEAD(i32* %144)
  %146 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %147 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %146, i32 0, i32 9
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %150 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %149, i32 0, i32 8
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* @MIN_REGIONS, align 4
  %152 = call i32 @mempool_create_kmalloc_pool(i32 %151, i32 4)
  %153 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %154 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 8
  %155 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %156 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %127
  %160 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %161 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @vfree(i32* %162)
  %164 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  %165 = call i32 @kfree(%struct.dm_region_hash* %164)
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  %168 = call %struct.dm_region_hash* @ERR_PTR(i32 %167)
  store %struct.dm_region_hash* %168, %struct.dm_region_hash** %20, align 8
  br label %169

169:                                              ; preds = %159, %127
  %170 = load %struct.dm_region_hash*, %struct.dm_region_hash** %20, align 8
  store %struct.dm_region_hash* %170, %struct.dm_region_hash** %10, align 8
  br label %171

171:                                              ; preds = %169, %104, %41
  %172 = load %struct.dm_region_hash*, %struct.dm_region_hash** %10, align 8
  ret %struct.dm_region_hash* %172
}

declare dso_local %struct.dm_region_hash* @kmalloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.dm_region_hash* @ERR_PTR(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @kfree(%struct.dm_region_hash*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
