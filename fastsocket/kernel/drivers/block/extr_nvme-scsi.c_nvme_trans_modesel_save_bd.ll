; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_modesel_save_bd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_modesel_save_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, i64 }

@SHORT_DESC_BLOCK = common dso_local global i32 0, align 4
@LONG_DESC_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ns*, i64*, i32, i32, i64)* @nvme_trans_modesel_save_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_trans_modesel_save_bd(%struct.nvme_ns* %0, i64* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i64, i64* %10, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @SHORT_DESC_BLOCK, align 4
  br label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @LONG_DESC_BLOCK, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = sdiv i32 %12, %20
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %19
  %25 = load i64*, i64** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 %30, 16
  %32 = load i64*, i64** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 %37, 8
  %39 = add nsw i64 %31, %38
  %40 = load i64*, i64** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %39, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %49 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 5
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = shl i64 %55, 16
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 6
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = shl i64 %62, 8
  %64 = add nsw i64 %56, %63
  %65 = load i64*, i64** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 7
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %64, %70
  %72 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %73 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %179

74:                                               ; preds = %19
  %75 = load i64*, i64** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 0
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 56
  %83 = load i64*, i64** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = shl i32 %89, 48
  %91 = add nsw i32 %82, %90
  %92 = load i64*, i64** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 %98, 40
  %100 = add nsw i32 %91, %99
  %101 = load i64*, i64** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 %107, 32
  %109 = add nsw i32 %100, %108
  %110 = load i64*, i64** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 24
  %118 = add nsw i32 %109, %117
  %119 = load i64*, i64** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 5
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 16
  %127 = add nsw i32 %118, %126
  %128 = load i64*, i64** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 6
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = shl i32 %134, 8
  %136 = add nsw i32 %127, %135
  %137 = load i64*, i64** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 7
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = add nsw i32 %136, %143
  %145 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %146 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i64*, i64** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 12
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = shl i64 %152, 24
  %154 = load i64*, i64** %7, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 13
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = shl i64 %159, 16
  %161 = add nsw i64 %153, %160
  %162 = load i64*, i64** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 14
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %162, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = shl i64 %167, 8
  %169 = add nsw i64 %161, %168
  %170 = load i64*, i64** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 15
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %169, %175
  %177 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %178 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %74, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
