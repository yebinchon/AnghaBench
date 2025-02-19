; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_get_fold_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_get_fold_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.nftl_uci2 = type { i32, i32 }

@SECTORSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NFTLrecord*, i32)* @get_fold_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fold_mark(%struct.NFTLrecord* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.NFTLrecord*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nftl_uci2, align 4
  %8 = alloca i64, align 8
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %10 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  store %struct.mtd_info* %12, %struct.mtd_info** %6, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %16 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul i32 %14, %17
  %19 = load i32, i32* @SECTORSIZE, align 4
  %20 = mul nsw i32 2, %19
  %21 = add i32 %18, %20
  %22 = add i32 %21, 8
  %23 = bitcast %struct.nftl_uci2* %7 to i8*
  %24 = call i64 @nftl_read_oob(%struct.mtd_info* %13, i32 %22, i32 8, i64* %8, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.nftl_uci2, %struct.nftl_uci2* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.nftl_uci2, %struct.nftl_uci2* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %29, %31
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
