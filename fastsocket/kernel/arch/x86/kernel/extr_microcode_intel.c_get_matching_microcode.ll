; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_intel.c_get_matching_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_intel.c_get_matching_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_signature = type { i32 }
%struct.microcode_header_intel = type { i32, i32 }
%struct.extended_sigtable = type { i32 }
%struct.extended_signature = type { i32, i32 }

@MC_HEADER_SIZE = common dso_local global i64 0, align 8
@EXT_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_signature*, i8*, i32)* @get_matching_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_matching_microcode(%struct.cpu_signature* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_signature*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.microcode_header_intel*, align 8
  %9 = alloca %struct.extended_sigtable*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extended_signature*, align 8
  store %struct.cpu_signature* %0, %struct.cpu_signature** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.microcode_header_intel*
  store %struct.microcode_header_intel* %15, %struct.microcode_header_intel** %8, align 8
  %16 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %17 = call i64 @get_totalsize(%struct.microcode_header_intel* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @update_match_revision(%struct.microcode_header_intel* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.cpu_signature*, %struct.cpu_signature** %5, align 8
  %25 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %26 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %29 = getelementptr inbounds %struct.microcode_header_intel, %struct.microcode_header_intel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @update_match_cpu(%struct.cpu_signature* %24, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %81

34:                                               ; preds = %23
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %37 = call i64 @get_datasize(%struct.microcode_header_intel* %36)
  %38 = load i64, i64* @MC_HEADER_SIZE, align 8
  %39 = add i64 %37, %38
  %40 = icmp ule i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %81

42:                                               ; preds = %34
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.microcode_header_intel*, %struct.microcode_header_intel** %8, align 8
  %45 = call i64 @get_datasize(%struct.microcode_header_intel* %44)
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load i64, i64* @MC_HEADER_SIZE, align 8
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = bitcast i8* %48 to %struct.extended_sigtable*
  store %struct.extended_sigtable* %49, %struct.extended_sigtable** %9, align 8
  %50 = load %struct.extended_sigtable*, %struct.extended_sigtable** %9, align 8
  %51 = getelementptr inbounds %struct.extended_sigtable, %struct.extended_sigtable* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.extended_sigtable*, %struct.extended_sigtable** %9, align 8
  %54 = bitcast %struct.extended_sigtable* %53 to i8*
  %55 = load i32, i32* @EXT_HEADER_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = bitcast i8* %57 to %struct.extended_signature*
  store %struct.extended_signature* %58, %struct.extended_signature** %13, align 8
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %77, %42
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.cpu_signature*, %struct.cpu_signature** %5, align 8
  %65 = load %struct.extended_signature*, %struct.extended_signature** %13, align 8
  %66 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.extended_signature*, %struct.extended_signature** %13, align 8
  %69 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @update_match_cpu(%struct.cpu_signature* %64, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %81

74:                                               ; preds = %63
  %75 = load %struct.extended_signature*, %struct.extended_signature** %13, align 8
  %76 = getelementptr inbounds %struct.extended_signature, %struct.extended_signature* %75, i32 1
  store %struct.extended_signature* %76, %struct.extended_signature** %13, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %59

80:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %73, %41, %33, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @get_totalsize(%struct.microcode_header_intel*) #1

declare dso_local i32 @update_match_revision(%struct.microcode_header_intel*, i32) #1

declare dso_local i64 @update_match_cpu(%struct.cpu_signature*, i32, i32) #1

declare dso_local i64 @get_datasize(%struct.microcode_header_intel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
