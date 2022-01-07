; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_stripe_set_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_stripe_set_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i32, i32 }
%struct.stripe_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.r5conf*, i32, %struct.stripe_head*)* @stripe_set_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_set_idx(i32 %0, %struct.r5conf* %1, i32 %2, %struct.stripe_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stripe_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.r5conf* %1, %struct.r5conf** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.stripe_head* %3, %struct.stripe_head** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %17 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %23

19:                                               ; preds = %4
  %20 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %18, %15 ], [ %22, %19 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @sector_div(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %32 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %12, align 4
  %40 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %44 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  %47 = mul nsw i32 %41, %46
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %54 = call i32 @raid5_compute_sector(%struct.r5conf* %40, i32 %51, i32 %52, i32* %10, %struct.stripe_head* %53)
  ret void
}

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, %struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
