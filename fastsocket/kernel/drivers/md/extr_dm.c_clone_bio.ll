; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_clone_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_clone_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i16, i16, i64, i32, i32, i32, i32 }
%struct.bio_set = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@dm_bio_destructor = common dso_local global i32 0, align 4
@BIO_SEG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.bio*, i32, i16, i16, i32, %struct.bio_set*)* @clone_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @clone_bio(%struct.bio* %0, i32 %1, i16 zeroext %2, i16 zeroext %3, i32 %4, %struct.bio_set* %5) #0 {
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio_set*, align 8
  %13 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i32 %4, i32* %11, align 4
  store %struct.bio_set* %5, %struct.bio_set** %12, align 8
  %14 = load i32, i32* @GFP_NOIO, align 4
  %15 = load %struct.bio*, %struct.bio** %7, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bio_set*, %struct.bio_set** %12, align 8
  %19 = call %struct.bio* @bio_alloc_bioset(i32 %14, i32 %17, %struct.bio_set* %18)
  store %struct.bio* %19, %struct.bio** %13, align 8
  %20 = load %struct.bio*, %struct.bio** %13, align 8
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = call i32 @__bio_clone(%struct.bio* %20, %struct.bio* %21)
  %23 = load i32, i32* @dm_bio_destructor, align 4
  %24 = load %struct.bio*, %struct.bio** %13, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.bio*, %struct.bio** %13, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i16, i16* %9, align 2
  %30 = load %struct.bio*, %struct.bio** %13, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  store i16 %29, i16* %31, align 8
  %32 = load i16, i16* %9, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* %10, align 2
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %33, %35
  %37 = trunc i32 %36 to i16
  %38 = load %struct.bio*, %struct.bio** %13, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 1
  store i16 %37, i16* %39, align 2
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @to_bytes(i32 %40)
  %42 = load %struct.bio*, %struct.bio** %13, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @BIO_SEG_VALID, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.bio*, %struct.bio** %13, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.bio*, %struct.bio** %7, align 8
  %52 = call i64 @bio_integrity(%struct.bio* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %6
  %55 = load %struct.bio*, %struct.bio** %13, align 8
  %56 = load %struct.bio*, %struct.bio** %7, align 8
  %57 = load i32, i32* @GFP_NOIO, align 4
  %58 = load %struct.bio_set*, %struct.bio_set** %12, align 8
  %59 = call i32 @bio_integrity_clone(%struct.bio* %55, %struct.bio* %56, i32 %57, %struct.bio_set* %58)
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = load %struct.bio*, %struct.bio** %7, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 0
  %64 = load i16, i16* %63, align 8
  %65 = zext i16 %64 to i32
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %54
  %68 = load %struct.bio*, %struct.bio** %13, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bio*, %struct.bio** %7, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67, %54
  %76 = load %struct.bio*, %struct.bio** %13, align 8
  %77 = load %struct.bio*, %struct.bio** %7, align 8
  %78 = load i16, i16* %9, align 2
  %79 = call i32 @bio_sector_offset(%struct.bio* %77, i16 zeroext %78, i32 0)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @bio_integrity_trim(%struct.bio* %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %67
  br label %83

83:                                               ; preds = %82, %6
  %84 = load %struct.bio*, %struct.bio** %13, align 8
  ret %struct.bio* %84
}

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, %struct.bio_set*) #1

declare dso_local i32 @__bio_clone(%struct.bio*, %struct.bio*) #1

declare dso_local i64 @to_bytes(i32) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @bio_integrity_clone(%struct.bio*, %struct.bio*, i32, %struct.bio_set*) #1

declare dso_local i32 @bio_integrity_trim(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_sector_offset(%struct.bio*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
