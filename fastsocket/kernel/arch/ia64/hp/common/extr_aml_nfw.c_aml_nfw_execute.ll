; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/common/extr_aml_nfw.c_aml_nfw_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/common/extr_aml_nfw.c_aml_nfw_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_nfw_context = type { i32*, i32, i32, i32 }
%struct.ia64_pdesc = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ia64_nfw_context*)* @aml_nfw_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml_nfw_execute(%struct.ia64_nfw_context* %0) #0 {
  %2 = alloca %struct.ia64_nfw_context*, align 8
  %3 = alloca %struct.ia64_pdesc, align 8
  %4 = alloca i64, align 8
  store %struct.ia64_nfw_context* %0, %struct.ia64_nfw_context** %2, align 8
  %5 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %6 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @virt_map(i32 %7)
  %9 = getelementptr inbounds %struct.ia64_pdesc, %struct.ia64_pdesc* %3, i32 0, i32 1
  store i8* %8, i8** %9, align 8
  %10 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %11 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @virt_map(i32 %12)
  %14 = getelementptr inbounds %struct.ia64_pdesc, %struct.ia64_pdesc* %3, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = ptrtoint %struct.ia64_pdesc* %3 to i64
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %18 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %21 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %26 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %31 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %36 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %41 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %46 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %51 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ia64_nfw_context*, %struct.ia64_nfw_context** %2, align 8
  %56 = getelementptr inbounds %struct.ia64_nfw_context, %struct.ia64_nfw_context* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IA64_FW_CALL(i64 %16, i32 %19, i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %59)
  ret void
}

declare dso_local i8* @virt_map(i32) #1

declare dso_local i32 @IA64_FW_CALL(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
