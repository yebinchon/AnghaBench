; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_stub_for_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_64.c_stub_for_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.module = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ppc64_stub_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ppc64_opd_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, %struct.module*)* @stub_for_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stub_for_addr(%struct.TYPE_8__* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.ppc64_stub_entry*, align 8
  %9 = alloca %struct.ppc64_opd_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.ppc64_opd_entry*
  store %struct.ppc64_opd_entry* %14, %struct.ppc64_opd_entry** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.module*, %struct.module** %7, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load %struct.module*, %struct.module** %7, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.ppc64_stub_entry*
  store %struct.ppc64_stub_entry* %35, %struct.ppc64_stub_entry** %8, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %69, %3
  %37 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp uge i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ppc64_opd_entry*, %struct.ppc64_opd_entry** %9, align 8
  %59 = getelementptr inbounds %struct.ppc64_opd_entry, %struct.ppc64_opd_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %45
  %63 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %63, i64 %65
  %67 = ptrtoint %struct.ppc64_stub_entry* %66 to i64
  store i64 %67, i64* %4, align 8
  br label %89

68:                                               ; preds = %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %36

72:                                               ; preds = %36
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %74, i64 %76
  %78 = load %struct.ppc64_opd_entry*, %struct.ppc64_opd_entry** %9, align 8
  %79 = load %struct.module*, %struct.module** %7, align 8
  %80 = call i32 @create_stub(%struct.TYPE_8__* %73, %struct.ppc64_stub_entry* %77, %struct.ppc64_opd_entry* %78, %struct.module* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store i64 0, i64* %4, align 8
  br label %89

83:                                               ; preds = %72
  %84 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %84, i64 %86
  %88 = ptrtoint %struct.ppc64_stub_entry* %87 to i64
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %83, %82, %62
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @create_stub(%struct.TYPE_8__*, %struct.ppc64_stub_entry*, %struct.ppc64_opd_entry*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
