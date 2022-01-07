; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_c = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32, i64, i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_c*, %struct.bio*, i64)* @stripe_map_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_map_discard(%struct.stripe_c* %0, %struct.bio* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stripe_c*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.stripe_c* %0, %struct.stripe_c** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %6, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @stripe_map_range_sector(%struct.stripe_c* %10, i64 %13, i64 %14, i64* %8)
  %16 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bio*, %struct.bio** %6, align 8
  %21 = call i64 @bio_sectors(%struct.bio* %20)
  %22 = add nsw i64 %19, %21
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @stripe_map_range_sector(%struct.stripe_c* %16, i64 %22, i64 %23, i64* %9)
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %3
  %29 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %30 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %42 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %40, %47
  %49 = load %struct.bio*, %struct.bio** %6, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 @to_bytes(i64 %53)
  %55 = load %struct.bio*, %struct.bio** %6, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %57, i32* %4, align 4
  br label %62

58:                                               ; preds = %3
  %59 = load %struct.bio*, %struct.bio** %6, align 8
  %60 = call i32 @bio_endio(%struct.bio* %59, i32 0)
  %61 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @stripe_map_range_sector(%struct.stripe_c*, i64, i64, i64*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @to_bytes(i64) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
