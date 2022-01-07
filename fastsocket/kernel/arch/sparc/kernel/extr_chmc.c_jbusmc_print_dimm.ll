; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_chmc.c_jbusmc_print_dimm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_chmc.c_jbusmc_print_dimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jbusmc_obp_mem_layout = type { i8** }
%struct.jbusmc_dimm_group = type { i32, %struct.jbusmc* }
%struct.jbusmc = type { %struct.jbusmc_obp_mem_layout }

@SYNDROME_MIN = common dso_local global i32 0, align 4
@SYNDROME_MAX = common dso_local global i32 0, align 4
@JB_NUM_DIMMS_PER_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s, pin %3d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i32)* @jbusmc_print_dimm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbusmc_print_dimm(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.jbusmc_obp_mem_layout*, align 8
  %11 = alloca %struct.jbusmc_dimm_group*, align 8
  %12 = alloca %struct.jbusmc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.jbusmc_dimm_group* @jbusmc_find_dimm_group(i64 %17)
  store %struct.jbusmc_dimm_group* %18, %struct.jbusmc_dimm_group** %11, align 8
  %19 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %11, align 8
  %20 = icmp eq %struct.jbusmc_dimm_group* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SYNDROME_MIN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SYNDROME_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25, %21, %4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 63, i8* %31, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 63, i8* %33, align 1
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 63, i8* %35, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 0, i8* %37, align 1
  store i32 0, i32* %5, align 4
  br label %89

38:                                               ; preds = %25
  %39 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %11, align 8
  %40 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %39, i32 0, i32 1
  %41 = load %struct.jbusmc*, %struct.jbusmc** %40, align 8
  store %struct.jbusmc* %41, %struct.jbusmc** %12, align 8
  %42 = load %struct.jbusmc*, %struct.jbusmc** %12, align 8
  %43 = getelementptr inbounds %struct.jbusmc, %struct.jbusmc* %42, i32 0, i32 0
  store %struct.jbusmc_obp_mem_layout* %43, %struct.jbusmc_obp_mem_layout** %10, align 8
  %44 = load %struct.jbusmc_dimm_group*, %struct.jbusmc_dimm_group** %11, align 8
  %45 = getelementptr inbounds %struct.jbusmc_dimm_group, %struct.jbusmc_dimm_group* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @JB_NUM_DIMMS_PER_GROUP, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SYNDROME_MIN, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.jbusmc_obp_mem_layout*, %struct.jbusmc_obp_mem_layout** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @get_pin_and_dimm_str(i32 %53, i64 %54, i32* %15, i8** %14, %struct.jbusmc_obp_mem_layout* %55, i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60)
  br label %88

62:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %84, %62
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @JB_NUM_DIMMS_PER_GROUP, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.jbusmc_obp_mem_layout*, %struct.jbusmc_obp_mem_layout** %10, align 8
  %70 = getelementptr inbounds %struct.jbusmc_obp_mem_layout, %struct.jbusmc_obp_mem_layout* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %71, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = load i8*, i8** %8, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %63

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87, %52
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.jbusmc_dimm_group* @jbusmc_find_dimm_group(i64) #1

declare dso_local i32 @get_pin_and_dimm_str(i32, i64, i32*, i8**, %struct.jbusmc_obp_mem_layout*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
