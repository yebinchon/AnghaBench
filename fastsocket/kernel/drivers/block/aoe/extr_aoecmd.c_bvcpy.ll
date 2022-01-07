; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_bvcpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_bvcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_vec = type { i64, i64, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_vec*, i64, %struct.sk_buff*, i64)* @bvcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bvcpy(%struct.bio_vec* %0, i64 %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.bio_vec* %0, %struct.bio_vec** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %50, %4
  %13 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %14 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %18 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = sub nsw i64 %15, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %29 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @page_address(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %10, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @skb_copy_bits(%struct.sk_buff* %34, i32 %35, i8* %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  ret void

50:                                               ; preds = %27
  %51 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %52 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %51, i32 1
  store %struct.bio_vec* %52, %struct.bio_vec** %5, align 8
  %53 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %54 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  br label %12
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
