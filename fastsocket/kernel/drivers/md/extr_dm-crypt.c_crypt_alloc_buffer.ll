; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.dm_crypt_io = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.crypt_config* }
%struct.crypt_config = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.dm_crypt_io*, i32, i32*)* @crypt_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @crypt_alloc_buffer(%struct.dm_crypt_io* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.dm_crypt_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.crypt_config*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %16 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.crypt_config*, %struct.crypt_config** %18, align 8
  store %struct.crypt_config* %19, %struct.crypt_config** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = add i32 %20, %21
  %23 = sub i32 %22, 1
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = lshr i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = load i32, i32* @__GFP_HIGHMEM, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @GFP_NOIO, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %32 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.bio* @bio_alloc_bioset(i32 %29, i32 %30, i32 %33)
  store %struct.bio* %34, %struct.bio** %9, align 8
  %35 = load %struct.bio*, %struct.bio** %9, align 8
  %36 = icmp ne %struct.bio* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %101

38:                                               ; preds = %3
  %39 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %40 = load %struct.bio*, %struct.bio** %9, align 8
  %41 = call i32 @clone_init(%struct.dm_crypt_io* %39, %struct.bio* %40)
  %42 = load i32*, i32** %7, align 8
  store i32 0, i32* %42, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %88, %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %49 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.page* @mempool_alloc(i32 %50, i32 %51)
  store %struct.page* %52, %struct.page** %14, align 8
  %53 = load %struct.page*, %struct.page** %14, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = load i32*, i32** %7, align 8
  store i32 1, i32* %56, align 4
  br label %91

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @__GFP_WAIT, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @PAGE_SIZE, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %13, align 4
  %73 = load %struct.bio*, %struct.bio** %9, align 8
  %74 = load %struct.page*, %struct.page** %14, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @bio_add_page(%struct.bio* %73, %struct.page* %74, i32 %75, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load %struct.page*, %struct.page** %14, align 8
  %80 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %81 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mempool_free(%struct.page* %79, i32 %82)
  br label %91

84:                                               ; preds = %71
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %43

91:                                               ; preds = %78, %55, %43
  %92 = load %struct.bio*, %struct.bio** %9, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load %struct.bio*, %struct.bio** %9, align 8
  %98 = call i32 @bio_put(%struct.bio* %97)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %101

99:                                               ; preds = %91
  %100 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %100, %struct.bio** %4, align 8
  br label %101

101:                                              ; preds = %99, %96, %37
  %102 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %102
}

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32) #1

declare dso_local i32 @clone_init(%struct.dm_crypt_io*, %struct.bio*) #1

declare dso_local %struct.page* @mempool_alloc(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @mempool_free(%struct.page*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
