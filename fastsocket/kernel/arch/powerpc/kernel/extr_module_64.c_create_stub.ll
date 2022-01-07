; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_create_stub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_create_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc64_stub_entry = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ppc64_opd_entry = type { i32, i32 }
%struct.module = type { i32 }

@ppc64_stub = common dso_local global %struct.ppc64_stub_entry zeroinitializer, align 8
@.str = private unnamed_addr constant [44 x i8] c"%s: Address %p of stub out of range of %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Stub %p get data from reladdr %li\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ppc64_stub_entry*, %struct.ppc64_opd_entry*, %struct.module*)* @create_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_stub(i32* %0, %struct.ppc64_stub_entry* %1, %struct.ppc64_opd_entry* %2, %struct.module* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ppc64_stub_entry*, align 8
  %8 = alloca %struct.ppc64_opd_entry*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ppc64_stub_entry* %1, %struct.ppc64_stub_entry** %7, align 8
  store %struct.ppc64_opd_entry* %2, %struct.ppc64_opd_entry** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  %13 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %7, align 8
  %14 = bitcast %struct.ppc64_stub_entry* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.ppc64_stub_entry* @ppc64_stub to i8*), i64 16, i1 false)
  %15 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %7, align 8
  %16 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32* %18, i32** %10, align 8
  %19 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 6
  store i32* %22, i32** %11, align 8
  %23 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %7, align 8
  %24 = ptrtoint %struct.ppc64_stub_entry* %23 to i64
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.module*, %struct.module** %9, align 8
  %27 = call i64 @my_r2(i32* %25, %struct.module* %26)
  %28 = sub i64 %24, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp sgt i64 %29, 2147483647
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %32, -2147483648
  br i1 %33, label %34, label %41

34:                                               ; preds = %31, %4
  %35 = load %struct.module*, %struct.module** %9, align 8
  %36 = getelementptr inbounds %struct.module, %struct.module* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %12, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %39, i8* bitcast (i64 (i32*, %struct.module*)* @my_r2 to i8*))
  store i32 0, i32* %5, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %7, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @DEBUGP(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.ppc64_stub_entry* %42, i64 %43)
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @PPC_HA(i64 %45)
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @PPC_LO(i64 %48)
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ppc64_opd_entry*, %struct.ppc64_opd_entry** %8, align 8
  %52 = getelementptr inbounds %struct.ppc64_opd_entry, %struct.ppc64_opd_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %7, align 8
  %55 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ppc64_opd_entry*, %struct.ppc64_opd_entry** %8, align 8
  %58 = getelementptr inbounds %struct.ppc64_opd_entry, %struct.ppc64_opd_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %7, align 8
  %61 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %41, %34
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @my_r2(i32*, %struct.module*) #2

declare dso_local i32 @printk(i8*, i32, i8*, i8*) #2

declare dso_local i32 @DEBUGP(i8*, %struct.ppc64_stub_entry*, i64) #2

declare dso_local i32 @PPC_HA(i64) #2

declare dso_local i32 @PPC_LO(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
