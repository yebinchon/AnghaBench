; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_build_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_build_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { %struct.r5dev* }
%struct.r5dev = type { i32, i64, i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.stripe_head*, i32, i32, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, i32, i32)* @raid5_build_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_build_block(%struct.stripe_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %9 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %8, i32 0, i32 0
  %10 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %10, i64 %12
  store %struct.r5dev* %13, %struct.r5dev** %7, align 8
  %14 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %15 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %14, i32 0, i32 6
  %16 = call i32 @bio_init(%struct.TYPE_4__* %15)
  %17 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %18 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %17, i32 0, i32 5
  %19 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %20 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %23 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %28 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %33 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %34 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.stripe_head* %32, %struct.stripe_head** %35, align 8
  %36 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %37 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %40 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %43 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %42, i32 0, i32 4
  %44 = call i32 @bio_init(%struct.TYPE_4__* %43)
  %45 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %46 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %45, i32 0, i32 3
  %47 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %48 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %49, align 8
  %50 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %51 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %56 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %61 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %62 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.stripe_head* %60, %struct.stripe_head** %63, align 8
  %64 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %65 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %68 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %71 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @compute_blocknr(%struct.stripe_head* %72, i32 %73, i32 %74)
  %76 = load %struct.r5dev*, %struct.r5dev** %7, align 8
  %77 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local i32 @bio_init(%struct.TYPE_4__*) #1

declare dso_local i32 @compute_blocknr(%struct.stripe_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
