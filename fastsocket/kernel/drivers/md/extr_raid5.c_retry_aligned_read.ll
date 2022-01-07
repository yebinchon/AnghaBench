; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_retry_aligned_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_retry_aligned_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, %struct.bio* }
%struct.bio = type { i32, i32, i32 }
%struct.stripe_head = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_ReadNoMerge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, %struct.bio*)* @retry_aligned_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_aligned_read(%struct.r5conf* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @STRIPE_SECTORS, align 8
  %18 = trunc i64 %17 to i32
  %19 = sub nsw i32 %18, 1
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @raid5_compute_sector(%struct.r5conf* %22, i32 %23, i32 0, i32* %7, i32* null)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 9
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %89, %2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %102

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = call i32 @raid5_bi_processed_stripes(%struct.bio* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %89

43:                                               ; preds = %37
  %44 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.stripe_head* @get_active_stripe(%struct.r5conf* %44, i32 %45, i32 0, i32 1, i32 0)
  store %struct.stripe_head* %46, %struct.stripe_head** %6, align 8
  %47 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %48 = icmp ne %struct.stripe_head* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @raid5_set_bi_processed_stripes(%struct.bio* %50, i32 %51)
  %53 = load %struct.bio*, %struct.bio** %5, align 8
  %54 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 2
  store %struct.bio* %53, %struct.bio** %55, align 8
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %127

57:                                               ; preds = %43
  %58 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %59 = load %struct.bio*, %struct.bio** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @add_stripe_bio(%struct.stripe_head* %58, %struct.bio* %59, i32 %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %65 = call i32 @release_stripe(%struct.stripe_head* %64)
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @raid5_set_bi_processed_stripes(%struct.bio* %66, i32 %67)
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %71 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %70, i32 0, i32 2
  store %struct.bio* %69, %struct.bio** %71, align 8
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %3, align 4
  br label %127

73:                                               ; preds = %57
  %74 = load i32, i32* @R5_ReadNoMerge, align 4
  %75 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %76 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @set_bit(i32 %74, i32* %81)
  %83 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %84 = call i32 @handle_stripe(%struct.stripe_head* %83)
  %85 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %86 = call i32 @release_stripe(%struct.stripe_head* %85)
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %73, %42
  %90 = load i64, i64* @STRIPE_SECTORS, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load i64, i64* @STRIPE_SECTORS, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %33

102:                                              ; preds = %33
  %103 = load %struct.bio*, %struct.bio** %5, align 8
  %104 = call i32 @raid5_dec_bi_active_stripes(%struct.bio* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bdev_get_queue(i32 %110)
  %112 = load %struct.bio*, %struct.bio** %5, align 8
  %113 = call i32 @trace_block_bio_complete(i32 %111, %struct.bio* %112)
  %114 = load %struct.bio*, %struct.bio** %5, align 8
  %115 = call i32 @bio_endio(%struct.bio* %114, i32 0)
  br label %116

116:                                              ; preds = %107, %102
  %117 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %118 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %117, i32 0, i32 1
  %119 = call i64 @atomic_dec_and_test(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %123 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %122, i32 0, i32 0
  %124 = call i32 @wake_up(i32* %123)
  br label %125

125:                                              ; preds = %121, %116
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %63, %49
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @raid5_bi_processed_stripes(%struct.bio*) #1

declare dso_local %struct.stripe_head* @get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i32 @raid5_set_bi_processed_stripes(%struct.bio*, i32) #1

declare dso_local i32 @add_stripe_bio(%struct.stripe_head*, %struct.bio*, i32, i32) #1

declare dso_local i32 @release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @handle_stripe(%struct.stripe_head*) #1

declare dso_local i32 @raid5_dec_bi_active_stripes(%struct.bio*) #1

declare dso_local i32 @trace_block_bio_complete(i32, %struct.bio*) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
