; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_fc_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_fc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.sk_buff = type { i8* }
%struct.skb_frag_struct = type { i64, i64 }
%struct.TYPE_2__ = type { i32, %struct.skb_frag_struct* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@KM_SKB_DATA_SOFTIRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcoe_fc_crc(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.skb_frag_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %12 = call %struct.sk_buff* @fp_skb(%struct.fc_frame* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @skb_headlen(%struct.sk_buff* %16)
  %18 = call i32 @crc32(i32 -1, i8* %15, i64 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %79, %1
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %30, i64 %32
  store %struct.skb_frag_struct* %33, %struct.skb_frag_struct** %4, align 8
  %34 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %4, align 8
  %35 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %4, align 8
  %38 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %43, %26
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = and i64 %46, %48
  %50 = sub i64 %45, %49
  %51 = call i64 @min(i64 %44, i64 %50)
  store i64 %51, i64* %8, align 8
  %52 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %4, align 8
  %53 = call i64 @skb_frag_page(%struct.skb_frag_struct* %52)
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PAGE_SHIFT, align 8
  %56 = lshr i64 %54, %55
  %57 = add i64 %53, %56
  %58 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %59 = call i8* @kmap_atomic(i64 %57, i32 %58)
  store i8* %59, i8** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @PAGE_MASK, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @crc32(i32 %60, i8* %66, i64 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %71 = call i32 @kunmap_atomic(i8* %69, i32 %70)
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %7, align 8
  br label %40

78:                                               ; preds = %40
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %19

82:                                               ; preds = %19
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local %struct.sk_buff* @fp_skb(%struct.fc_frame*) #1

declare dso_local i32 @crc32(i32, i8*, i64) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @kmap_atomic(i64, i32) #1

declare dso_local i64 @skb_frag_page(%struct.skb_frag_struct*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
