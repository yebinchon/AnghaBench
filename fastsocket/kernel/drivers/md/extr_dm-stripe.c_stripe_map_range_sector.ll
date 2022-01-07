; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map_range_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_map_range_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_c = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_c*, i32, i64, i32*)* @stripe_map_range_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_map_range_sector(%struct.stripe_c* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.stripe_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.stripe_c* %0, %struct.stripe_c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @stripe_map_sector(%struct.stripe_c* %10, i32 %11, i64* %9, i32* %12)
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %56

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %22 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %28 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @sector_div(i32 %26, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %30
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  br label %45

36:                                               ; preds = %18
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %39 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = xor i32 %41, -1
  %43 = and i32 %37, %42
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %25
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %51 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %17, %49, %45
  ret void
}

declare dso_local i32 @stripe_map_sector(%struct.stripe_c*, i32, i64*, i32*) #1

declare dso_local i64 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
