; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_pack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ud_header = type { i32, i64, i32, i32, i32, i64, i32, i64, i32, i64, i32, i64 }

@lrh_table = common dso_local global i32 0, align 4
@IB_LRH_BYTES = common dso_local global i64 0, align 8
@eth_table = common dso_local global i32 0, align 4
@IB_ETH_BYTES = common dso_local global i64 0, align 8
@vlan_table = common dso_local global i32 0, align 4
@IB_VLAN_BYTES = common dso_local global i64 0, align 8
@grh_table = common dso_local global i32 0, align 4
@IB_GRH_BYTES = common dso_local global i64 0, align 8
@bth_table = common dso_local global i32 0, align 4
@IB_BTH_BYTES = common dso_local global i64 0, align 8
@deth_table = common dso_local global i32 0, align 4
@IB_DETH_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_ud_header_pack(%struct.ib_ud_header* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_ud_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_ud_header* %0, %struct.ib_ud_header** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %7 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %6, i32 0, i32 11
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @lrh_table, align 4
  %12 = load i32, i32* @lrh_table, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %15 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %14, i32 0, i32 10
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  %20 = call i32 @ib_pack(i32 %11, i32 %13, i32* %15, i8* %19)
  %21 = load i64, i64* @IB_LRH_BYTES, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %10, %2
  %27 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %28 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* @eth_table, align 4
  %33 = load i32, i32* @eth_table, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %36 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %35, i32 0, i32 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = call i32 @ib_pack(i32 %32, i32 %34, i32* %36, i8* %40)
  %42 = load i64, i64* @IB_ETH_BYTES, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %31, %26
  %48 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %49 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32, i32* @vlan_table, align 4
  %54 = load i32, i32* @vlan_table, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %57 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %56, i32 0, i32 6
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = call i32 @ib_pack(i32 %53, i32 %55, i32* %57, i8* %61)
  %63 = load i64, i64* @IB_VLAN_BYTES, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %52, %47
  %69 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %70 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i32, i32* @grh_table, align 4
  %75 = load i32, i32* @grh_table, align 4
  %76 = call i32 @ARRAY_SIZE(i32 %75)
  %77 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %78 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %77, i32 0, i32 4
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %79, i64 %81
  %83 = call i32 @ib_pack(i32 %74, i32 %76, i32* %78, i8* %82)
  %84 = load i64, i64* @IB_GRH_BYTES, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %73, %68
  %90 = load i32, i32* @bth_table, align 4
  %91 = load i32, i32* @bth_table, align 4
  %92 = call i32 @ARRAY_SIZE(i32 %91)
  %93 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %94 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %93, i32 0, i32 3
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr i8, i8* %95, i64 %97
  %99 = call i32 @ib_pack(i32 %90, i32 %92, i32* %94, i8* %98)
  %100 = load i64, i64* @IB_BTH_BYTES, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @deth_table, align 4
  %106 = load i32, i32* @deth_table, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %109 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %108, i32 0, i32 2
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, i8* %110, i64 %112
  %114 = call i32 @ib_pack(i32 %105, i32 %107, i32* %109, i8* %113)
  %115 = load i64, i64* @IB_DETH_BYTES, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %5, align 4
  %120 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %121 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %89
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr i8, i8* %125, i64 %127
  %129 = load %struct.ib_ud_header*, %struct.ib_ud_header** %3, align 8
  %130 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %129, i32 0, i32 0
  %131 = call i32 @memcpy(i8* %128, i32* %130, i32 4)
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, 4
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %124, %89
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @ib_pack(i32, i32, i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
