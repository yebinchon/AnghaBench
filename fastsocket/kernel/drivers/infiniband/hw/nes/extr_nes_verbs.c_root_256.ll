; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_root_256.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_root_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_root_vpbl = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_device*, %struct.nes_root_vpbl*, %struct.nes_root_vpbl*, i32)* @root_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @root_256(%struct.nes_device* %0, %struct.nes_root_vpbl* %1, %struct.nes_root_vpbl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_root_vpbl*, align 8
  %8 = alloca %struct.nes_root_vpbl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %6, align 8
  store %struct.nes_root_vpbl* %1, %struct.nes_root_vpbl** %7, align 8
  store %struct.nes_root_vpbl* %2, %struct.nes_root_vpbl** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %64

16:                                               ; preds = %4
  %17 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %18 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %8, align 8
  %21 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %20, i32 0, i32 1
  %22 = call %struct.TYPE_2__* @pci_alloc_consistent(i32 %19, i32 512, i64* %21)
  %23 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %8, align 8
  %24 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %23, i32 0, i32 0
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %8, align 8
  %26 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %143

30:                                               ; preds = %16
  %31 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %7, align 8
  %32 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %60, %30
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %8, align 8
  %42 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i8* %40, i8** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 32
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %8, align 8
  %52 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %50, i8** %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 256
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %35

63:                                               ; preds = %35
  br label %142

64:                                               ; preds = %4
  store i32 3, i32* %11, align 4
  br label %65

65:                                               ; preds = %138, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %141

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %69, 16
  store i32 %70, i32* %12, align 4
  %71 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %7, align 8
  %72 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %7, align 8
  %78 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = bitcast %struct.TYPE_2__* %76 to i8*
  %84 = bitcast %struct.TYPE_2__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  %85 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %7, align 8
  %86 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @le32_to_cpu(i8* %92)
  %94 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %7, align 8
  %95 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @le32_to_cpu(i8* %101)
  %103 = shl i32 %102, 32
  %104 = add nsw i32 %93, %103
  store i32 %104, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %105

105:                                              ; preds = %134, %68
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 16
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 256
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %7, align 8
  %114 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i8* %112, i8** %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = ashr i32 %122, 32
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %7, align 8
  %126 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i8* %124, i8** %133, align 8
  br label %134

134:                                              ; preds = %108
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %105

137:                                              ; preds = %105
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %11, align 4
  br label %65

141:                                              ; preds = %65
  br label %142

142:                                              ; preds = %141, %63
  store i32 1, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %29
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_2__* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
