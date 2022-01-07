; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_split_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_split_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, %struct.bio_vec*, i32, i32, i32, i32 }
%struct.bio_vec = type { i32, i32 }
%struct.bio_set = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@dm_bio_destructor = common dso_local global i32 0, align 4
@BIO_CLONED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.bio*, i32, i16, i32, i32, %struct.bio_set*)* @split_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @split_bvec(%struct.bio* %0, i32 %1, i16 zeroext %2, i32 %3, i32 %4, %struct.bio_set* %5) #0 {
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio_set*, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca %struct.bio_vec*, align 8
  store %struct.bio* %0, %struct.bio** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bio_set* %5, %struct.bio_set** %12, align 8
  %15 = load %struct.bio*, %struct.bio** %7, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 3
  %17 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %18 = load i16, i16* %9, align 2
  %19 = zext i16 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i64 %20
  store %struct.bio_vec* %21, %struct.bio_vec** %14, align 8
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = load %struct.bio_set*, %struct.bio_set** %12, align 8
  %24 = call %struct.bio* @bio_alloc_bioset(i32 %22, i32 1, %struct.bio_set* %23)
  store %struct.bio* %24, %struct.bio** %13, align 8
  %25 = load i32, i32* @dm_bio_destructor, align 4
  %26 = load %struct.bio*, %struct.bio** %13, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bio*, %struct.bio** %13, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 3
  %30 = load %struct.bio_vec*, %struct.bio_vec** %29, align 8
  %31 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %32 = bitcast %struct.bio_vec* %30 to i8*
  %33 = bitcast %struct.bio_vec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 8, i1 false)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.bio*, %struct.bio** %13, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.bio*, %struct.bio** %7, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bio*, %struct.bio** %13, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bio*, %struct.bio** %13, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bio*, %struct.bio** %13, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @to_bytes(i32 %49)
  %51 = load %struct.bio*, %struct.bio** %13, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.bio*, %struct.bio** %13, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 3
  %56 = load %struct.bio_vec*, %struct.bio_vec** %55, align 8
  %57 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.bio*, %struct.bio** %13, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.bio*, %struct.bio** %13, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 3
  %63 = load %struct.bio_vec*, %struct.bio_vec** %62, align 8
  %64 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @BIO_CLONED, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.bio*, %struct.bio** %13, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.bio*, %struct.bio** %7, align 8
  %72 = call i64 @bio_integrity(%struct.bio* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %6
  %75 = load %struct.bio*, %struct.bio** %13, align 8
  %76 = load %struct.bio*, %struct.bio** %7, align 8
  %77 = load i32, i32* @GFP_NOIO, align 4
  %78 = load %struct.bio_set*, %struct.bio_set** %12, align 8
  %79 = call i32 @bio_integrity_clone(%struct.bio* %75, %struct.bio* %76, i32 %77, %struct.bio_set* %78)
  %80 = load %struct.bio*, %struct.bio** %13, align 8
  %81 = load %struct.bio*, %struct.bio** %7, align 8
  %82 = load i16, i16* %9, align 2
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @bio_sector_offset(%struct.bio* %81, i16 zeroext %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @bio_integrity_trim(%struct.bio* %80, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %74, %6
  %88 = load %struct.bio*, %struct.bio** %13, align 8
  ret %struct.bio* %88
}

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, %struct.bio_set*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @to_bytes(i32) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @bio_integrity_clone(%struct.bio*, %struct.bio*, i32, %struct.bio_set*) #1

declare dso_local i32 @bio_integrity_trim(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_sector_offset(%struct.bio*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
