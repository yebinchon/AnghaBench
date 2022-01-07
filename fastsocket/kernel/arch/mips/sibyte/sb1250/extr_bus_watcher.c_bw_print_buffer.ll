; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/sb1250/extr_bus_watcher.c_bw_print_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/sb1250/extr_bus_watcher.c_bw_print_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_stats_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"SiByte Bus Watcher statistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"-----------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"L2-d-cor %8ld\0AL2-d-bad %8ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"L2-t-cor %8ld\0AL2-t-bad %8ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MC-d-cor %8ld\0AMC-d-bad %8ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"IO-err   %8ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\0ALast recorded signature:\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Request %02x from %d, answered by %d with Dcode %d\0A\00", align 1
@M_SCD_BERR_MULTERRS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"Multiple errors observed since last check.\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"(no change since last printing)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.bw_stats_struct*)* @bw_print_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bw_print_buffer(i8* %0, %struct.bw_stats_struct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bw_stats_struct*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.bw_stats_struct* %1, %struct.bw_stats_struct** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %20 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %23 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %33 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %36 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %46 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %49 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %59 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %76 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @G_SCD_BERR_TID(i32 %77)
  %79 = and i32 %78, 63
  %80 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %81 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @G_SCD_BERR_TID(i32 %82)
  %84 = ashr i32 %83, 6
  %85 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %86 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @G_SCD_BERR_RID(i32 %87)
  %89 = trunc i64 %88 to i32
  %90 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %91 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @G_SCD_BERR_DCODE(i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %79, i32 %84, i32 %89, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %99 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @M_SCD_BERR_MULTERRS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %2
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %104, %2
  %113 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %114 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %5, align 4
  br label %128

125:                                              ; preds = %112
  %126 = load %struct.bw_stats_struct*, %struct.bw_stats_struct** %4, align 8
  %127 = getelementptr inbounds %struct.bw_stats_struct, %struct.bw_stats_struct* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %117
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @G_SCD_BERR_TID(i32) #1

declare dso_local i64 @G_SCD_BERR_RID(i32) #1

declare dso_local i64 @G_SCD_BERR_DCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
