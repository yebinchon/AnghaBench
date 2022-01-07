; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_get_frame_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_process.c_get_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_frame_info = type { i32, i32, i32, %union.mips_instruction* }
%union.mips_instruction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_frame_info*)* @get_frame_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frame_info(%struct.mips_frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mips_frame_info*, align 8
  %4 = alloca %union.mips_instruction*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mips_frame_info* %0, %struct.mips_frame_info** %3, align 8
  %7 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %8 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %7, i32 0, i32 3
  %9 = load %union.mips_instruction*, %union.mips_instruction** %8, align 8
  store %union.mips_instruction* %9, %union.mips_instruction** %4, align 8
  %10 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %11 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %17 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %19 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %21 = icmp ne %union.mips_instruction* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %100

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 128, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @min(i32 128, i32 %28)
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %77, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %36 = call i64 @is_jal_jalr_jr_ins(%union.mips_instruction* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %82

39:                                               ; preds = %34
  %40 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %41 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %46 = call i64 @is_sp_move_ins(%union.mips_instruction* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %50 = bitcast %union.mips_instruction* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %55 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %48, %44
  br label %77

57:                                               ; preds = %39
  %58 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %59 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %64 = call i64 @is_ra_save_ins(%union.mips_instruction* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %68 = bitcast %union.mips_instruction* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %75 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %82

76:                                               ; preds = %62, %57
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %81 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %80, i32 1
  store %union.mips_instruction* %81, %union.mips_instruction** %4, align 8
  br label %30

82:                                               ; preds = %66, %38, %30
  %83 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %84 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %89 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %101

93:                                               ; preds = %87, %82
  %94 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %95 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %2, align 4
  br label %101

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %22
  store i32 -1, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %98, %92
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @is_jal_jalr_jr_ins(%union.mips_instruction*) #1

declare dso_local i64 @is_sp_move_ins(%union.mips_instruction*) #1

declare dso_local i64 @is_ra_save_ins(%union.mips_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
