; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_jedec_probe.c_jedec_read_mfr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_jedec_probe.c_jedec_read_mfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.cfi_private = type { i32 }
%struct.TYPE_3__ = type { i64* }

@CONTINUATION_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.map_info*, i64, %struct.cfi_private*)* @jedec_read_mfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jedec_read_mfr(%struct.map_info* %0, i64 %1, %struct.cfi_private* %2) #0 {
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cfi_private*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cfi_private* %2, %struct.cfi_private** %6, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %37, %3
  %13 = load i32, i32* %9, align 4
  %14 = shl i32 %13, 8
  %15 = add nsw i32 0, %14
  %16 = sext i32 %15 to i64
  %17 = load %struct.map_info*, %struct.map_info** %4, align 8
  %18 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %19 = call i64 @cfi_build_cmd_addr(i64 %16, %struct.map_info* %17, %struct.cfi_private* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %21 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 8
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load %struct.map_info*, %struct.map_info** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64* @map_read(%struct.map_info* %27, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64* %31, i64** %32, align 8
  %33 = bitcast %struct.TYPE_3__* %7 to i8*
  %34 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = and i64 %41, %42
  %44 = load i64, i64* @CONTINUATION_CODE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %12, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = and i64 %50, %51
  ret i64 %52
}

declare dso_local i64 @cfi_build_cmd_addr(i64, %struct.map_info*, %struct.cfi_private*) #1

declare dso_local i64* @map_read(%struct.map_info*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
