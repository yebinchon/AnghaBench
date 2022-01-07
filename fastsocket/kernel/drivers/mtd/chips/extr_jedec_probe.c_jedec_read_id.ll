; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_jedec_probe.c_jedec_read_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_jedec_probe.c_jedec_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.cfi_private = type { i32 }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.map_info*, i64, %struct.cfi_private*)* @jedec_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jedec_read_id(%struct.map_info* %0, i64 %1, %struct.cfi_private* %2) #0 {
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cfi_private*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cfi_private* %2, %struct.cfi_private** %6, align 8
  %11 = load %struct.map_info*, %struct.map_info** %4, align 8
  %12 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %13 = call i64 @cfi_build_cmd_addr(i32 1, %struct.map_info* %11, %struct.cfi_private* %12)
  store i64 %13, i64* %9, align 8
  %14 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %15 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 8
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load %struct.map_info*, %struct.map_info** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = call i64* @map_read(%struct.map_info* %21, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64* %25, i64** %26, align 8
  %27 = bitcast %struct.TYPE_3__* %7 to i8*
  %28 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %32, %33
  ret i64 %34
}

declare dso_local i64 @cfi_build_cmd_addr(i32, %struct.map_info*, %struct.cfi_private*) #1

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
