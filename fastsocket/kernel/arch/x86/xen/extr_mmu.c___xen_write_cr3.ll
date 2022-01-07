; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c___xen_write_cr3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c___xen_write_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmuext_op = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.multicall_space = type { i32, %struct.mmuext_op* }

@MMUEXT_NEW_BASEPTR = common dso_local global i32 0, align 4
@MMUEXT_NEW_USER_BASEPTR = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@xen_cr3 = common dso_local global i32 0, align 4
@set_current_cr3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @__xen_write_cr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xen_write_cr3(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmuext_op*, align 8
  %6 = alloca %struct.multicall_space, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.multicall_space, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @PFN_DOWN(i64 %12)
  %14 = call i64 @pfn_to_mfn(i32 %13)
  store i64 %14, i64* %7, align 8
  br label %16

15:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = call { i32, %struct.mmuext_op* } @__xen_mc_entry(i32 16)
  %27 = bitcast %struct.multicall_space* %8 to { i32, %struct.mmuext_op* }*
  %28 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %27, i32 0, i32 0
  %29 = extractvalue { i32, %struct.mmuext_op* } %26, 0
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %27, i32 0, i32 1
  %31 = extractvalue { i32, %struct.mmuext_op* } %26, 1
  store %struct.mmuext_op* %31, %struct.mmuext_op** %30, align 8
  %32 = bitcast %struct.multicall_space* %6 to i8*
  %33 = bitcast %struct.multicall_space* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %6, i32 0, i32 1
  %35 = load %struct.mmuext_op*, %struct.mmuext_op** %34, align 8
  store %struct.mmuext_op* %35, %struct.mmuext_op** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @MMUEXT_NEW_BASEPTR, align 4
  br label %42

40:                                               ; preds = %22
  %41 = load i32, i32* @MMUEXT_NEW_USER_BASEPTR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %45 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %48 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %53 = load i32, i32* @DOMID_SELF, align 4
  %54 = call i32 @MULTI_mmuext_op(i32 %51, %struct.mmuext_op* %52, i32 1, i32* null, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %42
  %58 = load i32, i32* @xen_cr3, align 4
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @percpu_write(i32 %58, i64 %59)
  %61 = load i32, i32* @set_current_cr3, align 4
  %62 = load i64, i64* %4, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @xen_mc_callback(i32 %61, i8* %63)
  br label %65

65:                                               ; preds = %57, %42
  ret void
}

declare dso_local i64 @pfn_to_mfn(i32) #1

declare dso_local i32 @PFN_DOWN(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local { i32, %struct.mmuext_op* } @__xen_mc_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MULTI_mmuext_op(i32, %struct.mmuext_op*, i32, i32*, i32) #1

declare dso_local i32 @percpu_write(i32, i64) #1

declare dso_local i32 @xen_mc_callback(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
