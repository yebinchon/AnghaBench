; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fill_read_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fill_read_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_id_ns = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__const.nvme_trans_fill_read_cap.p_type_lut = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 1, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.nvme_id_ns*, i32)* @nvme_trans_fill_read_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_trans_fill_read_cap(i32* %0, %struct.nvme_id_ns* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nvme_id_ns*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.nvme_id_ns* %1, %struct.nvme_id_ns** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i32]* @__const.nvme_trans_fill_read_cap.p_type_lut to i8*), i64 16, i1 false)
  %16 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 15
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %5, align 8
  %30 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %29, i32 0, i32 2
  %31 = call i32 @le64_to_cpup(i32* %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %5, align 8
  %34 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %39

38:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32 [ 1, %37 ], [ 0, %38 ]
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp ugt i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @cpu_to_be32(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @cpu_to_be32(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @memcpy(i32* %52, i32* %13, i32 4)
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = call i32 @memcpy(i32* %55, i32* %14, i32 4)
  br label %79

57:                                               ; preds = %39
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @cpu_to_be64(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @cpu_to_be32(i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @memcpy(i32* %62, i32* %12, i32 4)
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = call i32 @memcpy(i32* %65, i32* %14, i32 4)
  %67 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %5, align 8
  %68 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 12
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %57, %47
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @le64_to_cpup(i32*) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @cpu_to_be64(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
