; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_get_bnx2x_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_get_bnx2x_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, %struct.TYPE_2__*, %struct.cnic_eth_dev* }
%struct.TYPE_2__ = type { i64, i8* }
%struct.cnic_eth_dev = type { i32 }
%struct.regpair = type { i32, i32 }

@BNX2X_CONTEXT_MEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cnic_dev*, i32, i32, %struct.regpair*)* @cnic_get_bnx2x_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cnic_get_bnx2x_ctx(%struct.cnic_dev* %0, i32 %1, i32 %2, %struct.regpair* %3) #0 {
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regpair*, align 8
  %9 = alloca %struct.cnic_local*, align 8
  %10 = alloca %struct.cnic_eth_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.regpair* %3, %struct.regpair** %8, align 8
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %18 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %17, i32 0, i32 0
  %19 = load %struct.cnic_local*, %struct.cnic_local** %18, align 8
  store %struct.cnic_local* %19, %struct.cnic_local** %9, align 8
  %20 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %21 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %20, i32 0, i32 3
  %22 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %21, align 8
  store %struct.cnic_eth_dev* %22, %struct.cnic_eth_dev** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %10, align 8
  %25 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %29 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %10, align 8
  %34 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %38 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %36, %39
  store i32 %40, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %41 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %42 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %4
  %46 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %16, align 8
  %51 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %52 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %16, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %45
  %63 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %64 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %68 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = and i64 %74, %75
  %77 = sub i64 %66, %76
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %62, %45
  br label %79

79:                                               ; preds = %78, %4
  %80 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %81 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %87, %88
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @BNX2X_CONTEXT_MEM_SIZE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = add i64 %89, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %97 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr i8, i8* %103, i64 %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @BNX2X_CONTEXT_MEM_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %105, i64 %109
  store i8* %110, i8** %15, align 8
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %79
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* @BNX2X_CONTEXT_MEM_SIZE, align 4
  %116 = call i32 @memset(i8* %114, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %113, %79
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.regpair*, %struct.regpair** %8, align 8
  %120 = getelementptr inbounds %struct.regpair, %struct.regpair* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %14, align 4
  %122 = ashr i32 %121, 32
  %123 = load %struct.regpair*, %struct.regpair** %8, align 8
  %124 = getelementptr inbounds %struct.regpair, %struct.regpair* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i8*, i8** %15, align 8
  ret i8* %125
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
