; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_make_local_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_make_local_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_data = type { i32, i64* }
%struct.bio_vec = type { i64, i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@CD_FRAMESIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_data*, %struct.bio_vec*)* @pkt_make_local_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_make_local_copy(%struct.packet_data* %0, %struct.bio_vec* %1) #0 {
  %3 = alloca %struct.packet_data*, align 8
  %4 = alloca %struct.bio_vec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.packet_data* %0, %struct.packet_data** %3, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %108, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %13 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %111

16:                                               ; preds = %10
  %17 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i64 %19
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %24 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %22, %29
  br i1 %30, label %31, label %84

31:                                               ; preds = %16
  %32 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %32, i64 %34
  %36 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @KM_USER0, align 4
  %39 = call i8* @kmap_atomic(i64 %37, i32 %38)
  %40 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %40, i64 %42
  %44 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %39, i64 %46
  store i8* %47, i8** %8, align 8
  %48 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %49 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @page_address(i64 %54)
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* @CD_FRAMESIZE, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @KM_USER0, align 4
  %65 = call i32 @kunmap_atomic(i8* %63, i32 %64)
  %66 = load %struct.packet_data*, %struct.packet_data** %3, align 8
  %67 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %73, i64 %75
  %77 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %79, i64 %81
  %83 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 8
  br label %95

84:                                               ; preds = %16
  %85 = load %struct.bio_vec*, %struct.bio_vec** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %85, i64 %87
  %89 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  br label %95

95:                                               ; preds = %84, %31
  %96 = load i64, i64* @CD_FRAMESIZE, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %95
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %10

111:                                              ; preds = %10
  ret void
}

declare dso_local i8* @kmap_atomic(i64, i32) #1

declare dso_local i8* @page_address(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
