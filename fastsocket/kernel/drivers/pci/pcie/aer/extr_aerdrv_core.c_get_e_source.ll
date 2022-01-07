; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_get_e_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_get_e_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_rpc = type { i64, i64, i32, %struct.aer_err_source* }
%struct.aer_err_source = type { i32 }

@AER_ERROR_SOURCES_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aer_rpc*, %struct.aer_err_source*)* @get_e_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_e_source(%struct.aer_rpc* %0, %struct.aer_err_source* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aer_rpc*, align 8
  %5 = alloca %struct.aer_err_source*, align 8
  %6 = alloca i64, align 8
  store %struct.aer_rpc* %0, %struct.aer_rpc** %4, align 8
  store %struct.aer_err_source* %1, %struct.aer_err_source** %5, align 8
  %7 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %8 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %7, i32 0, i32 2
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %12 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %15 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %20 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %19, i32 0, i32 2
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  store i32 0, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.aer_err_source*, %struct.aer_err_source** %5, align 8
  %25 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %26 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %25, i32 0, i32 3
  %27 = load %struct.aer_err_source*, %struct.aer_err_source** %26, align 8
  %28 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %29 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %27, i64 %30
  %32 = bitcast %struct.aer_err_source* %24 to i8*
  %33 = bitcast %struct.aer_err_source* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %35 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %39 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AER_ERROR_SOURCES_MAX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %45 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %23
  %47 = load %struct.aer_rpc*, %struct.aer_rpc** %4, align 8
  %48 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %47, i32 0, i32 2
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
