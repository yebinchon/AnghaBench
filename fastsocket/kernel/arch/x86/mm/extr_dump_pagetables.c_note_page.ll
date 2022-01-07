; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_dump_pagetables.c_note_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_dump_pagetables.c_note_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.seq_file = type { i32 }
%struct.pg_state = type { i8*, i32, i64, i32, %struct.TYPE_2__* }

@note_page.units = internal constant [7 x i8] c"KMGTPE\00", align 1
@PTE_FLAGS_MASK = common dso_local global i32 0, align 4
@address_markers = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"---[ %s ]---\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"0x%0*lx-0x%0*lx   \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%9lu%c \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i8*, i32)* @note_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_page(%struct.seq_file* %0, %struct.pg_state* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pg_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pg_state* %1, %struct.pg_state** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @pgprot_val(i8* %14)
  %16 = load i32, i32* @PTE_FLAGS_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %19 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @pgprot_val(i8* %20)
  %22 = load i32, i32* @PTE_FLAGS_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %25 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %31 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %34 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %36 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %37 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %36, i32 0, i32 4
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %39 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %40 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %155

45:                                               ; preds = %4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %52 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %49
  %56 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %57 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %60 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %58, %64
  br i1 %65, label %66, label %154

66:                                               ; preds = %55, %49, %45
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @note_page.units, i64 0, i64 0), i8** %11, align 8
  store i32 16, i32* %13, align 4
  %67 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %70 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %74 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71, i32 %72, i64 %75)
  %77 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %78 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %81 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %79, %83
  %85 = ashr i64 %84, 10
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %98, %66
  %87 = load i64, i64* %12, align 8
  %88 = and i64 %87, 1023
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %90, %86
  %97 = phi i1 [ false, %86 ], [ %95, %90 ]
  br i1 %97, label %98, label %103

98:                                               ; preds = %96
  %99 = load i64, i64* %12, align 8
  %100 = lshr i64 %99, 10
  store i64 %100, i64* %12, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %11, align 8
  br label %86

103:                                              ; preds = %96
  %104 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %105 = load i64, i64* %12, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i8*, i8** %11, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %112 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %113 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %116 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @printk_prot(%struct.seq_file* %111, i8* %114, i32 %117)
  %119 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %120 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %123 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %122, i32 0, i32 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %121, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %103
  %130 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %131 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 1
  store %struct.TYPE_2__* %133, %struct.TYPE_2__** %131, align 8
  %134 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %135 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %136 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %135, i32 0, i32 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %129, %103
  %142 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %143 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %147 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %150 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %153 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %141, %55
  br label %155

155:                                              ; preds = %154, %28
  ret void
}

declare dso_local i32 @pgprot_val(i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @printk_prot(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
