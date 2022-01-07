; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_proc.c_pnx8550_registers_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/nxp/pnx8550/common/extr_proc.c_pnx8550_registers_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"config1:   %#10.8x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"config2:   %#10.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"config3:   %#10.8x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"configPR:  %#10.8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"status:    %#10.8x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cause:     %#10.8x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"count:     %#10.8x\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"count_2:   %#10.8x\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"count_3:   %#10.8x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"compare:   %#10.8x\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"compare_2: %#10.8x\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"compare_3: %#10.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64, i32, i32*, i8*)* @pnx8550_registers_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx8550_registers_read(i8* %0, i8** %1, i64 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %137

16:                                               ; preds = %6
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %13, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i32 (...) @read_c0_config1()
  %22 = call i64 @sprintf(i8* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = call i32 (...) @read_c0_config2()
  %32 = call i64 @sprintf(i8* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = call i32 (...) @read_c0_config3()
  %42 = call i64 @sprintf(i8* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i32 (...) @read_c0_config7()
  %52 = call i64 @sprintf(i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = call i32 (...) @read_c0_status()
  %62 = call i64 @sprintf(i8* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i32 (...) @read_c0_cause()
  %72 = call i64 @sprintf(i8* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 (...) @read_c0_count()
  %82 = call i64 @sprintf(i8* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 (...) @read_c0_count2()
  %92 = call i64 @sprintf(i8* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %13, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = call i32 (...) @read_c0_count3()
  %102 = call i64 @sprintf(i8* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %13, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = call i32 (...) @read_c0_compare()
  %112 = call i64 @sprintf(i8* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = call i32 (...) @read_c0_compare2()
  %122 = call i64 @sprintf(i8* %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %13, align 4
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = call i32 (...) @read_c0_compare3()
  %132 = call i64 @sprintf(i8* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %16, %6
  %138 = load i32, i32* %13, align 4
  ret i32 %138
}

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @read_c0_config1(...) #1

declare dso_local i32 @read_c0_config2(...) #1

declare dso_local i32 @read_c0_config3(...) #1

declare dso_local i32 @read_c0_config7(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @read_c0_count2(...) #1

declare dso_local i32 @read_c0_count3(...) #1

declare dso_local i32 @read_c0_compare(...) #1

declare dso_local i32 @read_c0_compare2(...) #1

declare dso_local i32 @read_c0_compare3(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
