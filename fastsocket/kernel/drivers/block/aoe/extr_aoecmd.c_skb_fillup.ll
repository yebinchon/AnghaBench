; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_skb_fillup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_skb_fillup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bio_vec = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.bio_vec*, i64, i64)* @skb_fillup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_fillup(%struct.sk_buff* %0, %struct.bio_vec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %42, %4
  %12 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %13 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %17 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = sub nsw i64 %14, %19
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %11
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %31 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @skb_fill_page_desc(%struct.sk_buff* %27, i32 %28, i32 %32, i64 %33, i64 %34)
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  ret void

42:                                               ; preds = %26
  %43 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %44 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %43, i32 1
  store %struct.bio_vec* %44, %struct.bio_vec** %6, align 8
  %45 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %46 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  br label %11
}

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
