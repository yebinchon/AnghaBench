; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_mc_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_mc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_mc_list = type { i64, i32* }

@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_mc_list*, i16*)* @am79c961_mc_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79c961_mc_hash(%struct.dev_mc_list* %0, i16* %1) #0 {
  %3 = alloca %struct.dev_mc_list*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dev_mc_list* %0, %struct.dev_mc_list** %3, align 8
  store i16* %1, i16** %4, align 8
  %8 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %9 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ETH_ALEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %15 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %13
  %22 = load i64, i64* @ETH_ALEN, align 8
  %23 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %24 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ether_crc_le(i64 %22, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 30
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 26
  %31 = and i32 %30, 15
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = load i16*, i16** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %39, %33
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %37, align 2
  br label %42

42:                                               ; preds = %21, %13, %2
  ret void
}

declare dso_local i32 @ether_crc_le(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
