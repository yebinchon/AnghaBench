; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpiutil.c_mpi_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpiutil.c_mpi_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcry_mpi = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpi_swap(%struct.gcry_mpi* %0, %struct.gcry_mpi* %1) #0 {
  %3 = alloca %struct.gcry_mpi*, align 8
  %4 = alloca %struct.gcry_mpi*, align 8
  %5 = alloca %struct.gcry_mpi, align 4
  store %struct.gcry_mpi* %0, %struct.gcry_mpi** %3, align 8
  store %struct.gcry_mpi* %1, %struct.gcry_mpi** %4, align 8
  %6 = load %struct.gcry_mpi*, %struct.gcry_mpi** %3, align 8
  %7 = bitcast %struct.gcry_mpi* %5 to i8*
  %8 = bitcast %struct.gcry_mpi* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 4, i1 false)
  %9 = load %struct.gcry_mpi*, %struct.gcry_mpi** %3, align 8
  %10 = load %struct.gcry_mpi*, %struct.gcry_mpi** %4, align 8
  %11 = bitcast %struct.gcry_mpi* %9 to i8*
  %12 = bitcast %struct.gcry_mpi* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load %struct.gcry_mpi*, %struct.gcry_mpi** %4, align 8
  %14 = bitcast %struct.gcry_mpi* %13 to i8*
  %15 = bitcast %struct.gcry_mpi* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
