; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_do_plt_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_do_plt_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.module = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ppc_plt_entry = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"Doing plt for call to 0x%x at 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Initialized plt for 0x%x at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_5__*, %struct.module*)* @do_plt_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_plt_call(i8* %0, i32 %1, %struct.TYPE_5__* %2, %struct.module* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.ppc_plt_entry*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = call i32 (i8*, i32, ...) @DEBUGP(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.module*, %struct.module** %9, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp uge i8* %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.module*, %struct.module** %9, align 8
  %23 = getelementptr inbounds %struct.module, %struct.module* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.module*, %struct.module** %9, align 8
  %26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %24, i64 %28
  %30 = icmp ult i8* %21, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %20
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = load %struct.module*, %struct.module** %9, align 8
  %34 = getelementptr inbounds %struct.module, %struct.module* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to %struct.ppc_plt_entry*
  store %struct.ppc_plt_entry* %41, %struct.ppc_plt_entry** %10, align 8
  br label %53

42:                                               ; preds = %20, %4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = load %struct.module*, %struct.module** %9, align 8
  %45 = getelementptr inbounds %struct.module, %struct.module* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = bitcast i8* %51 to %struct.ppc_plt_entry*
  store %struct.ppc_plt_entry* %52, %struct.ppc_plt_entry** %10, align 8
  br label %53

53:                                               ; preds = %42, %31
  br label %54

54:                                               ; preds = %69, %53
  %55 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %56 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @entry_matches(%struct.ppc_plt_entry* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %68 = ptrtoint %struct.ppc_plt_entry* %67 to i32
  store i32 %68, i32* %5, align 4
  br label %101

69:                                               ; preds = %61
  %70 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %71 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %70, i32 1
  store %struct.ppc_plt_entry* %71, %struct.ppc_plt_entry** %10, align 8
  br label %54

72:                                               ; preds = %54
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 32768
  %75 = ashr i32 %74, 16
  %76 = add nsw i32 1029701632, %75
  %77 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %78 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 65535
  %83 = add nsw i32 963313664, %82
  %84 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %85 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %89 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 2104034214, i32* %91, align 4
  %92 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %93 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  store i32 1317012512, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %98 = call i32 (i8*, i32, ...) @DEBUGP(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %96, %struct.ppc_plt_entry* %97)
  %99 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %10, align 8
  %100 = ptrtoint %struct.ppc_plt_entry* %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %72, %66
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @DEBUGP(i8*, i32, ...) #1

declare dso_local i64 @entry_matches(%struct.ppc_plt_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
